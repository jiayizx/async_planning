"""
Run LLM-as-Formalizer pipeline on asynchow.

Pipeline per example:
  1. LLM translates NL planning problem directly into PDDL 2.1
  2. Solve with OPTIC via solver.planning.domains API
  3. Compare solver answer with gold answer
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
from src.method.nl_to_pddl import (
    build_pddl_messages,
    build_retry_messages,
    parse_pddl_response,
    PDDLResponse,
)
from src.method.pddl_solver import solve, batch_solve, SolverResult


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

    # Per-example mutable state (updated in-place across retries)
    domains: list[str | None] = [None] * n
    problems: list[str | None] = [None] * n
    solver_results: list[SolverResult | None] = [None] * n
    raw_responses: list[str | None] = [None] * n
    errors: list[str] = ["not started"] * n

    def _attempt(index_msg_pairs: list[tuple[int, list]], desc: str) -> None:
        """Run one batch of LLM calls + solving; update state in-place."""
        indices = [i for i, _ in index_msg_pairs]
        msgs = [m for _, m in index_msg_pairs]

        responses = llm_client.batch_chat(msgs, schema=PDDLResponse, desc=desc)
        pairs = [parse_pddl_response(r) for r in responses]

        for i, resp in zip(indices, responses):
            raw_responses[i] = resp

        solvable = [(i, pair) for i, pair in zip(indices, pairs) if pair is not None]

        for i, pair in zip(indices, pairs):
            if pair is None:
                errors[i] = "PDDL parse failed"

        if solvable:
            solve_outputs = batch_solve(
                [(d, p) for _, (d, p) in solvable],
                num_workers=args.batch,
                max_retries=args.solver_retries,
                desc="Solving PDDL",
            )
            for (i, (d, p)), sr in zip(solvable, solve_outputs):
                domains[i] = d
                problems[i] = p
                solver_results[i] = sr
                errors[i] = sr.error  # "" on success

    # ── 2. Initial pass ───────────────────────────────────────────────
    _attempt(
        [(i, build_pddl_messages(q, num_shots=args.num_shots)) for i, q in enumerate(questions)],
        desc="LLM translation (NL→PDDL)",
    )

    # ── 3. LLM retry loop ─────────────────────────────────────────────
    for retry in range(args.llm_retries):
        failed = [i for i in range(n) if errors[i]]
        if not failed:
            break
        print(f"\nRetry {retry + 1}/{args.llm_retries}: retrying {len(failed)} failed examples")
        _attempt(
            [
                (i, build_retry_messages(
                    questions[i], domains[i], problems[i], errors[i],
                    num_shots=args.num_shots,
                ))
                for i in failed
            ],
            desc=f"LLM retry {retry + 1}",
        )

    # ── 4. Assemble records & save ────────────────────────────────────
    save_path = Path(args.save_path)
    pddl_dir = save_path / "pddl"
    pddl_dir.mkdir(parents=True, exist_ok=True)
    jsonl_path = save_path / "full_results.jsonl"

    records: list[dict] = []

    with jsonl_path.open("w", encoding="utf-8") as jsonl_f:
        for i, gold in enumerate(gold_data):
            err = errors[i]
            sr = solver_results[i]

            if err:
                rec = _failure_record(
                    gold, raw_responses[i], error=err,
                    domain=domains[i], problem=problems[i],
                )
                if sr is not None:
                    rec["raw_solver_output"] = sr.raw_output
            else:
                pred_seconds = int(round(sr.makespan_seconds))
                rec = {
                    "question": gold["question"],
                    "gold_answer": gold["gold_answer"],
                    "gold_seconds": gold["gold_seconds"],
                    "pred_seconds": pred_seconds,
                    "correct": exact_match(pred_seconds, gold["gold_seconds"]),
                    "plan": [(start, action, dur) for start, action, dur in sr.plan],
                    "raw_solver_output": sr.raw_output,
                    "domain_pddl": domains[i],
                    "problem_pddl": problems[i],
                    "llm_response": raw_responses[i],
                }

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
    domain: str | None = None,
    problem: str | None = None,
) -> dict:
    return {
        "question": gold["question"],
        "gold_answer": gold["gold_answer"],
        "gold_seconds": gold["gold_seconds"],
        "pred_seconds": None,
        "correct": False,
        "error": error,
        "domain_pddl": domain,
        "problem_pddl": problem,
        "llm_response": raw_resp,
    }


def _save_example(pddl_dir: Path, idx: int, rec: dict) -> None:
    """Save a single example's PDDL files and plan immediately."""
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


def _save_summary(records: list[dict], args: argparse.Namespace) -> None:
    """Save the final summary metrics (called once at the end)."""
    save_path = Path(args.save_path)

    correct = sum(1 for r in records if r["correct"])
    parse_failures = sum(1 for r in records if r.get("error"))
    accuracy = correct / len(records) if records else 0.0

    metrics = {
        "benchmark": args.benchmark_name,
        "model_name": args.model_name,
        "accuracy": accuracy,
        "num_correct": correct,
        "num_parse_failures": parse_failures,
        "num_data_points": len(records),
    }
    with (save_path / "summary_results.json").open("w", encoding="utf-8") as f:
        json.dump(metrics, f, indent=2)

    print(f"\nResults saved to {save_path}")
    print(f"Accuracy: {accuracy:.4f} ({correct}/{len(records)})")
    print(f"Parse/solver failures: {parse_failures}/{len(records)}")
    print(f"Solution errors: {len(records) - correct - parse_failures}/{len(records)}")


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
    parser.add_argument("--solver-retries", type=int, default=0)
    parser.add_argument("--llm-retries", type=int, default=0)
    parser.add_argument("--data-path", default="", help="Local JSON file (used when --benchmark-name gen-data)")

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
