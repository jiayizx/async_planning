#!/usr/bin/env python3
"""Re-run TFD solver on planning_failure cases from an existing nosoup run.

Usage:
    python scripts/tfd_rerun.py --results-dir results/robotouille/formalizer/openai_gpt-5-mini_nosoup
"""
import argparse
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from src.experiments.robotouille.run_formalizer import (
    _fix_clear_predicate,
    _fix_cook_fry_effects,
    _fix_move_effects,
    _fix_unstack_empty_effect,
    _normalize_predicate_names,
)
from src.evaluation.robotouille.eval import evaluate_record
from src.method.linearize_optic_plan import linearize_optic_plan
from src.method.pddl_solver import batch_solve


def _parse_args():
    p = argparse.ArgumentParser()
    p.add_argument("--results-dir", required=True)
    p.add_argument("--timeout", type=float, default=120)
    p.add_argument("--num-workers", type=int, default=8)
    return p.parse_args()


def _load_records(jsonl_path: Path) -> list[dict]:
    decoder = json.JSONDecoder()
    records = []
    text = jsonl_path.read_text()
    pos = 0
    while pos < len(text):
        pos = next((i for i in range(pos, len(text)) if text[i] == "{"), len(text))
        if pos >= len(text):
            break
        try:
            obj, end = decoder.raw_decode(text, pos)
            records.append(obj)
            pos += end - pos
        except Exception:
            pos += 1
    return records


def main():
    args = _parse_args()
    results_dir = Path(args.results_dir)
    jsonl_path = results_dir / "full_results.jsonl"

    records = _load_records(jsonl_path)
    print(f"Loaded {len(records)} records from {jsonl_path}")

    # Find planning_failure cases with domain+problem
    candidates = [
        (i, r) for i, r in enumerate(records)
        if r.get("error_type") == "planning_failure"
        and r.get("domain_pddl") and r.get("problem_pddl")
    ]
    print(f"Planning failures to retry with TFD: {len(candidates)}")

    # Apply fixers and collect (domain, problem) pairs
    pairs: list[tuple[str, str]] = []
    for _, r in candidates:
        d = r["domain_pddl"]
        p = r["problem_pddl"]
        d, p = _normalize_predicate_names(d, p)
        d = _fix_move_effects(d)
        d = _fix_unstack_empty_effect(d)
        d = _fix_cook_fry_effects(d)
        p = _fix_clear_predicate(d, p)
        pairs.append((d, p))

    # Batch solve with TFD
    tfd_results = batch_solve(
        pairs,
        num_workers=args.num_workers,
        max_retries=2,
        timeout=args.timeout,
        desc="TFD re-solve",
        solver="tfd",
    )

    solved_count = 0
    for (idx, r), (d, p), sr in zip(candidates, pairs, tfd_results):
        if sr.error:
            continue

        # Got a plan — re-evaluate
        plan_raw = [(s, a, dur) for s, a, dur in sr.plan]
        plan = linearize_optic_plan(plan_raw, r.get("original_json") or {})

        ev = evaluate_record(
            problem_pddl=p,
            plan=plan,
            original_json=r.get("original_json"),
            error=None,
            domain_pddl=d,
            record_id=r["id"],
        )

        records[idx]["error_type"] = ""
        records[idx]["error"] = None
        records[idx]["domain_pddl"] = d
        records[idx]["problem_pddl"] = p
        records[idx]["plan"] = plan
        records[idx]["plan_length"] = len(plan)
        records[idx]["solved"] = True
        records[idx]["eval"] = ev
        solved_count += 1
        print(f"  SOLVED: {r['id']}  plan_len={len(plan)}")

    print(f"\nTFD solved {solved_count}/{len(candidates)} planning failures")

    # Rewrite jsonl
    with jsonl_path.open("w", encoding="utf-8") as f:
        for rec in records:
            slim = {k: v for k, v in rec.items() if k != "raw_solver_output"}
            f.write(json.dumps(slim, indent=2, ensure_ascii=False) + "\n")

    # Recompute and save summary
    _save_summary(records, results_dir)


def _save_summary(records: list[dict], results_dir: Path):
    n = len(records)
    solved = [r for r in records if r.get("solved")]
    syntax_err = sum(1 for r in records if r.get("error_type") == "syntax_error")
    plan_fail = sum(1 for r in records if r.get("error_type") == "planning_failure")
    solver_err = sum(1 for r in records if r.get("error_type") == "solver_error")
    accuracy = len(solved) / n if n > 0 else 0

    plan_lengths = [r["plan_length"] for r in solved if r.get("plan_length")]
    avg_steps = sum(plan_lengths) / len(plan_lengths) if plan_lengths else 0

    # Read existing summary to preserve other fields
    summary_path = results_dir / "summary_results.json"
    existing = {}
    if summary_path.exists():
        existing = json.loads(summary_path.read_text())

    existing.update({
        "num_examples": n,
        "num_syntax_errors": syntax_err,
        "num_planning_failures": plan_fail,
        "num_solver_errors": solver_err,
        "accuracy": accuracy,
        "num_done": len(solved),
        "average_steps": avg_steps,
    })

    summary_path.write_text(json.dumps(existing, indent=2, ensure_ascii=False))

    print(f"\n=== Updated Summary ===")
    print(f"Accuracy          : {accuracy:.4f} ({len(solved)}/{n})")
    print(f"Syntax errors     : {syntax_err}/{n}")
    print(f"Planning failures : {plan_fail}/{n}")
    print(f"Solver errors     : {solver_err}/{n}")
    print(f"Average steps     : {avg_steps:.1f}")
    print(f"Results saved to  : {results_dir}")


if __name__ == "__main__":
    main()
