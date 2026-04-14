"""
Robo-Async Direct Planner Pipeline
------------------------------------
LLM-as-Planner baseline: skip PDDL formalization and ask the LLM to directly
output a temporal plan in OPTIC format.

Pipeline per task:
  1. Load task JSON → generate NL description
  2. LLM directly generates a temporal plan (OPTIC action-sequence format)
  3. Engine evaluates plan → success, makespan, makespan_ratio
  4. Save results to JSONL

Usage:
  python -m src.experiments.robo_async.run_planner \\
      --model openai/gpt-5-mini \\
      --out results/robo_async/planner/openai_gpt-5-mini
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

from dotenv import load_dotenv
load_dotenv()

_ROOT = Path(__file__).resolve().parent.parent.parent.parent
if str(_ROOT) not in sys.path:
    sys.path.insert(0, str(_ROOT))

from src.experiments.utils import build_llm_client
from src.envs.robo_async.engine import Task, evaluate_from_text
from src.envs.robo_async.nl_generator import task_to_nl


# ── Prompt ────────────────────────────────────────────────────────────────────

SYSTEM_PROMPT = """\
You are an expert kitchen scheduler. Given a cooking task, produce an optimal \
temporal plan that completes all required preparations as fast as possible by \
running independent actions in parallel.

OUTPUT FORMAT — one action per line, exactly:
  <time>: (<action> <item>)  [<duration>]

Rules:
1. <time> is the start time in seconds (float, 3 decimal places).
2. <action> is one of: grill, cut, fry, boil, toast, marinate, mash, stack.
3. <item> is the exact ingredient name from the task.
4. <duration> must match the duration stated in the task for that action (float).
5. Actions on DIFFERENT items may start at the same time (run in parallel).
6. An item can only have one action running on it at a time.
7. STATE TRANSITIONS: each action requires the item to be in a specific state first:
   - grill:    item must be raw (or marinated, if the task specifies)
   - cut:      item must be raw
   - fry:      item must be raw (or cut, if the task specifies)
   - boil:     item must be raw
   - toast:    item must be raw
   - marinate: item must be cut first
   - mash:     item must be boiled first
   Apply actions in the correct order to satisfy these state requirements.
8. STATION CONSTRAINTS: each station has a maximum capacity (given in the task). \
   At most <capacity> actions of the same type may overlap in time. \
   For example, if the grill has capacity 1, only one grill action may run at a time — \
   the next grill action must start after the previous one ends. \
   Note: marinate and cut share the same cutting_board station concept differently — \
   marinate uses the marinator station, mash uses the cutting board.
9. stack(<item>) can only start AFTER the item has finished ALL required processing \
   (i.e. start time ≥ final processing end time).
10. Stack the items in the required order (bottom to top): \
    each stack action must start AFTER the previous stack action ends.
11. Output ONLY the plan lines — no explanation, no markdown fences.
"""

USER_TEMPLATE = """\
Produce a temporal plan for the following cooking task.

{nl}

IMPORTANT — use these EXACT item names (with underscores) in your plan:
{item_names}

Output only the plan lines in the format shown.
"""

# ── Plan parser ───────────────────────────────────────────────────────────────

_PLAN_LINE = re.compile(
    r"(\d+(?:\.\d+)?)\s*:\s*\((\w[\w-]*)((?:\s+\w[\w-]*)*)\)\s*\[(\d+(?:\.\d+)?)\]"
)


def _parse_plan(text: str) -> list[tuple[float, str, list[str], float]] | None:
    """Parse OPTIC-format plan text. Returns list of (t, action, args, dur) or None."""
    steps = []
    for line in text.splitlines():
        line = line.strip()
        if not line or line.startswith(";") or line.startswith("#"):
            continue
        m = _PLAN_LINE.match(line)
        if m:
            steps.append((
                float(m.group(1)),
                m.group(2).lower(),
                m.group(3).split(),
                float(m.group(4)),
            ))
    return steps if steps else None


def _plan_to_text(steps: list[tuple[float, str, list[str], float]]) -> str:
    lines = []
    for t, action, args, dur in sorted(steps, key=lambda s: s[0]):
        args_str = (" " + " ".join(args)) if args else ""
        lines.append(f"{t:.3f}: ({action}{args_str})  [{dur:.3f}]")
    return "\n".join(lines)


# ── Pipeline ──────────────────────────────────────────────────────────────────

def run(model_name: str, out_dir: str, task_dir: str,
        max_tasks: int | None, num_workers: int = 8, implicit: bool = False):

    out_path = Path(out_dir)
    out_path.mkdir(parents=True, exist_ok=True)

    task_dicts = [
        json.loads(p.read_text())
        for p in sorted(Path(task_dir).glob("*.json"))
    ]
    if max_tasks:
        task_dicts = task_dicts[:max_tasks]

    n = len(task_dicts)
    llm = build_llm_client(
        model_name=model_name,
        temperature=0.0,
        max_tokens=2048,
        num_workers=num_workers,
    )

    # ── Stage 1: LLM → plan text (batched) ───────────────────────────────────
    print(f"Stage 1/2  LLM → plan  ({n} tasks, {num_workers} workers) …")
    nls = [task_to_nl(td, implicit=implicit) for td in task_dicts]
    messages_batch = [
        [
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user",   "content": USER_TEMPLATE.format(
                nl=nl,
                item_names="\n".join(f"- {name}" for name in td["items"]),
            )},
        ]
        for nl, td in zip(nls, task_dicts)
    ]
    raw_responses = llm.batch_chat(messages_batch)

    # ── Stage 2: engine evaluation ────────────────────────────────────────────
    print(f"Stage 2/2  Engine evaluation …\n")
    jsonl_path = out_path / "full_results.jsonl"
    jsonl_path.unlink(missing_ok=True)
    results = []

    for i, td in enumerate(task_dicts):
        task = Task.from_dict(td)
        resp = raw_responses[i]
        plan_text = resp if isinstance(resp, str) else (resp.content if resp else "")
        # Strip markdown fences if present
        plan_text = plan_text.strip()
        if "```" in plan_text:
            plan_text = re.sub(r"```[a-z]*\n?", "", plan_text).strip()

        steps = _parse_plan(plan_text)

        r = {
            "id":                  task.id,
            "difficulty":          td.get("difficulty"),
            "speedup_ratio":       td.get("speedup_ratio"),
            "optimal_makespan":    task.optimal_makespan,
            "sequential_makespan": task.sequential_makespan,
            "nl":                  nls[i],
            "llm_plan":            plan_text,
            "error_type":          None,
            "error":               "",
            "success":             False,
            "makespan":            None,
            "makespan_ratio":      None,
        }

        if not steps:
            r["error_type"] = "parse_error"
            r["error"]      = "LLM output contained no parseable plan lines"
        else:
            normalized_text = _plan_to_text(steps)
            eval_result = evaluate_from_text(normalized_text, task)
            r["success"]        = eval_result.success
            r["makespan"]       = eval_result.makespan
            r["makespan_ratio"] = round(eval_result.makespan_ratio, 4)
            if not eval_result.success:
                r["error_type"] = "eval_error"
                r["error"]      = eval_result.error

        status = "✓" if r["success"] else f"✗ ({r['error_type']})"
        ratio  = f"ratio={r['makespan_ratio']:.3f}" if r["makespan_ratio"] else ""
        print(f"  [{td['difficulty']:6s}] {task.id} ... {status}  {ratio}")

        results.append(r)
        with open(jsonl_path, "a") as f:
            f.write(json.dumps(r) + "\n")

    # ── Summary ───────────────────────────────────────────────────────────────
    n_success = sum(1 for r in results if r["success"])
    ratios = [
        r["makespan_ratio"]
        for r in results
        if r["success"] and r["makespan_ratio"] is not None
    ]
    avg_ratio = sum(ratios) / len(ratios) if ratios else 0.0

    summary = {
        "model":              model_name,
        "n_tasks":            n,
        "n_success":          n_success,
        "success_rate":       round(n_success / n, 4) if n else 0,
        "avg_makespan_ratio": round(avg_ratio, 4),
        "n_parse_error":      sum(1 for r in results if r["error_type"] == "parse_error"),
        "n_eval_error":       sum(1 for r in results if r["error_type"] == "eval_error"),
        "by_difficulty": {
            diff: {
                "n":         sum(1 for r in results if r["difficulty"] == diff),
                "n_success": sum(1 for r in results if r["difficulty"] == diff and r["success"]),
            }
            for diff in ["easy", "medium", "hard"]
        },
    }
    (out_path / "summary.json").write_text(json.dumps(summary, indent=2))

    print(f"\n{'='*50}")
    print(f"Success rate:       {n_success}/{n} ({summary['success_rate']:.1%})")
    print(f"Avg makespan ratio: {avg_ratio:.3f}  (1.000 = optimal)")
    print(f"By difficulty:      {summary['by_difficulty']}")
    print(f"Results saved →     {out_path}/")


# ── CLI ───────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--model",       required=True, help="e.g. gemini-3-flash, openai/gpt-5-mini")
    parser.add_argument("--out",         default="results/robo_async/planner/{model}/{mode}")
    parser.add_argument("--tasks",       default="data/robo_async/tasks")
    parser.add_argument("--max",         type=int, default=None, help="limit number of tasks (for testing)")
    parser.add_argument("--num-workers", type=int, default=8,    help="parallel LLM workers (batch_chat)")
    parser.add_argument("--implicit",    action="store_true", help="hide dependency hints in NL (implicit mode)")
    args = parser.parse_args()

    mode = "implicit" if args.implicit else "explicit"
    out_dir = args.out.format(model=args.model.replace("/", "_"), mode=mode)
    print(f"Model:       {args.model}")
    print(f"Mode:        {mode}")
    print(f"Tasks:       {args.tasks}")
    print(f"Out:         {out_dir}")
    print(f"LLM workers: {args.num_workers}")
    print()

    run(
        model_name=args.model,
        out_dir=out_dir,
        task_dir=args.tasks,
        max_tasks=args.max,
        num_workers=args.num_workers,
        implicit=args.implicit,
    )


if __name__ == "__main__":
    main()
