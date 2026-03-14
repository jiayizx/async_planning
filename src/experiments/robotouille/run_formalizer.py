"""
Run LLM-as-Formalizer pipeline on Robotouille.

Pipeline per example:
  1. Load record from data/robotouille_single_agent_async.json
  2. Build NL from record's 'nl' field
  3. LLM translates NL + domain → problem PDDL (Robotouille STRIPS)
  4. Solve with OPTIC via solver.planning.domains

Retry strategy — two history modes (--history-mode):
  cumulative (default):
    Full chat history grows across retries; the LLM sees ALL prior attempts.
  single-turn:
    Only the immediately preceding assistant response + error are kept.

Evaluation (inspired by baselines/robotouille/main.py):
  - solve_rate: fraction of problems where OPTIC finds a valid plan
  - plan_steps: average number of actions in the LLM-generated plans
"""
from __future__ import annotations

import argparse
import json
import os
import sys
from pathlib import Path

from tqdm import tqdm

from dotenv import load_dotenv
load_dotenv()

_PROJECT_ROOT = Path(__file__).resolve().parent.parent.parent.parent
_ROBOTOUILLE_ROOT = _PROJECT_ROOT / "baselines" / "robotouille"
_DOMAIN_PDDL_PATH = "src/experiments/robotouille/robotouille.pddl"
_DEFAULT_DATA_PATH = _PROJECT_ROOT / "data" / "robotouille_single_agent_async.json"

for p in (_PROJECT_ROOT, _ROBOTOUILLE_ROOT):
    if str(p) not in sys.path:
        sys.path.insert(0, str(p))

from src.experiments.utils import build_llm_client
from src.llms.base import BaseLLM
from src.llms.prompts import SYNTAX_RETRY_TEMPLATE
from src.method.nl_to_pddl import (
    PDDLResponse,
    RobotouillePDDL,
    build_pddl_messages,
    build_robotouille_problem_messages,
    parse_pddl_response,
    parse_robotouille_problem_response,
    normalize_robotouille_problem_to_domain,
    _truncate_solver_error,
)
from src.method.pddl_solver import solve, batch_solve, SolverResult
from src.evaluation.robotouille.eval import evaluate_record, summarize_eval


_TRANSIENT_SOLVER_RETRIES = 2
SOLVER_TIMEOUT = 120


# ── Data loading ─────────────────────────────────────────────────────────


def _load_records(data_path: Path) -> list[dict]:
    if not data_path.exists():
        raise FileNotFoundError(f"Data file not found: {data_path}")
    records = json.loads(data_path.read_text(encoding="utf-8"))
    if not isinstance(records, list):
        raise ValueError(f"Expected JSON array, got {type(records).__name__}")
    return records


def _format_nl(nl_dict: dict) -> str:
    """Build NL string from a record's 'nl' field."""
    if "prompt" in nl_dict:
        return nl_dict["prompt"]
    lines: list[str] = []
    lines.append("## Task\n")
    lines.append(nl_dict.get("task", ""))
    lines.append("\n## Environment\n")
    lines.append(nl_dict.get("environment", ""))
    lines.append("\n## Goal Predicates\n")
    for g in nl_dict.get("goal_predicates", []):
        args_str = ", ".join(g["args"])
        lines.append(f"  - {g['predicate']}({args_str})")
    return "\n".join(lines)


# ── Core experiment logic ───────────────────────────────────────────────


def run_task(llm_client: BaseLLM, records: list[dict], args: argparse.Namespace):
    domain_pddl = Path(_DOMAIN_PDDL_PATH).read_text(encoding="utf-8") if not args.generate_domain else None

    n = min(len(records), args.max_examples)
    records = records[:n]

    questions: list[str] = []
    gold_data: list[dict] = []

    for rec in tqdm(records, desc="Preparing NL questions"):
        nl_raw = rec.get("natural_language") or rec.get("nl")
        if isinstance(nl_raw, str):
            nl_str = nl_raw
        else:
            nl_str = _format_nl(nl_raw or {})
        questions.append(nl_str)
        gold_data.append({
            "id": rec.get("id", "?"),
            "nl": nl_str,
            "original_json": rec.get("original_json"),
        })

    # Per-example mutable state
    domains: list[str | None] = [domain_pddl] * n
    problems: list[str | None] = [None] * n
    solver_results: list[SolverResult | None] = [None] * n
    raw_responses: list[str | None] = [None] * n
    errors: list[str] = ["not_started"] * n
    error_types: list[str] = ["not_started"] * n

    if args.generate_domain:
        histories: list[list[dict]] = [
            build_pddl_messages(q, effect_goal=args.effect_goal)
            for q in questions
        ]
        schema = PDDLResponse
    else:
        histories: list[list[dict]] = [
            build_robotouille_problem_messages(q, domain_pddl, effect_goal=args.effect_goal)
            for q in questions
        ]
        schema = RobotouillePDDL
        

    _base_len: int = len(histories[0]) if histories else 0

    def _attempt(indices: list[int], desc: str) -> None:
        if args.history_mode == "single-turn":
            for i in indices:
                h = histories[i]
                if len(h) > _base_len + 2:
                    histories[i] = h[:_base_len] + h[-2:]

        msgs = [histories[i] for i in indices]
        responses = llm_client.batch_chat(msgs, schema=schema, desc=desc)

        for i, resp in zip(indices, responses):
            raw_responses[i] = resp
            if resp:
                histories[i].append({"role": "assistant", "content": resp})

        solvable: list[tuple[int, str]] = []

        if args.generate_domain:
            for i, resp in zip(indices, responses):
                pair = parse_pddl_response(resp or "")
                if pair is None:
                    errors[i] = "PDDL parse failed"
                    error_types[i] = "syntax_error"
                    histories[i].append({
                        "role": "user",
                        "content": SYNTAX_RETRY_TEMPLATE.format(
                            error="Your response could not be parsed as valid PDDL JSON. "
                                  "Please output only the JSON object matching the schema."
                        ),
                    })
                else:
                    d, p, _sa = pair
                    domains[i] = d
                    problems[i] = p
                    solvable.append((i, p))
        else:
            for i, resp in zip(indices, responses):
                problem_pddl = parse_robotouille_problem_response(resp or "")
                if not problem_pddl:
                    errors[i] = "PDDL parse failed"
                    error_types[i] = "syntax_error"
                    histories[i].append({
                        "role": "user",
                        "content": SYNTAX_RETRY_TEMPLATE.format(
                            error="Your response could not be parsed as valid PDDL JSON. "
                                  "Please output only the JSON object matching the schema: "
                                  '{"problem_pddl": "<full problem PDDL string>"}'
                        ),
                    })
                else:
                    problem_pddl = normalize_robotouille_problem_to_domain(problem_pddl)
                    problems[i] = problem_pddl
                    solvable.append((i, problem_pddl))

        if solvable:
            solve_outputs = batch_solve(
                [(domains[i], p) for i, p in solvable],
                num_workers=args.batch,
                max_retries=_TRANSIENT_SOLVER_RETRIES,
                timeout=SOLVER_TIMEOUT,
                desc="Solving PDDL",
            )
            for (i, _p), sr in zip(solvable, solve_outputs):
                solver_results[i] = sr
                if sr.error:
                    errors[i] = sr.error
                    error_types[i] = "syntax_error"
                    histories[i].append({
                        "role": "user",
                        "content": SYNTAX_RETRY_TEMPLATE.format(
                            error=_truncate_solver_error(sr.error)
                        ),
                    })
                else:
                    errors[i] = ""
                    error_types[i] = ""

    # ── Initial pass ────────────────────────────────────────────────
    _attempt(list(range(n)), desc="LLM translation (NL→PDDL)")

    # ── Retry loop ──────────────────────────────────────────────────
    for retry in range(args.llm_retries):
        n_syntax = sum(1 for t in error_types if t == "syntax_error")
        failed = [i for i in range(n) if errors[i]]
        if not failed:
            break
        print(f"\nRetry {retry + 1}/{args.llm_retries}: {len(failed)} failed ({n_syntax} syntax)")
        _attempt(failed, desc=f"LLM retry {retry + 1}")

    # ── Assemble records & save ─────────────────────────────────────
    save_path = Path(args.save_path)
    pddl_dir = save_path / "pddl"
    pddl_dir.mkdir(parents=True, exist_ok=True)
    jsonl_path = save_path / "full_results.jsonl"

    result_records: list[dict] = []
    eval_results: list[dict] = []

    with jsonl_path.open("w", encoding="utf-8") as jsonl_f:
        for i, gold in enumerate(gold_data):
            sr = solver_results[i]
            plan = [(s, a, d) for s, a, d in sr.plan] if sr and not sr.error else None

            ev = evaluate_record(
                problem_pddl=problems[i],
                plan=plan,
                original_json=gold.get("original_json"),
                error=errors[i] if errors[i] else None,
                domain_pddl=domains[i],
                record_id=gold["id"],
            )
            eval_results.append(ev)

            rec = {
                "id": gold["id"],
                "nl": gold["nl"],
                "error_type": error_types[i],
                "error": errors[i] if errors[i] else None,
                "plan": plan,
                "plan_length": len(plan) if plan else None,
                "solved": plan is not None,
                "eval": ev,
                # "domain_pddl": domains[i],
                "problem_pddl": problems[i],
                # "chat_history": histories[i],
                "llm_response": raw_responses[i],
                "raw_solver_output": sr.raw_output if sr else None,
            }
            result_records.append(rec)

            _save_example(pddl_dir, i, rec)
            jsonl_f.write(json.dumps(rec, indent=2, ensure_ascii=False) + "\n")
            jsonl_f.flush()

    # ── Summary ─────────────────────────────────────────────────────
    _save_summary(result_records, eval_results, args)
    return result_records


def _save_example(pddl_dir: Path, idx: int, rec: dict) -> None:
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


def _save_summary(
    records: list[dict],
    eval_results: list[dict],
    args: argparse.Namespace,
) -> None:
    save_path = Path(args.save_path)
    n = len(records)

    n_syntax = sum(1 for r in records if r.get("error_type") == "syntax_error")

    eval_summary = summarize_eval(eval_results)

    metrics = {
        "benchmark": "robotouille",
        "model_name": args.model_name,
        "generate_domain": args.generate_domain,
        "effect_goal": args.effect_goal,
        "num_examples": n,
        "num_syntax_errors": n_syntax,
        **eval_summary,
    }
    with (save_path / "summary_results.json").open("w", encoding="utf-8") as f:
        json.dump(metrics, f, indent=2)

    acc = eval_summary.get("accuracy", 0.0)
    n_done = eval_summary.get("num_done", 0)
    avg_steps = eval_summary.get("average_steps", 0.0)
    avg_recall = eval_summary.get("avg_goal_predicate_recall")
    goal_match = eval_summary.get("goal_count_match_rate", 0.0)

    sim_rate = eval_summary.get("simulation_success_rate")
    n_sim_tested = eval_summary.get("num_simulation_tested", 0)
    n_sim_ok = eval_summary.get("num_simulation_success", 0)
    env_sim_rate = eval_summary.get("env_simulation_success_rate")
    n_env_tested = eval_summary.get("num_env_simulation_tested", 0)
    n_env_ok = eval_summary.get("num_env_simulation_success", 0)
    avg_ratio = eval_summary.get("avg_steps_ratio")

    mode = "domain+problem" if args.generate_domain else "problem-only"
    print(f"\nResults saved to {save_path}  (mode: {mode})")
    print(f"Accuracy (done)       : {acc:.4f} ({n_done}/{n})")
    print(f"Syntax errors         : {n_syntax}/{n}")
    print(f"Average steps (done)  : {avg_steps:.1f}")
    if avg_ratio is not None:
        print(f"Avg steps ratio       : {avg_ratio:.2f}x optimal")
    if sim_rate is not None:
        print(f"PDDL simulation       : {sim_rate:.4f} ({n_sim_ok}/{n_sim_tested})")
    if env_sim_rate is not None:
        print(f"Env simulation        : {env_sim_rate:.4f} ({n_env_ok}/{n_env_tested})")
    if avg_recall is not None:
        print(f"Avg goal pred recall  : {avg_recall:.4f}")
    print(f"Goal count match rate : {goal_match:.4f}")
    action_totals = eval_summary.get("plan_action_type_totals", {})
    if action_totals:
        print(f"Plan action totals    : {action_totals}")


# ── CLI ──────────────────────────────────────────────────────────────────


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Robotouille LLM-as-Formalizer: NL → PDDL → OPTIC solver"
    )
    parser.add_argument("--model-name", required=True)
    parser.add_argument("--temperature", type=float, default=0.0)
    parser.add_argument("--max-tokens", type=int, default=4096)
    parser.add_argument("--save-path", required=True)
    parser.add_argument("--data-path", default=str(_DEFAULT_DATA_PATH),
                        help="Path to robotouille_single_agent_async.json")
    parser.add_argument("--batch", type=int, default=8)
    parser.add_argument("--max-examples", type=int, default=999)
    parser.add_argument("--num-workers", type=int, default=4)
    parser.add_argument("--llm-retries", type=int, default=2)
    parser.add_argument(
        "--history-mode",
        default="cumulative",
        choices=["cumulative", "single-turn"],
        dest="history_mode",
    )
    parser.add_argument(
        "--generate-domain",
        action="store_true",
        default=False,
        dest="generate_domain",
        help="LLM generates both domain+problem PDDL (default: problem-only with fixed domain).",
    )
    parser.add_argument(
        "--effect-goal",
        action="store_true",
        default=False,
        dest="effect_goal",
        help="(Only with --generate-domain) Use parameterless encoding with all at-end effects in :goal.",
    )
    return parser.parse_args()


def main() -> None:
    args = parse_args()

    data_path = Path(args.data_path)
    if not data_path.is_absolute():
        data_path = _PROJECT_ROOT / data_path

    records = _load_records(data_path)
    print(f"Loaded {len(records)} records from {data_path}")

    if args.generate_domain:
        print("Mode: LLM generates domain + problem PDDL")
    else:
        print("Mode: Fixed domain PDDL, LLM generates problem PDDL only")

    os.makedirs(args.save_path, exist_ok=True)

    llm_client = build_llm_client(
        args.model_name, args.temperature, args.max_tokens,
        num_workers=args.num_workers, strict_json=True,
    )
    run_task(llm_client, records, args)


if __name__ == "__main__":
    main()