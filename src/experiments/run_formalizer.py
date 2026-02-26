"""
Run LLM-as-Formalizer pipeline on asynchow.

Pipeline per example:
  1. LLM translates NL planning problem directly into PDDL 2.1
  2. Solve with OPTIC via solver.planning.domains API
  3. Compare solver answer with gold answer

Retry strategy (multi-turn conversation):
  Each failed example accumulates its full chat history. On retry, the
  assistant's previous response + the solver error are appended, so the LLM
  sees ALL prior attempts and won't repeat the same mistakes.

  retry=3 produces:
    system, user, assistant₁, user_error₁, assistant₂, user_error₂, assistant₃

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
from src.experiments.utils import build_llm_client, clean_question
from src.llms.base import BaseLLM
from src.llms.prompts import RETRY_USER_TEMPLATE
from src.method.nl_to_pddl import (
    build_pddl_messages,
    parse_pddl_response,
    PDDLResponse,
)
from src.method.pddl_solver import solve, batch_solve, SolverResult


# Hard-coded transient-server retry (not user-facing; just protects against
# flaky solver.planning.domains containers).
_TRANSIENT_SOLVER_RETRIES = 2


# ── Core logic ──────────────────────────────────────────────────────────


def run_task(llm_client: BaseLLM, eval_dataset, args: argparse.Namespace):
    # ── 1. Collect questions & gold labels ────────────────────────────
    questions: list[str] = []
    gold_data: list[dict] = []

    for idx, example in enumerate(tqdm(eval_dataset, desc="Collecting questions")):
        question = clean_question(example["question"])
        gold_seconds = parse_gold_seconds(example["answer"])

        questions.append(question)
        gold_data.append({
            "idx": idx,
            "question": example["question"],
            "gold_answer": example["answer"],
            "gold_seconds": gold_seconds,
        })
        if idx + 1 >= args.max_examples:
            break

    n = len(questions)
    save_path = Path(args.save_path)

    # Per-example mutable state (updated in-place across retries)
    domains: list[str | None] = [None] * n
    problems: list[str | None] = [None] * n
    solver_results: list[SolverResult | None] = [None] * n
    raw_responses: list[str | None] = [None] * n
    errors: list[str] = ["not started"] * n

    # Per-example conversation history (grows with each retry turn)
    histories: list[list[dict]] = [
        build_pddl_messages(q, num_shots=args.num_shots)
        for q in questions
    ]

    def _call_and_solve(indices: list[int], desc: str) -> None:
        """Send current histories for *indices* to the LLM, parse, solve.

        After the LLM responds, the assistant message is appended to each
        example's history so that subsequent retries see the full conversation.
        """
        msgs = [histories[i] for i in indices]

        responses = llm_client.batch_chat(msgs, schema=PDDLResponse, desc=desc)
        pairs = [parse_pddl_response(r) for r in responses]

        for i, resp in zip(indices, responses):
            raw_responses[i] = resp
            # Append assistant response to conversation history
            if resp:
                histories[i].append({"role": "assistant", "content": resp})

        solvable = [(i, pair) for i, pair in zip(indices, pairs) if pair is not None]

        for i, pair in zip(indices, pairs):
            if pair is None:
                errors[i] = "PDDL parse failed"

        if solvable:
            solve_outputs = batch_solve(
                [(d, p) for _, (d, p) in solvable],
                num_workers=args.batch,
                max_retries=_TRANSIENT_SOLVER_RETRIES,
                desc="Solving PDDL",
            )
            for (i, (d, p)), sr in zip(solvable, solve_outputs):
                domains[i] = d
                problems[i] = p
                solver_results[i] = sr
                errors[i] = sr.error  # "" on success

    # ── 2. Initial pass (run_0) ──────────────────────────────────────
    _call_and_solve(list(range(n)), desc="LLM translation (NL→PDDL)")

    _save_run_snapshot(
        run_idx=0,
        save_path=save_path,
        gold_data=gold_data,
        domains=domains,
        problems=problems,
        solver_results=solver_results,
        raw_responses=raw_responses,
        errors=errors,
    )

    # ── 3. Multi-turn retry loop (run_1, run_2, …) ───────────────────
    #
    # For each failed example, append the error feedback as a new user
    # message, then call the LLM again.  The conversation grows:
    #   [system, user, asst₁, user_err₁, asst₂, user_err₂, …]
    #
    for retry in range(args.llm_retries):
        # Only retry examples with syntax errors (non-empty error string).
        failed = [i for i in range(n) if errors[i]]
        if not failed:
            break
        print(f"\nRetry {retry + 1}/{args.llm_retries}: "
              f"retrying {len(failed)} syntax-error examples")

        # Append error feedback to each failed example's history
        for i in failed:
            histories[i].append({
                "role": "user",
                "content": RETRY_USER_TEMPLATE.format(error=errors[i]),
            })

        _call_and_solve(failed, desc=f"LLM retry {retry + 1}")

        _save_run_snapshot(
            run_idx=retry + 1,
            save_path=save_path,
            gold_data=gold_data,
            domains=domains,
            problems=problems,
            solver_results=solver_results,
            raw_responses=raw_responses,
            errors=errors,
        )

    # ── 4. Assemble final records & save ─────────────────────────────
    records = _build_records(
        gold_data, domains, problems, solver_results, raw_responses, errors,
        histories,
    )

    pddl_dir = save_path / "pddl"
    pddl_dir.mkdir(parents=True, exist_ok=True)
    jsonl_path = save_path / "full_results.jsonl"

    with jsonl_path.open("w", encoding="utf-8") as jsonl_f:
        for i, rec in enumerate(records):
            _save_example(pddl_dir, i, rec)
            jsonl_f.write(json.dumps(rec, indent=2, ensure_ascii=False) + "\n")
            jsonl_f.flush()

    # ── 5. Save summary ──────────────────────────────────────────────
    _save_summary(records, args)
    return records


# ── Record building ─────────────────────────────────────────────────────


def _build_records(
    gold_data: list[dict],
    domains: list[str | None],
    problems: list[str | None],
    solver_results: list[SolverResult | None],
    raw_responses: list[str | None],
    errors: list[str],
    histories: list[list[dict]] | None = None,
) -> list[dict]:
    """Build result records with syntax_error / semantic_error labels."""
    records: list[dict] = []
    for i, gold in enumerate(gold_data):
        err = errors[i]
        sr = solver_results[i]

        if err:
            # Solver or parse error → syntax_error
            rec = {
                "question": gold["question"],
                "gold_answer": gold["gold_answer"],
                "gold_seconds": gold["gold_seconds"],
                "pred_seconds": None,
                "correct": False,
                "error_type": "syntax_error",
                "error": err,
                "domain_pddl": domains[i],
                "problem_pddl": problems[i],
                "llm_response": raw_responses[i],
            }
            if sr is not None:
                rec["raw_solver_output"] = sr.raw_output
        else:
            pred_seconds = int(round(sr.makespan_seconds))
            is_correct = exact_match(pred_seconds, gold["gold_seconds"])
            rec = {
                "question": gold["question"],
                "gold_answer": gold["gold_answer"],
                "gold_seconds": gold["gold_seconds"],
                "pred_seconds": pred_seconds,
                "correct": is_correct,
                "error_type": None if is_correct else "semantic_error",
                "error": None if is_correct else f"expected {gold['gold_seconds']}s, got {pred_seconds}s",
                "plan": [(start, action, dur) for start, action, dur in sr.plan],
                "raw_solver_output": sr.raw_output,
                "domain_pddl": domains[i],
                "problem_pddl": problems[i],
                "llm_response": raw_responses[i],
            }

        # Attach full dialogue history if available
        if histories is not None:
            rec["dialogue_history"] = histories[i]

        records.append(rec)
    return records


# ── Per-run snapshot saving ─────────────────────────────────────────────


def _save_run_snapshot(
    run_idx: int,
    save_path: Path,
    gold_data: list[dict],
    domains: list[str | None],
    problems: list[str | None],
    solver_results: list[SolverResult | None],
    raw_responses: list[str | None],
    errors: list[str],
) -> None:
    """Save a full snapshot of results after run_<run_idx> (run_0 = initial, run_1 = retry 1, …)."""
    run_dir = save_path / f"run_{run_idx}"
    run_dir.mkdir(parents=True, exist_ok=True)

    records = _build_records(gold_data, domains, problems, solver_results, raw_responses, errors)

    # Write full_results.jsonl
    with (run_dir / "full_results.jsonl").open("w", encoding="utf-8") as f:
        for rec in records:
            f.write(json.dumps(rec, indent=2, ensure_ascii=False) + "\n")

    # Write summary
    n = len(records)
    correct = sum(1 for r in records if r["correct"])
    syntax_errors = sum(1 for r in records if r.get("error_type") == "syntax_error")
    semantic_errors = sum(1 for r in records if r.get("error_type") == "semantic_error")
    accuracy = correct / n if n else 0.0

    summary = {
        "run": run_idx,
        "accuracy": accuracy,
        "num_correct": correct,
        "num_syntax_errors": syntax_errors,
        "num_semantic_errors": semantic_errors,
        "num_data_points": n,
    }
    with (run_dir / "summary.json").open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)

    print(f"  run_{run_idx}: accuracy={accuracy:.4f}  correct={correct}  "
          f"syntax_err={syntax_errors}  semantic_err={semantic_errors}  total={n}")


# ── Helpers ─────────────────────────────────────────────────────────────


def _save_example(pddl_dir: Path, idx: int, rec: dict) -> None:
    """Save a single example's PDDL files, plan, and dialogue history."""
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
    if rec.get("dialogue_history"):
        with (example_dir / "dialogue.json").open("w", encoding="utf-8") as f:
            json.dump(rec["dialogue_history"], f, indent=2, ensure_ascii=False)


def _save_summary(records: list[dict], args: argparse.Namespace) -> None:
    """Save the final summary metrics (called once at the end)."""
    save_path = Path(args.save_path)

    correct = sum(1 for r in records if r["correct"])
    syntax_errors = sum(1 for r in records if r.get("error_type") == "syntax_error")
    semantic_errors = sum(1 for r in records if r.get("error_type") == "semantic_error")
    accuracy = correct / len(records) if records else 0.0

    metrics = {
        "benchmark": args.benchmark_name,
        "model_name": args.model_name,
        "accuracy": accuracy,
        "num_correct": correct,
        "num_syntax_errors": syntax_errors,
        "num_semantic_errors": semantic_errors,
        "num_data_points": len(records),
        "llm_retries": args.llm_retries,
    }
    with (save_path / "summary_results.json").open("w", encoding="utf-8") as f:
        json.dump(metrics, f, indent=2)

    print(f"\n{'='*60}")
    print(f"Results saved to {save_path}")
    print(f"  Accuracy:        {accuracy:.4f} ({correct}/{len(records)})")
    print(f"  Syntax errors:   {syntax_errors}/{len(records)}")
    print(f"  Semantic errors: {semantic_errors}/{len(records)}")
    print(f"{'='*60}")


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
    parser.add_argument("--llm-retries", type=int, default=0,
                        help="Number of LLM retry rounds (multi-turn: each retry "
                             "appends error feedback to the conversation history)")
    parser.add_argument("--data-path", default="",
                        help="Local JSON file (used when --benchmark-name gen-data)")

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
