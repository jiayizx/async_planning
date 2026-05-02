"""
Recompute optimal_makespan for all robo_async tasks.

Uses the ground-truth PDDL generator + OPTIC solver to find the true optimal
makespan under station capacity constraints, then updates the task JSON files.

Usage:
    python scripts/recompute_optimal_makespan.py
    python scripts/recompute_optimal_makespan.py --tasks data/robo_async/tasks
    python scripts/recompute_optimal_makespan.py --dry-run
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

from dotenv import load_dotenv
load_dotenv()

_ROOT = Path(__file__).resolve().parent.parent
if str(_ROOT) not in sys.path:
    sys.path.insert(0, str(_ROOT))

from src.envs.robo_async.pddl_generator import generate_domain, generate_problem
from src.method.pddl_solver import solve


def recompute(task_dir: str, dry_run: bool = False, timeout: float = 120.0):
    task_path = Path(task_dir)
    paths = sorted(task_path.glob("*.json"))
    print(f"Recomputing optimal_makespan for {len(paths)} tasks (station constraints active)\n")

    for p in paths:
        task = json.loads(p.read_text())
        domain  = generate_domain(task)
        problem = generate_problem(task)

        result = solve(domain, problem, solver="optic", timeout=timeout, max_retries=1)

        if result is None or result.error:
            err = result.error if result else "solver returned None"
            print(f"  ✗ {p.stem:45s}  FAILED: {err}")
            continue

        new_optimal = result.makespan_seconds
        old_optimal = task["optimal_makespan"]
        seq         = task["sequential_makespan"]
        new_speedup = round(seq / new_optimal, 3) if new_optimal > 0 else 1.0
        changed = abs(new_optimal - old_optimal) > 0.01

        flag = " ← CHANGED" if changed else ""
        print(f"  ✓ {p.stem:45s}  {old_optimal:.1f}s → {new_optimal:.1f}s  speedup={new_speedup}{flag}")

        if not dry_run and changed:
            task["optimal_makespan"] = new_optimal
            task["speedup_ratio"]    = new_speedup
            p.write_text(json.dumps(task, indent=2))

    if dry_run:
        print("\n[dry-run] No files were modified.")
    else:
        print("\nDone. Task JSONs updated.")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--tasks",   default="data/robo_async/tasks")
    parser.add_argument("--timeout", type=float, default=120.0)
    parser.add_argument("--dry-run", action="store_true",
                        help="Print proposed changes without writing files")
    args = parser.parse_args()
    recompute(args.tasks, dry_run=args.dry_run, timeout=args.timeout)


if __name__ == "__main__":
    main()
