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

from src.evaluation.accuracy_metrics import (
    exact_match,
    parse_gold_seconds,
)
from src.experiments.utils import build_llm_client, clean_question
from src.llms.base import BaseLLM
from src.method.nl_to_pddl import (
    build_pddl_messages,
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

    # ── 2. Batch LLM translation (NL → PDDL 2.1) ────────────────────
    all_messages = [build_pddl_messages(q) for q in questions]
    raw_responses = llm_client.batch_chat(
        all_messages, schema=PDDLResponse, desc="LLM translation (NL→PDDL)",
    )

    # ── 3. Parse LLM responses into PDDL pairs ────────────────────────
    save_path = Path(args.save_path)
    pddl_dir = save_path / "pddl"
    pddl_dir.mkdir(parents=True, exist_ok=True)
    jsonl_path = save_path / "full_results.jsonl"

    # Parse all LLM outputs first; collect (domain, problem) pairs for batch solving
    pddl_pairs: list[tuple[str, str] | None] = []
    for raw_resp in raw_responses:
        pddl_pairs.append(parse_pddl_response(raw_resp))

    # Build list of solvable problems and their original indices
    solvable_indices: list[int] = []
    solvable_problems: list[tuple[str, str]] = []
    for i, pair in enumerate(pddl_pairs):
        if pair is not None:
            solvable_indices.append(i)
            solvable_problems.append(pair)

    # ── 4. Batch solve all valid PDDL problems ──────────────────────
    solver_results_list: list[SolverResult] = []
    if solvable_problems:
        solver_results_list = batch_solve(
            solvable_problems,
            num_workers=args.batch,
            desc="Solving PDDL",
        )

    # Map solver results back by original index
    solver_results_map: dict[int, SolverResult] = {}
    for idx, sr in zip(solvable_indices, solver_results_list):
        solver_results_map[idx] = sr

    # ── 5. Assemble records & save each example ──────────────────────
    records: list[dict] = []

    with jsonl_path.open("w", encoding="utf-8") as jsonl_f:
        for i, (gold, raw_resp, pair) in enumerate(
            zip(gold_data, raw_responses, pddl_pairs)
        ):
            if pair is None:
                rec = _failure_record(gold, raw_resp, error="PDDL parse failed")
            else:
                domain_pddl, problem_pddl = pair
                result = solver_results_map[i]

                if result.error:
                    rec = _failure_record(
                        gold, raw_resp, error=result.error,
                        domain=domain_pddl, problem=problem_pddl,
                    )
                    rec["raw_solver_output"] = result.raw_output
                else:
                    pred_seconds = int(round(result.makespan_seconds))
                    plan = [(start, action, dur) for start, action, dur in result.plan]
                    rec = {
                        "question": gold["question"],
                        "gold_answer": gold["gold_answer"],
                        "gold_seconds": gold["gold_seconds"],
                        "pred_seconds": pred_seconds,
                        "correct": exact_match(pred_seconds, gold["gold_seconds"]),
                        "plan": plan,
                        "raw_solver_output": result.raw_output,
                        "domain_pddl": domain_pddl,
                        "problem_pddl": problem_pddl,
                        "llm_response": raw_resp,
                    }

            records.append(rec)
            _save_example(pddl_dir, i, rec)
            jsonl_f.write(json.dumps(rec, indent=2, ensure_ascii=False) + "\n")
            jsonl_f.flush()

    # ── 6. Save summary ──────────────────────────────────────────────
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

    return parser.parse_args()


def main() -> None:
    args = parse_args()

    if args.benchmark_name == "asynchow":
        eval_dataset = load_dataset("fangrulin/asynchow", split="test")
    else:
        raise ValueError(f"Unknown benchmark: {args.benchmark_name}")

    os.makedirs(args.save_path, exist_ok=True)

    llm_client = build_llm_client(
        args.model_name, args.temperature, args.max_tokens,
        num_workers=args.batch, strict_json=True,
    )
    run_task(llm_client, eval_dataset, args)


if __name__ == "__main__":
    main()
