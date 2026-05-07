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
import itertools
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
from src.experiments.robo_async.tag_filter import (
    parse_tag_arg,
    summarize_by_tag,
    tag_filter_match,
)
from src.method.cpsat_scheduler import (
    parse_schedule_spec,
    solve_schedule,
)


# ── Prompt ───────────────────────────────────────────────────────────────────

SYSTEM_PROMPT = """\
You are an expert temporal scheduling formalizer. Translate a natural language \
cooking task into a structured scheduling JSON model for a CP-SAT solver.

The solver supports fixed-duration interval actions, precedence dependencies, \
station capacity constraints, and optional robot assignment constraints. It does \
NOT infer cooking semantics. Your JSON must include every required action and \
every required dependency.

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
   Each action id must be exactly "<action>_<item>", for example
   "grill_chicken" or "stack_bun_top". Dependency endpoints must use those
   exact ids.
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
10. If the task states a temporal waiting constraint, include it as a dependency
   with "min_lag" equal to the required wait in seconds. Example:
   {"predecessor": "grill_patty", "successor": "stack_patty", "min_lag": 3}
11. If the task lists robots, every action requires one robot. Put
   "eligible_robots": ["robot1", "robot2"] on each action unless the task
   explicitly restricts an action to a smaller robot set. Do not put robot names
   in the item field or action id.
12. Before output, verify this checklist:
   - every dependency.predecessor appears exactly as an actions[].id
   - every dependency.successor appears exactly as an actions[].id
   - predecessor means the action that must finish first
   - successor means the action that starts later
   - every action has eligible_robots when robots are listed in the task
   - every marinate action has a cut-before-marinate dependency for the same item
   - every fry action for an item marked "must be cut before frying" has a cut-before-fry dependency
   - every mash action has a boil-before-mash dependency for the same item
   - no stack action exists for an item absent from the stack order
   - every stated temporal wait appears as a dependency with the correct min_lag
13. If the task includes online rush deliveries or explicit deadlines, prefer a
    scheduling model that allows those rush-critical deliveries to finish before
    non-rush work, even if total makespan is slightly worse.

Common mistakes to avoid:
- Do NOT write {"predecessor": "mash_yam", "successor": null}. If yam is not in the
  stack order, the chain ends at mash_yam and no dependency is needed after it.
- Do NOT write {"predecessor": "stack_chicken", "successor": "grill_chicken"}.
  That means stack before grill and is invalid. The correct direction is
  {"predecessor": "grill_chicken", "successor": "stack_chicken"}.
- Do NOT write {"predecessor": "fry_potato1", "successor": "stack_potato1"} unless
  stack_potato1 is present in actions because potato1 appears in the stack order.
- Do NOT start marinate from raw. Add cut_item -> marinate_item.

Output ONLY valid JSON with this shape:

For ordinary scheduling tasks:
{
  "mode": "schedule",
  "actions": [
    {
      "id": "cut_potato",
      "action": "cut",
      "item": "potato",
      "duration": 3,
      "station": "cutting_board",
      "eligible_robots": ["robot1", "robot2"]
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
    {"predecessor": "cut_potato", "successor": "fry_potato"},
    {"predecessor": "grill_patty", "successor": "stack_patty", "min_lag": 3}
  ]
}

For optimization tasks with candidate rewards, output an optimization model
instead of listing all candidate actions as mandatory:
{
  "mode": "optimize",
  "objective": "maximize_reward_under_deadline",
  "deadline": 24,
  "inventory_limits": {"protein": 2, "fryer_oil": 2},
  "candidate_goals": [
    {
      "id": "grilled_main",
      "item": "patty",
      "state": "grilled",
      "reward": 9,
      "cost": {"protein": 1}
    }
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
- Every action id must be exactly "<action>_<item>", using the exact item value.
  Example: action="cut", item="online_fry_03_11" requires id="cut_online_fry_03_11".
- If an item must be cut before frying or marinating, include the cut action and
  the dependency from cut to fry/marinate.
- Use "predecessor" for the action that must finish first and "successor" for
  the action that starts later. Do not reverse these fields.
- If the task includes temporal wait constraints, copy each wait as a dependency
  with a numeric "min_lag" in seconds.
- If the task includes robots, include an "eligible_robots" list for every
  action. Use only the exact robot identifiers listed in the task.
- If the task asks to maximize reward by a deadline, do NOT output mandatory
  actions for every candidate reward. Output mode="optimize" with deadline,
  inventory_limits, and candidate_goals. The CP-SAT backend will choose the
  best subset.

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


def _effective_state_for_remaining_planning(state: str) -> str:
    in_progress_to_terminal = {
        "grilling": "grilled",
        "cutting": "cut",
        "frying": "fried",
        "boiling": "boiled",
        "toasting": "toasted",
        "marinating": "marinated",
        "mashing": "mashed",
    }
    return in_progress_to_terminal.get(state, state)


def _remaining_chain(info: dict, current_state: str, required_state: str) -> list[str]:
    current = _effective_state_for_remaining_planning(current_state)
    if current == required_state:
        return []

    if required_state == "cut":
        return ["cut"] if current == "raw" else []
    if required_state == "fried":
        if info.get("fry_requires_cut"):
            if current == "raw":
                return ["cut", "fry"]
            if current == "cut":
                return ["fry"]
            return []
        return ["fry"] if current == "raw" else []
    if required_state == "grilled":
        if info.get("grill_requires_marinated"):
            if current == "raw":
                return ["cut", "marinate", "grill"]
            if current == "cut":
                return ["marinate", "grill"]
            if current == "marinated":
                return ["grill"]
            return []
        return ["grill"] if current == "raw" else []
    if required_state == "boiled":
        return ["boil"] if current == "raw" else []
    if required_state == "mashed":
        if current == "raw":
            return ["boil", "mash"]
        if current == "boiled":
            return ["mash"]
        return []
    if required_state == "toasted":
        return ["toast"] if current == "raw" else []
    return []


def _schedule_spec_for_goal(task_dict: dict, required_states: dict, stack_order: list[str]) -> dict:
    durations = task_dict["action_durations"]
    items = task_dict["items"]
    robots = task_dict.get("robots", [])

    actions: list[dict] = []
    dependencies: list[dict] = []
    last_for_item: dict[str, str] = {}

    def add_action(action: str, item: str) -> str:
        action_id = _normalize_id(action, item)
        action_obj = {
            "id": action_id,
            "action": action,
            "item": item,
            "duration": durations[action],
            "station": ACTION_STATION.get(action),
        }
        if robots:
            action_obj["eligible_robots"] = list(robots)
        actions.append(action_obj)
        return action_id

    for item, state in required_states.items():
        info = items[item]
        chain = _remaining_chain(info, info.get("state", "raw"), state)

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
        action_obj = {
            "id": stack_id,
            "action": "stack",
            "item": item,
            "duration": durations["stack"],
            "station": None,
        }
        if robots:
            action_obj["eligible_robots"] = list(robots)
        actions.append(action_obj)
        if item in last_for_item:
            dependencies.append({"before": last_for_item[item], "after": stack_id})
        if prev_stack_id:
            dependencies.append({"before": prev_stack_id, "after": stack_id})
        prev_stack_id = stack_id

    for constraint in task_dict.get("temporal_constraints", []):
        before = constraint.get("before", {})
        after = constraint.get("after", {})
        before_id = _normalize_id(before.get("action", ""), before.get("item", ""))
        after_id = _normalize_id(after.get("action", ""), after.get("item", ""))
        dep = {"before": before_id, "after": after_id}
        if constraint.get("min_lag", 0):
            dep["min_lag"] = constraint["min_lag"]
        dependencies.append(dep)

    return {"actions": actions, "dependencies": dependencies}


def oracle_schedule_spec(task_dict: dict) -> dict:
    """Compile a gold Robo-Async task JSON into a structured solver spec.

    This is only for smoke tests and solver validation. The LLM formalizer path
    does not use the gold task internals beyond item names and NL text.
    """
    if task_dict.get("objective_type") == "maximize_reward_under_deadline":
        return {
            "mode": "optimize",
            "objective": "maximize_reward_under_deadline",
            "deadline": task_dict["deadline"],
            "inventory_limits": task_dict.get("inventory_limits", {}),
            "candidate_goals": task_dict.get("candidate_goals", []),
        }
    return {
        "mode": "schedule",
        **_schedule_spec_for_goal(
            task_dict,
            task_dict["goal"].get("required_states", {}),
            task_dict["goal"].get("stack_order", []),
        ),
    }


def _coerce_deadline(value) -> float:
    if isinstance(value, str):
        value = value.strip().lower().replace("seconds", "").replace("second", "").strip()
    deadline = float(value)
    if deadline < 0:
        raise ValueError(f"deadline must be nonnegative, got {value!r}")
    return deadline


def _validate_optimization_spec(spec: dict, task_dict: dict) -> dict:
    if not isinstance(spec, dict):
        raise ValueError("optimization spec must be a JSON object")
    deadline = _coerce_deadline(spec.get("deadline", task_dict.get("deadline")))
    raw_limits = spec.get("inventory_limits", {})
    if not isinstance(raw_limits, dict):
        raise ValueError("inventory_limits must be an object")
    inventory_limits = {str(k): int(v) for k, v in raw_limits.items()}

    raw_candidates = spec.get("candidate_goals", [])
    if not isinstance(raw_candidates, list) or not raw_candidates:
        raise ValueError("optimization spec must contain candidate_goals")

    candidates = []
    seen = set()
    valid_items = set(task_dict["items"])
    for raw in raw_candidates:
        if not isinstance(raw, dict):
            raise ValueError("each candidate goal must be an object")
        goal_id = str(raw.get("id", "")).strip()
        item = str(raw.get("item", "")).strip()
        state = str(raw.get("state", "")).strip()
        reward = int(raw.get("reward", 0))
        cost = raw.get("cost", {})
        if not goal_id:
            raise ValueError("candidate goal needs a non-empty id")
        if goal_id in seen:
            raise ValueError(f"duplicate candidate goal id: {goal_id}")
        if item not in valid_items:
            raise ValueError(f"candidate goal {goal_id} references unknown item '{item}'")
        if state not in {"cut", "fried", "grilled", "boiled", "mashed", "toasted"}:
            raise ValueError(f"candidate goal {goal_id} has unsupported state '{state}'")
        if reward < 0:
            raise ValueError(f"candidate goal {goal_id} has negative reward")
        if not isinstance(cost, dict):
            raise ValueError(f"candidate goal {goal_id} cost must be an object")
        candidates.append({
            "id": goal_id,
            "item": item,
            "state": state,
            "reward": reward,
            "cost": {str(k): int(v) for k, v in cost.items()},
        })
        seen.add(goal_id)

    return {
        "mode": "optimize",
        "objective": "maximize_reward_under_deadline",
        "deadline": deadline,
        "inventory_limits": inventory_limits,
        "candidate_goals": candidates,
    }


def _resource_feasible(candidates: list[dict], inventory_limits: dict[str, int]) -> bool:
    usage: dict[str, int] = {}
    for candidate in candidates:
        for resource, amount in candidate.get("cost", {}).items():
            usage[resource] = usage.get(resource, 0) + int(amount)
    return all(usage.get(resource, 0) <= limit for resource, limit in inventory_limits.items())


def solve_optimization_spec(
    spec: dict,
    task_dict: dict,
    *,
    solver_timeout: float,
) -> tuple[dict, object]:
    """Choose the best candidate-goal subset, then schedule it."""
    opt = _validate_optimization_spec(spec, task_dict)
    candidates = opt["candidate_goals"]
    inventory_limits = opt["inventory_limits"]
    deadline = float(opt["deadline"])

    best = None
    for size in range(1, len(candidates) + 1):
        for subset in itertools.combinations(candidates, size):
            subset = list(subset)
            if not _resource_feasible(subset, inventory_limits):
                continue
            required = {candidate["item"]: candidate["state"] for candidate in subset}
            schedule_spec = {
                "mode": "schedule",
                **_schedule_spec_for_goal(task_dict, required, []),
            }
            actions, deps = parse_schedule_spec(
                schedule_spec,
                valid_items=set(task_dict["items"].keys()),
                station_capacities=task_dict.get("stations", {}),
                robots=task_dict.get("robots"),
            )
            sr = solve_schedule(
                actions,
                deps,
                station_capacities=task_dict.get("stations", {}),
                robots=task_dict.get("robots"),
                timeout=solver_timeout,
            )
            if not sr.optimal or sr.makespan is None or sr.makespan > deadline + 1e-6:
                continue
            reward = sum(candidate["reward"] for candidate in subset)
            selected_ids = tuple(candidate["id"] for candidate in subset)
            key = (reward, len(subset), -float(sr.makespan), selected_ids)
            if best is None or key > best[0]:
                normalized = {
                    **opt,
                    "selected_goal_ids": list(selected_ids),
                    "selected_required_states": required,
                    "selected_schedule_spec": {
                        "actions": [a.__dict__ for a in actions],
                        "dependencies": [
                            {
                                "before": dep.before,
                                "after": dep.after,
                                **({"min_lag": dep.min_lag} if dep.min_lag else {}),
                            }
                            for dep in deps
                        ],
                    },
                    "selected_reward": reward,
                }
                best = (key, normalized, sr)

    if best is None:
        raise ValueError("no candidate subset can be scheduled within the deadline")
    return best[1], best[2]


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
        mode = str(spec.get("mode", "")).strip().lower()
        objective = spec.get("objective")
        if isinstance(objective, dict):
            objective = objective.get("type", "")
        objective = str(objective or "").strip().lower()
        is_optimize = (
            mode == "optimize"
            or objective == "maximize_reward_under_deadline"
            or (
                td.get("objective_type") == "maximize_reward_under_deadline"
                and "candidate_goals" in spec
            )
        )
        if is_optimize:
            try:
                normalized, sr = solve_optimization_spec(
                    spec,
                    td,
                    solver_timeout=solver_timeout,
                )
                schedule_results.append(sr)
                normalized_specs.append(normalized)
            except Exception as exc:
                schedule_results.append(("spec_error", str(exc)))
                normalized_specs.append(spec)
            continue

        try:
            actions, deps = parse_schedule_spec(
                spec,
                valid_items=set(td["items"].keys()),
                station_capacities=td.get("stations", {}),
                robots=td.get("robots"),
            )
        except Exception as exc:
            schedule_results.append(("parse_error", str(exc)))
            normalized_specs.append(spec)
            continue

        sr = solve_schedule(
            actions,
            deps,
            station_capacities=td.get("stations", {}),
            robots=td.get("robots"),
            timeout=solver_timeout,
        )
        schedule_results.append(sr)
        normalized_specs.append({
            "actions": [a.__dict__ for a in actions],
            "dependencies": [
                {
                    "before": dep.before,
                    "after": dep.after,
                    **({"min_lag": dep.min_lag} if dep.min_lag else {}),
                }
                for dep in deps
            ],
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
        if td.get("objective_type") == "maximize_reward_under_deadline":
            r["optimal_reward"] = td.get("optimal_reward")
            r["deadline"] = td.get("deadline")
            if isinstance(spec, dict):
                r["selected_goal_ids"] = spec.get("selected_goal_ids")
                r["selected_reward"] = spec.get("selected_reward")
                if td.get("optimal_reward"):
                    selected_reward = spec.get("selected_reward")
                    r["reward_ratio"] = (
                        round(float(selected_reward) / float(td["optimal_reward"]), 4)
                        if selected_reward is not None else
                        None
                    )

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
        "by_tag": summarize_by_tag(task_dicts, results),
    }
    (out_path / "summary.json").write_text(json.dumps(summary, indent=2))

    print(f"\n{'='*50}")
    print(f"Success rate:       {n_success}/{len(results)} ({summary['success_rate']:.1%})")
    print(f"Avg makespan ratio: {avg_ratio:.3f}  (1.000 = optimal)")
    print(f"By tag:             {summary['by_tag']}")
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
