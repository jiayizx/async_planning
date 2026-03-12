"""
Run LLM-as-Formalizer pipeline on asynchow.

Pipeline per example:
  1. LLM translates NL planning problem directly into PDDL 2.1
  2. Solve with OPTIC via solver.planning.domains API
  3. Compare solver answer with gold answer

Retry strategy — two history modes (--history-mode):
  cumulative (default):
    Each failed example accumulates its full chat history. On retry the LLM
    sees ALL prior attempts and won't repeat the same mistakes.
      system, user, asst₁, err₁, asst₂, err₂, asst₃

  single-turn:
    Only the immediately preceding assistant response + error are kept.
    The LLM sees exactly one prior attempt, keeping context short.
      system, user, asst_prev, err_prev  (rebuilt every retry)

Error taxonomy:
  - syntax_error : PDDL parse failure OR solver reported a syntax / validation error
  - semantic_error: solver ran & returned a plan, but the answer is wrong
"""
from __future__ import annotations

import argparse
import json
import os
from pathlib import Path

from datasets import load_dataset
from tqdm import tqdm

from dotenv import load_dotenv
load_dotenv()

from src.evaluation.accuracy_metrics import (
    exact_match,
    parse_gold_seconds,
)
from src.evaluation.plan_validity import check_plan_validity
from src.experiments.utils import build_llm_client, clean_question
from src.gen_data.utils import parse_node_durations
from src.llms.base import BaseLLM
from src.llms.prompts import (
    SYNTAX_RETRY_TEMPLATE, SEMANTIC_RETRY_TEMPLATE,
    GRAPH_SYNTAX_RETRY_TEMPLATE, GRAPH_SEMANTIC_RETRY_TEMPLATE,
)
from src.method.nl_to_pddl import (
    build_pddl_messages,
    parse_pddl_response,
    PDDLResponse,
    _truncate_solver_error,
)
from src.method.nl_to_graph import (
    build_graph_messages,
    parse_graph_response,
    graph_to_pddl,
    GraphResponse,
)
from src.method.pddl_solver import solve, batch_solve, SolverResult


# Hard-coded transient-server retry (not user-facing; just protects against
# flaky solver.planning.domains containers).
_TRANSIENT_SOLVER_RETRIES = 2
SOLVER_TIMEOUT = 10  # 10 seconds

# ── Core logic ──────────────────────────────────────────────────────────


def run_task(llm_client: BaseLLM, eval_dataset, args: argparse.Namespace):
    # ── 1. Collect questions & gold labels ────────────────────────────
    questions: list[str] = []
    gold_data: list[dict] = []

    for idx, example in enumerate(tqdm(eval_dataset, desc="Collecting questions")):
        if "nl_rewrite_failed" in example and example["nl_rewrite_failed"]:
            continue
            
        question = clean_question(example["question"])
        gold_seconds = parse_gold_seconds(example["answer"])

        questions.append(question)
        gold_data.append({
            "idx": idx,
            "question": example["question"],
            "gold_answer": example["answer"],
            "gold_seconds": gold_seconds,
            # Only present for gen-data; None for asynchow
            "graph": example.get("graph"),
        })
        if idx + 1 >= args.max_examples:
            break

    n = len(questions)

    # Per-example mutable state (updated in-place across retries)
    domains: list[str | None] = [None] * n
    problems: list[str | None] = [None] * n
    step_actions_list: list[list[str] | None] = [None] * n
    solver_results: list[SolverResult | None] = [None] * n
    raw_responses: list[str | None] = [None] * n
    errors: list[str] = ["not started"] * n
    # "syntax_error" | "semantic_error" | "" (success) | "not_started"
    error_types: list[str] = ["not_started"] * n

    # Multi-turn conversation histories — each list grows across retries:
    #   [system, user₀, asst₁, user_err₁, asst₂, user_err₂, …]
    # On retry we just append; the LLM sees all prior attempts.
    if args.two_step:
        histories: list[list[dict]] = [build_graph_messages(q) for q in questions]
    else:
        histories: list[list[dict]] = [
            build_pddl_messages(q, num_shots=args.num_shots)
            for q in questions
        ]
    # Number of messages in the initial (pre-retry) history — used by
    # single-turn mode to trim back to base + [last_asst, last_error].
    _base_len: int = len(histories[0]) if histories else 0

    def _attempt(indices: list[int], desc: str) -> None:
        """Run one LLM batch for *indices* using each example's current history.

        Error taxonomy:
          syntax_error  — PDDL JSON parse failed, or OPTIC reported a planner error.
          semantic_error — OPTIC produced a valid plan but the makespan is wrong.

        After the LLM responds the assistant message is appended to histories[i].
        The appropriate retry feedback message is then appended so the next retry
        sees the full conversation with the specific error type and guidance.

        History modes (args.history_mode):
          cumulative  — full history grows; LLM sees every prior attempt.
          single-turn — trim to [base_messages, last_asst, last_error] before
                        sending, so the LLM only sees one prior round.
        """
        if args.history_mode == "single-turn":
            for i in indices:
                h = histories[i]
                # Only trim once at least one retry round has been appended
                # (base + asst + error = _base_len + 2 messages minimum).
                if len(h) > _base_len + 2:
                    histories[i] = h[:_base_len] + h[-2:]

        msgs = [histories[i] for i in indices]

        if args.two_step:
            responses = llm_client.batch_chat(msgs, schema=GraphResponse, desc=desc)
            pairs = []
            for r in responses:
                steps = parse_graph_response(r)
                if steps is None:
                    pairs.append(None)
                else:
                    domain, problem = graph_to_pddl(steps)
                    # Sort by step_number so step_actions[i] = action for Step i+1
                    ordered = sorted(steps, key=lambda s: s.step_number)
                    pairs.append((domain, problem, [s.name for s in ordered]))
        else:
            responses = llm_client.batch_chat(msgs, schema=PDDLResponse, desc=desc)
            pairs = [parse_pddl_response(r) for r in responses]

        for i, resp in zip(indices, responses):
            raw_responses[i] = resp
            if resp:
                histories[i].append({"role": "assistant", "content": resp})

        solvable = []
        for i, pair in zip(indices, pairs):
            if pair is None:
                errors[i] = "Graph/PDDL parse failed" if args.two_step else "PDDL parse failed"
                error_types[i] = "syntax_error"
                if args.two_step:
                    histories[i].append({
                        "role": "user",
                        "content": GRAPH_SYNTAX_RETRY_TEMPLATE.format(
                            error="Your response could not be parsed as a valid dependency graph JSON."
                        ),
                    })
                else:
                    histories[i].append({
                        "role": "user",
                        "content": SYNTAX_RETRY_TEMPLATE.format(
                            error="Your response could not be parsed as valid PDDL JSON. "
                                  "Please output only the JSON object matching the schema."
                        ),
                    })
            else:
                solvable.append((i, pair))

        if solvable:
            solve_outputs = batch_solve(
                [(d, p) for _, (d, p, _sa) in solvable],
                num_workers=args.batch,
                max_retries=_TRANSIENT_SOLVER_RETRIES,
                # timeout=SOLVER_TIMEOUT,
                desc="Solving PDDL",
            )
            for (i, (d, p, sa)), sr in zip(solvable, solve_outputs):
                domains[i] = d
                problems[i] = p
                step_actions_list[i] = sa or None
                solver_results[i] = sr

                if sr.error:
                    # Planner rejected the PDDL — syntax/validation issue
                    errors[i] = sr.error
                    error_types[i] = "syntax_error"
                    if args.two_step:
                        # In two-step mode, Python generates PDDL — solver errors are
                        # rare (e.g. reserved keyword in name). Ask LLM to fix its graph.
                        histories[i].append({
                            "role": "user",
                            "content": GRAPH_SYNTAX_RETRY_TEMPLATE.format(
                                error=_truncate_solver_error(sr.error)
                            ),
                        })
                    else:
                        histories[i].append({
                            "role": "user",
                            "content": SYNTAX_RETRY_TEMPLATE.format(
                                error=_truncate_solver_error(sr.error)
                            ),
                        })
                else:
                    # Planner succeeded — check if the makespan is correct
                    pred_seconds = int(round(sr.makespan_seconds))
                    gold_seconds = gold_data[i]["gold_seconds"]
                    if gold_seconds is not None and not exact_match(pred_seconds, gold_seconds):
                        errors[i] = f"wrong makespan: got {pred_seconds}s"
                        error_types[i] = "semantic_error"
                        retry_template = GRAPH_SEMANTIC_RETRY_TEMPLATE if args.two_step else SEMANTIC_RETRY_TEMPLATE
                        histories[i].append({
                            "role": "user",
                            "content": retry_template.format(pred_seconds=pred_seconds),
                        })
                    else:
                        errors[i] = ""
                        error_types[i] = ""

    # ── 2. Initial pass ───────────────────────────────────────────────
    _attempt(list(range(n)), desc="LLM translation (NL→PDDL)")

    # ── 3. LLM retry loop ─────────────────────────────────────────────
    # histories[i] already has the typed error feedback appended by _attempt,
    # so we simply pass failed indices — no message rebuilding needed.
    for retry in range(args.llm_retries):
        n_syntax   = sum(1 for t in error_types if t == "syntax_error")
        n_semantic = sum(1 for t in error_types if t == "semantic_error")
        failed = [i for i in range(n) if errors[i]]
        if not failed:
            break
        print(
            f"\nRetry {retry + 1}/{args.llm_retries}: "
            f"{len(failed)} failed ({n_syntax} syntax, {n_semantic} semantic)"
        )
        _attempt(failed, desc=f"LLM retry {retry + 1}")

    # ── 4. Assemble records & save ────────────────────────────────────
    save_path = Path(args.save_path)
    pddl_dir = save_path / "pddl"
    pddl_dir.mkdir(parents=True, exist_ok=True)
    jsonl_path = save_path / "full_results.jsonl"

    records: list[dict] = []

    with jsonl_path.open("w", encoding="utf-8") as jsonl_f:
        for i, gold in enumerate(gold_data):
            err = errors[i]
            etype = error_types[i]
            sr = solver_results[i]

            if etype == "syntax_error":
                rec = _failure_record(
                    gold, raw_responses[i], error=err, error_type="syntax_error",
                    domain=domains[i], problem=problems[i],
                )
                if sr is not None:
                    rec["raw_solver_output"] = sr.raw_output

            elif etype == "semantic_error":
                # Solver produced a plan but the makespan is wrong
                pred_seconds = int(round(sr.makespan_seconds))
                rec = _failure_record(
                    gold, raw_responses[i], error=err, error_type="semantic_error",
                    domain=domains[i], problem=problems[i],
                )
                rec["pred_seconds"] = pred_seconds
                rec["raw_solver_output"] = sr.raw_output
                rec["plan"] = [(start, action, dur) for start, action, dur in sr.plan]

            else:
                # Success
                pred_seconds = int(round(sr.makespan_seconds))
                plan_valid: bool | None = None
                plan_validity_error: str | None = None
                if gold["graph"] and sr.plan:
                    g = gold["graph"]
                    if "durations" not in g:
                        g["durations"] = parse_node_durations(gold["question"], g)
                    if g.get("durations"):
                        plan_valid, plan_validity_error = check_plan_validity(
                            sr.plan, g,
                            step_actions=step_actions_list[i],
                        )
                rec = {
                    "question": gold["question"],
                    "gold_answer": gold["gold_answer"],
                    "gold_seconds": gold["gold_seconds"],
                    "pred_seconds": pred_seconds,
                    "correct": exact_match(pred_seconds, gold["gold_seconds"]),
                    "error_type": "",
                    "plan_valid": plan_valid,
                    "plan_validity_error": plan_validity_error,
                    "plan": [(start, action, dur) for start, action, dur in sr.plan],
                    "raw_solver_output": sr.raw_output,
                    "domain_pddl": domains[i],
                    "problem_pddl": problems[i],
                    "llm_response": raw_responses[i],
                }

            rec["chat_history"] = histories[i]
            records.append(rec)
            _save_example(pddl_dir, i, rec)
            jsonl_f.write(json.dumps(rec, indent=2, ensure_ascii=False) + "\n")
            jsonl_f.flush()

    # ── 5. Save summary ───────────────────────────────────────────────
    _save_summary(records, args)
    return records


def _failure_record(
    gold: dict,
    raw_resp: str | None,
    error: str,
    error_type: str = "syntax_error",
    domain: str | None = None,
    problem: str | None = None,
) -> dict:
    return {
        "question": gold["question"],
        "gold_answer": gold["gold_answer"],
        "gold_seconds": gold["gold_seconds"],
        "pred_seconds": None,
        "correct": False,
        "error_type": error_type,
        "error": error,
        "domain_pddl": domain,
        "problem_pddl": problem,
        "llm_response": raw_resp,
    }


def _save_example(pddl_dir: Path, idx: int, rec: dict) -> None:
    """Save a single example's PDDL files, plan, and chat history."""
    example_dir = pddl_dir / f"example_{idx:04d}"
    example_dir.mkdir(exist_ok=True)
    if rec.get("domain_pddl"):
        (example_dir / "domain.pddl").write_text(rec["domain_pddl"])
    if rec.get("problem_pddl"):
        (example_dir / "problem.pddl").write_text(rec["problem_pddl"])
    if rec.get("plan"):
        with (example_dir / "plan.txt").open("w") as f:
            for start, action, dur in rec["plan"]:
                f.write(f"{start:.3f}: ({action}) [{dur:.3f}]\n")
    if rec.get("chat_history"):
        with (example_dir / "chat_history.json").open("w", encoding="utf-8") as f:
            json.dump(rec["chat_history"], f, indent=2, ensure_ascii=False)


def _save_summary(records: list[dict], args: argparse.Namespace) -> None:
    """Save the final summary metrics (called once at the end)."""
    save_path = Path(args.save_path)

    correct = sum(1 for r in records if r["correct"])
    syntax_errors   = sum(1 for r in records if r.get("error_type") == "syntax_error")
    semantic_errors = sum(1 for r in records if r.get("error_type") == "semantic_error")
    parse_failures = syntax_errors + semantic_errors  # backward-compat alias
    accuracy = correct / len(records) if records else 0.0

    # Plan validity stats — only meaningful for gen-data (graph available)
    has_validity = any(r.get("plan_valid") is not None for r in records)
    plan_valid_count = sum(1 for r in records if r.get("plan_valid") is True)
    correct_and_valid = sum(
        1 for r in records if r.get("correct") and r.get("plan_valid") is True
    )
    correct_but_invalid = sum(
        1 for r in records if r.get("correct") and r.get("plan_valid") is False
    )
    incorrect_but_valid = sum(
        1 for r in records if not r.get("correct") and r.get("plan_valid") is True
    )
    # denominator for plan validity rate: solved (non-failure) records with graph
    solved_with_graph = sum(
        1 for r in records if not r.get("error") and r.get("plan_valid") is not None
    )
    plan_valid_rate = plan_valid_count / solved_with_graph if solved_with_graph else None

    metrics = {
        "benchmark": args.benchmark_name,
        "model_name": args.model_name,
        "accuracy": accuracy,
        "num_correct": correct,
        "num_syntax_errors": syntax_errors,
        "num_semantic_errors": semantic_errors,
        "num_data_points": len(records),
        # Plan validity (null when graph unavailable, e.g. asynchow)
        "plan_valid_rate": plan_valid_rate,
        "num_plan_valid": plan_valid_count if has_validity else None,
        "num_correct_and_valid": correct_and_valid if has_validity else None,
        "num_correct_but_invalid": correct_but_invalid if has_validity else None,
        "num_incorrect_but_valid": incorrect_but_valid if has_validity else None,
    }
    with (save_path / "summary_results.json").open("w", encoding="utf-8") as f:
        json.dump(metrics, f, indent=2)

    print(f"\nResults saved to {save_path}")
    print(f"Accuracy       : {accuracy:.4f} ({correct}/{len(records)})")
    print(f"Syntax errors  : {syntax_errors}/{len(records)}  (PDDL parse / planner rejection)")
    print(f"Semantic errors: {semantic_errors}/{len(records)}  (valid plan, wrong makespan)")
    if has_validity:
        print(f"\nPlan validity (gold graph check, n={solved_with_graph} solved):")
        print(f"  plan_valid_rate  : {plan_valid_rate:.4f} ({plan_valid_count}/{solved_with_graph})")
        print(f"  correct & valid  : {correct_and_valid}  ← formalizer got it right")
        print(f"  correct & INVALID: {correct_but_invalid}  ← lucky (wrong plan, right makespan)")
        print(f"  wrong   & valid  : {incorrect_but_valid}  ← overconstrained PDDL")
    else:
        print("Plan validity: N/A (no gold graph in dataset)")


# ── CLI ─────────────────────────────────────────────────────────────────


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="LLM-as-Formalizer: NL → PDDL 2.1 → OPTIC solver"
    )
    parser.add_argument("--model-name", required=True)
    parser.add_argument("--temperature", type=float, default=0.0)
    parser.add_argument("--max-tokens", type=int, default=4096)
    parser.add_argument("--benchmark-name", required=True)
    parser.add_argument("--save-path", required=True)
    parser.add_argument("--batch", type=int, default=16)
    parser.add_argument("--max-examples", type=int, default=100)
    parser.add_argument("--num-workers", type=int, default=8)
    parser.add_argument("--num-shots", type=int, default=0, choices=[0, 1, 2, 3])
    parser.add_argument("--llm-retries", type=int, default=0)
    parser.add_argument(
        "--history-mode",
        default="cumulative",
        choices=["cumulative", "single-turn"],
        dest="history_mode",
        help=(
            "cumulative (default): full chat history grows across retries — "
            "[sys, user, asst₁, err₁, asst₂, err₂, …]. "
            "single-turn: only the immediately preceding round is kept — "
            "[sys, user, asst_prev, err_prev]."
        ),
    )
    parser.add_argument("--data-path", default="", help="Local JSON file (used when --benchmark-name gen-data)")
    parser.add_argument(
        "--two-step",
        action="store_true",
        default=False,
        help="Use two-step generation: LLM extracts dependency graph JSON, Python generates PDDL.",
    )

    return parser.parse_args()


def main() -> None:
    args = parse_args()

    if args.benchmark_name == "asynchow":
        eval_dataset = load_dataset("fangrulin/asynchow", split="test")
    elif args.benchmark_name == "gen-data":
        if not args.data_path:
            raise ValueError("--data-path is required when --benchmark-name gen-data")
        eval_dataset = json.loads(Path(args.data_path).read_text(encoding="utf-8"))
    else:
        raise ValueError(f"Unknown benchmark: {args.benchmark_name}")

    os.makedirs(args.save_path, exist_ok=True)

    llm_client = build_llm_client(
        args.model_name, args.temperature, args.max_tokens,
        num_workers=args.num_workers, strict_json=True,
    )
    run_task(llm_client, eval_dataset, args)


if __name__ == "__main__":
    main()