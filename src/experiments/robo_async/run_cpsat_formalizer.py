"""Robo-Async CP-SAT formalizer pipeline.

Pipeline per task:
  1. Load task JSON -> generate NL description
  2. LLM generates a structured scheduling model, not PDDL
  3. CP-SAT solves the scheduling model
  4. Engine evaluates the resulting temporal plan

This is intended as a parallel path to the PDDL/OPTIC formalizer, useful for
experiments where the target representation is a scheduling model.
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

from src.envs.robo_async.engine import ACTION_STATION, Task, evaluate_from_text
from src.envs.robo_async.nl_generator import task_to_nl
from src.experiments.robo_async.tag_filter import parse_tag_arg, tag_filter_match
from src.method.cpsat_scheduler import (
    parse_schedule_spec,
    solve_schedule,
)


# ── Prompt ───────────────────────────────────────────────────────────────────

SYSTEM_PROMPT = """\
You are an expert temporal scheduling formalizer. Translate a natural language \
cooking task into a structured scheduling JSON model for a CP-SAT solver.

The solver supports fixed-duration interval actions, precedence dependencies, \
and station capacity constraints. It does NOT infer cooking semantics. Your JSON \
must include every required action and every required dependency.

Allowed base actions:
- grill, cut, fry, boil, toast, marinate, mash, stack

Allowed stations for non-stack actions:
- grill, cutting_board, fryer, boiler, toaster, marinator

Action semantics:
- grill: raw -> grilled, station grill
- cut: raw -> cut, station cutting_board
- fry: raw -> fried, station fryer, except items marked isfryableifcut must be cut before frying
- boil: raw -> boiled, station boiler
- toast: raw -> toasted, station toaster
- marinate: cut -> marinated, station marinator
- mash: boiled -> mashed, station cutting_board
- stack: place one item onto the final stack, no station

Important rules:
1. Use item names EXACTLY as listed by the user, including underscores and numeric suffixes.
2. Include one action object for every processing action needed to reach the required states.
3. Include stack actions ONLY for items explicitly listed in the final stack order,
   including ready items. Do NOT create stack actions for prepared side items that
   are required in a final state but are not listed in the final stack order.
4. Include dependencies for multi-step chains:
   - cut before fry for isfryableifcut items
   - cut before marinate before grill for items that must be marinated before grilling
   - boil before mash for mashed items
5. Include dependencies from an item's final processing action to that item's stack action
   only when that stack action exists because the item is in the stack order.
6. Include stack-order dependencies: stack previous item before stack next item.
7. Do not add resource-order dependencies. The CP-SAT solver handles station conflicts.
8. Do not include redundant actions.
9. Every dependency must reference existing action ids from the actions list. Never use
   null, None, an empty string, or an id you did not define.
10. Before output, verify this checklist:
   - every dependency.before appears exactly as an actions[].id
   - every dependency.after appears exactly as an actions[].id
   - every marinate action has a cut-before-marinate dependency for the same item
   - every fry action for an item marked "must be cut before frying" has a cut-before-fry dependency
   - every mash action has a boil-before-mash dependency for the same item
   - no stack action exists for an item absent from the stack order

Common mistakes to avoid:
- Do NOT write {"before": "mash_yam", "after": null}. If yam is not in the
  stack order, the chain ends at mash_yam and no dependency is needed after it.
- Do NOT write {"before": "fry_potato1", "after": "stack_potato1"} unless
  stack_potato1 is present in actions because potato1 appears in the stack order.
- Do NOT start marinate from raw. Add cut_item -> marinate_item.

Output ONLY valid JSON with this shape:
{
  "actions": [
    {
      "id": "short_unique_id",
      "action": "cut",
      "item": "potato",
      "duration": 3,
      "station": "cutting_board"
    },
    {
      "id": "stack_potato",
      "action": "stack",
      "item": "potato",
      "duration": 1,
      "station": null
    }
  ],
  "dependencies": [
    {"before": "cut_potato", "after": "fry_potato"}
  ]
}
"""

USER_TEMPLATE = """\
Translate this cooking task into the scheduling JSON model.

{nl}

Use these exact item identifiers in JSON. The natural language may display \
underscores as spaces, but JSON item values must use the identifiers below:
{item_names}

Important:
- Stack actions are allowed only for the items in the "Assemble the final dish"
  stack order. Other prepared ingredients still need processing actions, but no
  stack action and no dependency to a stack action.
- Dependency endpoints must be existing action ids. Never output null/None in
  dependencies.
- If an item must be cut before frying or marinating, include the cut action and
  the dependency from cut to fry/marinate.

Return only the JSON object.
"""


# ── Parsing helpers ──────────────────────────────────────────────────────────

def _strip_json_fence(text: str) -> str:
    text = (text or "").strip()
    if text.startswith("```"):
        parts = text.split("```")
        if len(parts) >= 2:
            text = parts[1]
            if text.lstrip().startswith("json"):
                text = text.lstrip()[4:]
    return text.strip()


def _parse_llm_json(text: str) -> dict | None:
    text = _strip_json_fence(text)
    try:
        return json.loads(text)
    except Exception:
        pass

    # Best-effort extraction for models that wrap prose around the object.
    match = re.search(r"\{.*\}", text, re.DOTALL)
    if not match:
        return None
    try:
        return json.loads(match.group(0))
    except Exception:
        return None


def _normalize_id(action: str, item: str) -> str:
    return f"{action}_{item}"


def oracle_schedule_spec(task_dict: dict) -> dict:
    """Compile a gold Robo-Async task JSON into the scheduling JSON shape.

    This is only for smoke tests and solver validation. The LLM formalizer path
    does not use the gold task internals beyond item names and NL text.
    """
    durations = task_dict["action_durations"]
    items = task_dict["items"]
    required_states = task_dict["goal"].get("required_states", {})
    stack_order = task_dict["goal"].get("stack_order", [])

    actions: list[dict] = []
    dependencies: list[dict] = []
    last_for_item: dict[str, str] = {}

    def add_action(action: str, item: str) -> str:
        action_id = _normalize_id(action, item)
        actions.append({
            "id": action_id,
            "action": action,
            "item": item,
            "duration": durations[action],
            "station": ACTION_STATION.get(action),
        })
        return action_id

    for item, state in required_states.items():
        info = items[item]
        chain: list[str]
        if state == "cut":
            chain = ["cut"]
        elif state == "fried":
            chain = ["cut", "fry"] if info.get("fry_requires_cut") else ["fry"]
        elif state == "grilled":
            chain = ["cut", "marinate", "grill"] if info.get("grill_requires_marinated") else ["grill"]
        elif state == "boiled":
            chain = ["boil"]
        elif state == "mashed":
            chain = ["boil", "mash"]
        elif state == "toasted":
            chain = ["toast"]
        else:
            chain = []

        prev_id = None
        for action in chain:
            action_id = add_action(action, item)
            if prev_id:
                dependencies.append({"before": prev_id, "after": action_id})
            prev_id = action_id
        if prev_id:
            last_for_item[item] = prev_id

    prev_stack_id = None
    for item in stack_order:
        stack_id = _normalize_id("stack", item)
        actions.append({
            "id": stack_id,
            "action": "stack",
            "item": item,
            "duration": durations["stack"],
            "station": None,
        })
        if item in last_for_item:
            dependencies.append({"before": last_for_item[item], "after": stack_id})
        if prev_stack_id:
            dependencies.append({"before": prev_stack_id, "after": stack_id})
        prev_stack_id = stack_id

    return {"actions": actions, "dependencies": dependencies}


# ── Pipeline ─────────────────────────────────────────────────────────────────

def run(
    model_name: str,
    out_dir: str,
    task_dir: str,
    solver_timeout: float,
    max_tasks: int | None,
    num_workers: int = 8,
    implicit: bool = False,
    oracle_spec: bool = False,
    include_tags: set[str] | None = None,
    exclude_tags: set[str] | None = None,
):
    out_path = Path(out_dir)
    out_path.mkdir(parents=True, exist_ok=True)

    task_dicts = [
        json.loads(p.read_text())
        for p in sorted(Path(task_dir).glob("*.json"))
    ]
    if include_tags or exclude_tags:
        task_dicts = [
            td for td in task_dicts
            if tag_filter_match(td, include_tags or set(), exclude_tags or set())
        ]
    if max_tasks:
        task_dicts = task_dicts[:max_tasks]
    n = len(task_dicts)

    nls = [task_to_nl(td, implicit=implicit) for td in task_dicts]
    raw_responses: list[str | None] = [None] * n
    parsed_specs: list[dict | None] = [None] * n

    if oracle_spec:
        print(f"Stage 1/3  Oracle task JSON -> scheduling spec ({n} tasks) ...")
        parsed_specs = [oracle_schedule_spec(td) for td in task_dicts]
    else:
        print(f"Stage 1/3  LLM -> scheduling JSON ({n} tasks, {num_workers} workers) ...")
        from src.experiments.utils import build_llm_client

        llm = build_llm_client(
            model_name=model_name,
            temperature=0.0,
            max_tokens=4096,
            num_workers=num_workers,
        )
        messages_batch = [
            [
                {"role": "system", "content": SYSTEM_PROMPT},
                {"role": "user", "content": USER_TEMPLATE.format(
                    nl=nl,
                    item_names="\n".join(f"- {item}" for item in td["items"].keys()),
                )},
            ]
            for nl, td in zip(nls, task_dicts)
        ]
        raw_responses = llm.batch_chat(messages_batch)
        parsed_specs = [
            _parse_llm_json(resp if isinstance(resp, str) else "")
            for resp in raw_responses
        ]

    print(f"Stage 2/3  CP-SAT scheduling ...")
    schedule_results = []
    normalized_specs = []
    for td, spec in zip(task_dicts, parsed_specs):
        if spec is None:
            schedule_results.append(None)
            normalized_specs.append(None)
            continue
        try:
            actions, deps = parse_schedule_spec(
                spec,
                valid_items=set(td["items"].keys()),
                station_capacities=td.get("stations", {}),
            )
        except Exception as exc:
            schedule_results.append(("parse_error", str(exc)))
            normalized_specs.append(spec)
            continue

        sr = solve_schedule(
            actions,
            deps,
            station_capacities=td.get("stations", {}),
            timeout=solver_timeout,
        )
        schedule_results.append(sr)
        normalized_specs.append({
            "actions": [a.__dict__ for a in actions],
            "dependencies": [{"before": before, "after": after} for before, after in deps],
        })

    print(f"Stage 3/3  Engine evaluation ...\n")
    jsonl_path = out_path / "full_results.jsonl"
    jsonl_path.unlink(missing_ok=True)
    results = []

    for i, td in enumerate(task_dicts):
        task = Task.from_dict(td)
        spec = normalized_specs[i]
        sched = schedule_results[i]
        r = {
            "id": task.id,
            "difficulty": td.get("difficulty"),
            "speedup_ratio": td.get("speedup_ratio"),
            "optimal_makespan": task.optimal_makespan,
            "sequential_makespan": task.sequential_makespan,
            "nl": nls[i],
            "schedule_spec": spec,
            "llm_response": raw_responses[i],
            "solver": "cp-sat",
            "solver_status": None,
            "solver_optimal": False,
            "solver_plan": None,
            "error_type": None,
            "error": "",
            "success": False,
            "makespan": None,
            "makespan_ratio": None,
        }

        if parsed_specs[i] is None:
            r["error_type"] = "llm_error"
            r["error"] = "LLM failed to return valid scheduling JSON"
        elif isinstance(sched, tuple) and sched[0] == "parse_error":
            r["error_type"] = "spec_error"
            r["error"] = sched[1]
        elif sched is None:
            r["error_type"] = "solver_error"
            r["error"] = "solver did not run"
        elif sched.error and not sched.plan:
            r["error_type"] = "solver_error"
            r["solver_status"] = sched.status
            r["error"] = sched.error
        else:
            plan_text = sched.to_plan_text()
            r["solver_status"] = sched.status
            r["solver_optimal"] = sched.optimal
            r["solver_plan"] = plan_text
            eval_result = evaluate_from_text(plan_text, task)
            r["success"] = eval_result.success
            r["makespan"] = eval_result.makespan
            r["makespan_ratio"] = round(eval_result.makespan_ratio, 4)
            if not sched.optimal:
                r["error_type"] = "solver_not_optimal"
                r["error"] = sched.error
            if not eval_result.success:
                r["error_type"] = "eval_error"
                r["error"] = eval_result.error

        status = "✓" if r["success"] else f"✗ ({r['error_type']})"
        ratio = f"ratio={r['makespan_ratio']:.3f}" if r["makespan_ratio"] else ""
        print(f"  [{td['difficulty']:6s}] {task.id} ... {status}  {ratio}")

        results.append(r)
        with jsonl_path.open("a", encoding="utf-8") as f:
            f.write(json.dumps(r, ensure_ascii=False) + "\n")

    n_success = sum(1 for r in results if r["success"])
    ratios = [
        r["makespan_ratio"]
        for r in results
        if r["success"] and r["makespan_ratio"] is not None
    ]
    avg_ratio = sum(ratios) / len(ratios) if ratios else 0.0
    summary = {
        "model": model_name,
        "backend": "cp-sat",
        "oracle_spec": oracle_spec,
        "n_tasks": len(results),
        "n_success": n_success,
        "success_rate": round(n_success / len(results), 4) if results else 0,
        "avg_makespan_ratio": round(avg_ratio, 4),
        "n_llm_error": sum(1 for r in results if r["error_type"] == "llm_error"),
        "n_spec_error": sum(1 for r in results if r["error_type"] == "spec_error"),
        "n_solver_error": sum(1 for r in results if r["error_type"] == "solver_error"),
        "n_solver_not_optimal": sum(1 for r in results if r["error_type"] == "solver_not_optimal"),
        "n_eval_error": sum(1 for r in results if r["error_type"] == "eval_error"),
        "by_difficulty": {
            diff: {
                "n": sum(1 for r in results if r["difficulty"] == diff),
                "n_success": sum(1 for r in results if r["difficulty"] == diff and r["success"]),
            }
            for diff in ["easy", "medium", "hard"]
        },
    }
    (out_path / "summary.json").write_text(json.dumps(summary, indent=2))

    print(f"\n{'='*50}")
    print(f"Success rate:       {n_success}/{len(results)} ({summary['success_rate']:.1%})")
    print(f"Avg makespan ratio: {avg_ratio:.3f}  (1.000 = optimal)")
    print(f"By difficulty:      {summary['by_difficulty']}")
    print(f"Results saved ->    {out_path}/")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--model", required=True, help="e.g. openai/gpt-5-mini")
    parser.add_argument("--out", default="results/robo_async/cpsat_formalizer/{model}/{mode}")
    parser.add_argument("--tasks", default="data/robo_async/tasks")
    parser.add_argument("--timeout", type=float, default=120.0)
    parser.add_argument("--max", type=int, default=None, help="limit number of tasks")
    parser.add_argument("--num-workers", type=int, default=8, help="parallel LLM workers")
    parser.add_argument("--implicit", action="store_true", help="hide dependency hints in NL")
    parser.add_argument(
        "--include-tags",
        default="",
        help="comma-separated challenge tags to include, e.g. hard_multiagent,capacity_gt_1",
    )
    parser.add_argument(
        "--exclude-tags",
        default="",
        help="comma-separated challenge tags to exclude",
    )
    parser.add_argument(
        "--oracle-spec",
        action="store_true",
        help="use gold task JSON to produce schedule specs; useful for CP-SAT smoke tests",
    )
    args = parser.parse_args()

    mode = "implicit" if args.implicit else "explicit"
    if args.oracle_spec:
        mode = f"{mode}_oracle"
    out_dir = args.out.format(model=args.model.replace("/", "_"), mode=mode)

    print(f"Model:       {args.model}")
    print(f"Mode:        {mode}")
    print(f"Tasks:       {args.tasks}")
    print(f"Out:         {out_dir}")
    print(f"Timeout:     {args.timeout}s")
    print(f"LLM workers: {args.num_workers}")
    print(f"Oracle spec: {args.oracle_spec}")
    if args.include_tags:
        print(f"Include tags:{args.include_tags}")
    if args.exclude_tags:
        print(f"Exclude tags:{args.exclude_tags}")
    print()

    run(
        model_name=args.model,
        out_dir=out_dir,
        task_dir=args.tasks,
        solver_timeout=args.timeout,
        max_tasks=args.max,
        num_workers=args.num_workers,
        implicit=args.implicit,
        oracle_spec=args.oracle_spec,
        include_tags=parse_tag_arg(args.include_tags),
        exclude_tags=parse_tag_arg(args.exclude_tags),
    )


if __name__ == "__main__":
    main()
