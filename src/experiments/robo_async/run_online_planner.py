"""Minimal online planner runner for Robo-Async episodes."""
from __future__ import annotations

import argparse
import copy
import json
import sys
from dataclasses import dataclass
from pathlib import Path

from dotenv import load_dotenv

load_dotenv()

_ROOT = Path(__file__).resolve().parent.parent.parent.parent
if str(_ROOT) not in sys.path:
    sys.path.insert(0, str(_ROOT))

from src.envs.robo_async.engine import (  # noqa: E402
    ACTION_STATION,
    IN_PROGRESS,
    RESULT,
    TERMINAL,
    PlanStep,
    PreconditionError,
    WorldState,
    apply_end,
    apply_start,
    check_start,
    parse_optic_plan,
)
from src.envs.robo_async.nl_generator import task_to_nl  # noqa: E402
from src.experiments.robo_async.run_cpsat_formalizer import (  # noqa: E402
    _normalize_id,
    _resource_feasible,
    _schedule_spec_for_goal,
    _validate_optimization_spec,
    oracle_schedule_spec,
)
from src.experiments.robo_async.tag_filter import (  # noqa: E402
    parse_tag_arg,
    summarize_by_tag,
    tag_filter_match,
)
from src.experiments.robo_async.online_progress import (  # noqa: E402
    OnlineSubsetProgress,
    sort_online_episodes,
)


SYSTEM_PROMPT = """\
You are an expert online kitchen scheduler.

You will be given the CURRENT state of a cooking episode after some actions may
already have started. Produce a VALID future temporal plan for the remaining
work only.

Output format:

If no robots are listed:
  <time>: (<action> <item>)  [<duration>]

If robots are listed:
  <time>: (<action> <robot> <item>)  [<duration>]

Strict formatting requirements:
- Output ONLY raw plan lines in the exact format above.
- Do NOT output any prose, explanation, bullets, numbering, headers, markdown fences, or JSON.
- Every non-empty line must start with a numeric timestamp like `0.000:`.
- Use exactly one action per line.
- Use parentheses around the action call and square brackets around the duration.
- The first emitted character of the entire response must be a digit.

Interpretation:
1. Times are RELATIVE TO NOW. The first new action can start at time 0.000.
2. Output only FUTURE actions that have not started yet.
3. Do NOT repeat actions that are already completed.
4. Do NOT repeat actions that are currently in progress. Those ongoing actions
   are already committed and will finish automatically at their listed times.
5. Respect remaining station occupancy and robot occupancy caused by those
   committed ongoing actions.
6. Use exact item names and robot names from the prompt.
7. Allowed actions: grill, cut, fry, boil, toast, marinate, mash, stack.
8. Maintain all action preconditions:
   - grill: raw, or marinated if the item requires marinating first
   - cut: raw
   - fry: raw, or cut if the item requires cut-before-fry
   - boil: raw
   - toast: raw
   - marinate: cut
   - mash: boiled
9. Do not output explanations or markdown fences.
10. For optimization episodes, choose a feasible remaining subset under the
    deadline and inventory limits. You do not need to complete every candidate.
11. Every emitted action must use the full positive action duration from the domain.
    Never emit 0-duration actions. Never emit partial or "remaining-time" versions
    of already-committed actions.
12. If a delivery has a deadline or is marked as rush-critical, prioritize actions
    needed to finish that delivery before non-rush main-line work whenever there
    is a scheduling conflict.
"""


USER_TEMPLATE = """\
Current time: {now:.3f} seconds

Plan the remaining work for this online cooking episode.

{nl}

Exact item names:
{item_names}

Already completed before now:
{completed}

Committed ongoing actions:
{ongoing}

Remaining work only:
{remaining}

Per-item remaining action chains:
{remaining_actions}

Rush-priority guidance:
{priority}

Deadline notes:
{deadlines}

Important:
- Your times must start at 0.000 from the current moment.
- Output only the future suffix plan.
- Output only plan lines. Do not include any commentary before or after the plan.
- Every non-empty line must match exactly one of these schemas:
  `0.000: (cut lettuce01)  [3.000]`
  `0.000: (cut robot1 lettuce01)  [3.000]`
- Do not repeat actions that are already completed or already in progress.
- If an item is already in the correct prepared state, only plan any still-needed later actions
  such as stack; do not re-prepare that item.
- Use only full domain actions with their normal positive durations. Never output 0-duration
  or partial committed-action placeholders.
- If rush-critical deliveries are listed, satisfy them before non-rush work whenever possible,
  even if the overall makespan becomes slightly worse.
"""


@dataclass
class PartialSimulation:
    success: bool
    error: str
    state: WorldState | None
    ongoing_steps: list[PlanStep]
    started_steps: list[PlanStep]
    completed_steps: list[PlanStep]


@dataclass
class EpisodeEval:
    success: bool
    error: str
    makespan: float
    selected_reward: int | None = None
    reward_ratio: float | None = None
    makespan_ratio: float | None = None
    delivery_completion_times: dict[str, float] | None = None
    continuation_oracle_makespan: float | None = None
    continuation_oracle_reward: int | None = None


def _aggregate_goal(deliveries: list[dict]) -> dict:
    required_states: dict[str, str] = {}
    stack_order: list[str] = []
    for delivery in deliveries:
        required_states.update(delivery.get("required_states", {}))
        stack_order.extend(delivery.get("stack_order", []))
    return {
        "required_states": required_states,
        "stack_order": stack_order,
    }


def _build_task_dict(base: dict, episode_id: str) -> dict:
    deliveries = list(base.get("deliveries", []))
    task = {
        "id": episode_id,
        "difficulty": base.get("difficulty", ""),
        "items": copy.deepcopy(base["items"]),
        "goal": _aggregate_goal(deliveries),
        "action_durations": copy.deepcopy(base["action_durations"]),
        "stations": copy.deepcopy(base["stations"]),
        "temporal_constraints": copy.deepcopy(base.get("temporal_constraints", [])),
        "robots": list(base.get("robots", [])),
        "objective_type": "minimize_makespan",
    }
    if base.get("candidate_goals"):
        task["objective_type"] = "maximize_reward_under_deadline"
        task["candidate_goals"] = copy.deepcopy(base["candidate_goals"])
        task["deadline"] = base.get("deadline")
        task["inventory_limits"] = copy.deepcopy(base.get("inventory_limits", {}))
    return task


def _render_plan_text(steps: list[PlanStep]) -> str:
    rows = sorted(steps, key=lambda s: (s.t_start, s.action, tuple(s.args)))
    return "\n".join(
        f"{step.t_start:.3f}: ({step.action}{(' ' + ' '.join(step.args)) if step.args else ''})  [{step.duration:.3f}]"
        for step in rows
    )


def _shift_relative_steps(steps: list[PlanStep], offset: float) -> list[PlanStep]:
    return [
        PlanStep(
            t_start=round(step.t_start + offset, 3),
            duration=step.duration,
            action=step.action,
            args=list(step.args),
        )
        for step in steps
    ]


def _initial_world(task_dict: dict) -> WorldState:
    return WorldState(
        task_dict["items"],
        task_dict.get("stations"),
        _aggregate_goal(task_dict.get("deliveries", [])).get("required_states", {}),
        task_dict.get("robots", []),
    )


def _run_events_until(steps: list[PlanStep], task_dict: dict, horizon: float) -> PartialSimulation:
    state = _initial_world(task_dict)
    fry_requires_cut = {
        name for name, info in task_dict["items"].items()
        if info.get("fry_requires_cut", False)
    }
    grill_requires_marinated = {
        name for name, info in task_dict["items"].items()
        if info.get("grill_requires_marinated", False)
    }

    queue: list[tuple[float, int, int]] = []
    started_steps: list[PlanStep] = []
    completed_steps: list[PlanStep] = []
    ongoing_steps: list[PlanStep] = []

    for i, step in enumerate(steps):
        if step.t_start < horizon - 1e-9:
            queue.append((step.t_start, 1, i))
            started_steps.append(step)
        if step.t_end <= horizon + 1e-9:
            queue.append((step.t_end, 0, i))
            completed_steps.append(step)
        elif step.t_start < horizon - 1e-9:
            ongoing_steps.append(step)
    queue.sort(key=lambda x: (x[0], x[1]))

    for t, kind, idx in queue:
        step = steps[idx]
        try:
            if kind == 1:
                check_start(step.action, step.args, state, fry_requires_cut, grill_requires_marinated)
                apply_start(step.action, step.args, state)
            else:
                apply_end(step.action, step.args, state)
        except PreconditionError as exc:
            phase = "start" if kind == 1 else "end"
            return PartialSimulation(
                success=False,
                error=f"before event at t={horizon:.3f}s, {phase} of ({step.action} {' '.join(step.args)}) failed: {exc}",
                state=None,
                ongoing_steps=[],
                started_steps=started_steps,
                completed_steps=completed_steps,
            )

    return PartialSimulation(
        success=True,
        error="",
        state=state,
        ongoing_steps=sorted(ongoing_steps, key=lambda s: (s.t_start, s.action, tuple(s.args))),
        started_steps=sorted(started_steps, key=lambda s: (s.t_start, s.action, tuple(s.args))),
        completed_steps=sorted(completed_steps, key=lambda s: (s.t_start, s.action, tuple(s.args))),
    )


def _is_subsequence(subseq: list[str], seq: list[str]) -> bool:
    if not subseq:
        return True
    idx = 0
    for item in seq:
        if item == subseq[idx]:
            idx += 1
            if idx == len(subseq):
                return True
    return False


def _remaining_stack(stack_order: list[str], current_stack: list[str]) -> list[str]:
    idx = 0
    for item in current_stack:
        if idx < len(stack_order) and item == stack_order[idx]:
            idx += 1
    return list(stack_order[idx:])


def _effective_item_state(item_state: str) -> str:
    """State to assume when planning the future suffix after committed ongoing work."""
    reverse_progress = {value: RESULT[action] for action, value in IN_PROGRESS.items()}
    return reverse_progress.get(item_state, item_state)


def _remaining_chain_for_prompt(item_info: dict, current_state: str, required_state: str) -> list[str]:
    current = _effective_item_state(current_state)
    if current == required_state:
        return []

    if required_state == "cut":
        return ["cut"] if current == "raw" else []
    if required_state == "fried":
        if item_info.get("fry_requires_cut"):
            if current == "raw":
                return ["cut", "fry"]
            if current == "cut":
                return ["fry"]
            return []
        return ["fry"] if current == "raw" else []
    if required_state == "grilled":
        if item_info.get("grill_requires_marinated"):
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


def _item_has_committed_progress(task_dict: dict, current_state: WorldState, item: str) -> bool:
    initial = task_dict.get("items", {}).get(item, {}).get("state")
    current = current_state.item_state.get(item)
    return current is not None and initial is not None and current != initial


def _remaining_candidate_goals(task_dict: dict, current_state: WorldState) -> list[dict]:
    remaining = []
    for candidate in task_dict.get("candidate_goals", []):
        item = candidate["item"]
        state = candidate["state"]
        effective = _effective_item_state(current_state.item_state.get(item, ""))
        if effective == state:
            continue
        if _item_has_committed_progress(task_dict, current_state, item):
            continue
        remaining.append(copy.deepcopy(candidate))
    return remaining


def _remaining_inventory_limits(task_dict: dict, current_state: WorldState) -> dict[str, int]:
    limits = copy.deepcopy(task_dict.get("inventory_limits", {}))
    for candidate in task_dict.get("candidate_goals", []):
        item = candidate["item"]
        if not _item_has_committed_progress(task_dict, current_state, item):
            continue
        for resource, amount in candidate.get("cost", {}).items():
            limits[resource] = max(0, int(limits.get(resource, 0)) - int(amount))
    return limits


def _snapshot_for_replan(task_dict: dict, state: WorldState, now: float) -> dict:
    items = copy.deepcopy(task_dict["items"])
    for item, item_state in state.item_state.items():
        if item in items:
            items[item]["state"] = item_state

    deliveries = []
    for delivery in task_dict.get("deliveries", []):
        remaining_required = {
            item: expected
            for item, expected in delivery.get("required_states", {}).items()
            if _effective_item_state(state.item_state.get(item, "")) != expected
        }
        remaining_stack = _remaining_stack(delivery.get("stack_order", []), state.stack)
        if remaining_required or remaining_stack:
            deliveries.append({
                "id": delivery["id"],
                "required_states": remaining_required,
                "stack_order": remaining_stack,
                "deadline": delivery.get("deadline"),
                "reward": delivery.get("reward"),
            })

    snapshot = {
        "items": items,
        "deliveries": deliveries,
        "action_durations": copy.deepcopy(task_dict["action_durations"]),
        "stations": copy.deepcopy(task_dict["stations"]),
        "temporal_constraints": copy.deepcopy(task_dict.get("temporal_constraints", [])),
        "robots": list(task_dict.get("robots", [])),
    }
    remaining_candidates = _remaining_candidate_goals(task_dict, state)
    committed_reward = 0
    committed_candidate_ids = []
    for candidate in task_dict.get("candidate_goals", []):
        effective = _effective_item_state(state.item_state.get(candidate["item"], ""))
        if effective == candidate["state"]:
            committed_reward += int(candidate.get("reward", 0))
            committed_candidate_ids.append(candidate.get("id"))
    if remaining_candidates:
        snapshot["candidate_goals"] = remaining_candidates
        snapshot["deadline"] = task_dict.get("deadline")
        snapshot["inventory_limits"] = _remaining_inventory_limits(task_dict, state)
    if task_dict.get("candidate_goals"):
        snapshot["committed_reward"] = committed_reward
        snapshot["committed_candidate_ids"] = committed_candidate_ids
    snapshot["difficulty"] = task_dict.get("difficulty", "")
    snapshot["now"] = now
    return snapshot


def _remaining_seconds(step: PlanStep, now: float) -> int:
    return max(1, int(round(max(0.0, step.t_end - now))))


def _continuation_oracle(
    snapshot: dict,
    ongoing_steps: list[PlanStep],
    now: float,
    solver_timeout: float = 30.0,
) -> dict:
    """Optimal continuation from the current online state.

    The returned makespan is absolute episode time: now + optimal suffix length.
    """
    try:
        from src.method.cpsat_scheduler import ScheduleAction, ScheduleDependency, parse_schedule_spec, solve_schedule
    except Exception as exc:
        return {"error": f"oracle import failed: {exc}"}

    task_dict = _build_task_dict(snapshot, str(snapshot.get("id", "continuation_oracle")))
    committed_reward = int(snapshot.get("committed_reward", 0))
    if snapshot.get("committed_reward") is not None and not snapshot.get("candidate_goals") and not snapshot.get("deliveries"):
        return {
            "continuation_oracle_makespan": float(now),
            "continuation_oracle_suffix_makespan": 0.0,
            "continuation_oracle_reward": committed_reward,
            "continuation_oracle_status": "ALREADY_COMPLETE",
        }
    remaining_deadline = None
    if task_dict.get("deadline") is not None:
        remaining_deadline = max(0.0, float(task_dict["deadline"]) - float(now))

    def augment(
        actions,
        deps,
    ) -> tuple[list[ScheduleAction], list[ScheduleDependency]]:
        augmented_actions = list(actions)
        augmented_deps = list(deps)
        seen = {action.id for action in augmented_actions}
        for step in ongoing_steps:
            item = step.args[-1] if step.args else ""
            if not item:
                continue
            blocker_id = f"ongoing_{step.action}_{item}"
            if blocker_id in seen:
                continue
            robot = step.args[0] if len(step.args) == 2 else None
            augmented_actions.append(ScheduleAction(
                id=blocker_id,
                action=step.action,
                item=item,
                duration=_remaining_seconds(step, now),
                station=ACTION_STATION.get(step.action),
                eligible_robots=((robot,) if robot else ()),
                hidden=True,
                fixed_start=0,
            ))
            seen.add(blocker_id)
            for action in actions:
                if action.item == item:
                    augmented_deps.append(ScheduleDependency(before=blocker_id, after=action.id))
        return augmented_actions, augmented_deps

    try:
        spec = oracle_schedule_spec(task_dict)
        if task_dict.get("objective_type") == "maximize_reward_under_deadline":
            opt = _validate_optimization_spec(spec, task_dict)
            candidates = opt["candidate_goals"]
            inventory_limits = opt["inventory_limits"]
            deadline = remaining_deadline if remaining_deadline is not None else float(opt["deadline"])
            best = None
            import itertools
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
                    actions, deps = augment(actions, deps)
                    sr = solve_schedule(
                        actions,
                        deps,
                        station_capacities=task_dict.get("stations", {}),
                        robots=task_dict.get("robots"),
                        timeout=solver_timeout,
                    )
                    if sr.makespan is None or not sr.optimal or sr.makespan > deadline + 1e-6:
                        continue
                    reward = sum(int(candidate["reward"]) for candidate in subset)
                    selected_ids = tuple(candidate["id"] for candidate in subset)
                    key = (reward, len(subset), -float(sr.makespan), selected_ids)
                    if best is None or key > best[0]:
                        best = (key, reward, sr)
            if best is None:
                return {
                    "continuation_oracle_makespan": float(now),
                    "continuation_oracle_suffix_makespan": 0.0,
                    "continuation_oracle_reward": committed_reward,
                    "continuation_oracle_status": "NO_FEASIBLE_SUBSET",
                }
            _, reward, sched = best
            reward += committed_reward
        else:
            actions, deps = parse_schedule_spec(
                spec,
                valid_items=set(task_dict["items"]),
                station_capacities=task_dict.get("stations", {}),
                robots=task_dict.get("robots"),
            )
            actions, deps = augment(actions, deps)
            sched = solve_schedule(
                actions,
                deps,
                station_capacities=task_dict.get("stations", {}),
                robots=task_dict.get("robots"),
                timeout=solver_timeout,
            )
            reward = None
        if sched is None or sched.makespan is None or not sched.plan:
            return {"error": getattr(sched, "error", "oracle solve failed")}
        return {
            "continuation_oracle_makespan": round(float(now) + float(sched.makespan), 4),
            "continuation_oracle_suffix_makespan": round(float(sched.makespan), 4),
            "continuation_oracle_reward": reward,
            "continuation_oracle_status": getattr(sched, "status", None),
        }
    except Exception as exc:
        return {"error": str(exc)}


def _apply_event(task_dict: dict, event: dict) -> dict:
    updated = copy.deepcopy(task_dict)
    delta = event.get("delta", {})
    updated["items"].update(copy.deepcopy(delta.get("add_items", {})))
    if "replace_deliveries" in delta:
        updated["deliveries"] = copy.deepcopy(delta.get("replace_deliveries", []))
    else:
        updated.setdefault("deliveries", [])
        updated["deliveries"].extend(copy.deepcopy(delta.get("add_deliveries", [])))
    if delta.get("add_temporal_constraints"):
        updated.setdefault("temporal_constraints", [])
        updated["temporal_constraints"].extend(copy.deepcopy(delta["add_temporal_constraints"]))
    if delta.get("add_candidate_goals"):
        updated.setdefault("candidate_goals", [])
        updated["candidate_goals"].extend(copy.deepcopy(delta["add_candidate_goals"]))
    if "set_deadline" in delta and delta.get("set_deadline") is not None:
        updated["deadline"] = delta["set_deadline"]
    return updated


def _deadline_lines(task_dict: dict) -> str:
    lines = []
    if task_dict.get("deadline") is not None:
        lines.append(f"- Episode deadline: {float(task_dict['deadline']):.3f}s")
    for delivery in task_dict.get("deliveries", []):
        if delivery.get("deadline") is not None:
            lines.append(f"- Delivery {delivery['id']}: deadline {float(delivery['deadline']):.3f}s")
    return "\n".join(lines) if lines else "- None"


def _ongoing_lines(ongoing_steps: list[PlanStep], now: float) -> str:
    if not ongoing_steps:
        return "- None"
    lines = []
    for step in ongoing_steps:
        remaining = max(0.0, step.t_end - now)
        item = step.args[-1] if step.args else "?"
        station = ACTION_STATION.get(step.action)
        robot = step.args[0] if len(step.args) == 2 else None
        note = f"- {item} is currently {IN_PROGRESS.get(step.action, step.action)}"
        note += f"; committed action ends in {remaining:.3f}s"
        if station:
            note += f"; station={station}"
        if robot:
            note += f"; robot={robot}"
        lines.append(note)
    return "\n".join(lines)


def _completed_lines(completed_steps: list[PlanStep]) -> str:
    if not completed_steps:
        return "- None"
    lines = []
    for step in completed_steps:
        item = step.args[-1] if step.args else "?"
        robot = step.args[0] if len(step.args) == 2 else None
        prefix = f"- ({step.action}"
        if robot:
            prefix += f" {robot}"
        prefix += f" {item}) finished by t={step.t_end:.3f}s"
        lines.append(prefix)
    return "\n".join(lines)


def _remaining_work_lines(snapshot: dict) -> str:
    lines = []
    deliveries = snapshot.get("deliveries", [])
    if deliveries:
        for delivery in deliveries:
            delivery_id = delivery.get("id", "delivery")
            required = delivery.get("required_states", {})
            stack_order = delivery.get("stack_order", [])
            if required:
                for item, state in required.items():
                    lines.append(f"- Delivery {delivery_id}: {item} still needs state `{state}`")
            if stack_order:
                stack_text = " -> ".join(stack_order)
                lines.append(f"- Delivery {delivery_id}: remaining stack order is {stack_text}")
    candidate_goals = snapshot.get("candidate_goals", [])
    if candidate_goals:
        lines.append("- Optimization candidates still available:")
        for candidate in candidate_goals:
            lines.append(
                f"  {candidate['item']} as `{candidate['state']}` "
                f"(reward={candidate.get('reward')})"
            )
    return "\n".join(lines) if lines else "- None"


def _remaining_action_lines(snapshot: dict) -> str:
    items = snapshot.get("items", {})
    item_reqs: dict[str, set[str]] = {}
    item_stack_needed: dict[str, bool] = {}

    for delivery in snapshot.get("deliveries", []):
        for item, state in delivery.get("required_states", {}).items():
            item_reqs.setdefault(item, set()).add(state)
        for item in delivery.get("stack_order", []):
            item_stack_needed[item] = True

    for candidate in snapshot.get("candidate_goals", []):
        item_reqs.setdefault(candidate["item"], set()).add(candidate["state"])

    lines = []
    for item in sorted(set(item_reqs) | set(item_stack_needed)):
        info = items.get(item, {})
        current_state = info.get("state", "raw")
        chains = []
        for required_state in sorted(item_reqs.get(item, set())):
            chain = _remaining_chain_for_prompt(info, current_state, required_state)
            if chain:
                chains.append(" -> ".join(chain))
        chain_text = "; ".join(dict.fromkeys(chains))
        if item_stack_needed.get(item):
            chain_text = f"{chain_text} -> stack" if chain_text else "stack only"
        if not chain_text:
            effective = _effective_item_state(current_state)
            chain_text = f"already prepared as `{effective}`; no more prep actions"
        lines.append(f"- {item}: {chain_text}")
    return "\n".join(lines) if lines else "- None"


def _priority_lines(snapshot: dict) -> str:
    deliveries = snapshot.get("deliveries", [])
    rush_lines = []
    for delivery in deliveries:
        deadline = delivery.get("deadline")
        delivery_id = str(delivery.get("id", ""))
        is_rush = "rush" in delivery_id.lower() or deadline is not None
        if not is_rush:
            continue
        items = list(dict.fromkeys(
            list(delivery.get("required_states", {}).keys()) + list(delivery.get("stack_order", []))
        ))
        item_text = ", ".join(items) if items else "no remaining items listed"
        if deadline is not None:
            rush_lines.append(
                f"- Rush-critical delivery `{delivery_id}` should be prioritized and completed by "
                f"{float(deadline):.3f}s; prioritize actions for: {item_text}"
            )
        else:
            rush_lines.append(
                f"- Rush-critical delivery `{delivery_id}` should be prioritized before non-rush work; "
                f"prioritize actions for: {item_text}"
            )
    if rush_lines:
        rush_lines.append("- If resources conflict, delay non-rush actions rather than delaying these rush-critical items.")
        return "\n".join(rush_lines)
    return "- None"


def _prompt_nl(
    snapshot: dict,
    episode_id: str,
    completed_steps: list[PlanStep],
    ongoing_steps: list[PlanStep],
    now: float,
    implicit: bool,
) -> str:
    task_dict = _build_task_dict(snapshot, episode_id)
    nl = task_to_nl(task_dict, implicit=implicit)
    return USER_TEMPLATE.format(
        now=now,
        nl=nl,
        item_names="\n".join(f"- {name}" for name in snapshot["items"]),
        completed=_completed_lines(completed_steps),
        ongoing=_ongoing_lines(ongoing_steps, now),
        remaining=_remaining_work_lines(snapshot),
        remaining_actions=_remaining_action_lines(snapshot),
        priority=_priority_lines(snapshot),
        deadlines=_deadline_lines(snapshot),
    )


def _evaluate_deliveries(
    final_state: WorldState,
    deliveries: list[dict],
    required_finish_times: dict[tuple[str, str], float],
    stacked_events: list[tuple[str, float]],
) -> tuple[bool, str, dict[str, float]]:
    delivery_completion: dict[str, float] = {}
    for delivery in deliveries:
        finish_times: list[float] = []
        for item, expected in delivery.get("required_states", {}).items():
            actual = final_state.item_state.get(item)
            if actual != expected:
                return False, f"delivery {delivery['id']} missing state {item}={expected} (got {actual})", {}
            key = (item, expected)
            finish_times.append(required_finish_times.get(key, 0.0))

        if delivery.get("stack_order"):
            stack_order = delivery["stack_order"]
            seen_items = [item for item, _ in stacked_events]
            if not _is_subsequence(stack_order, seen_items):
                return False, f"delivery {delivery['id']} stack order not completed", {}
            pos = 0
            last_time = 0.0
            for item, t in stacked_events:
                if item == stack_order[pos]:
                    last_time = t
                    pos += 1
                    if pos == len(stack_order):
                        finish_times.append(last_time)
                        break

        completion_time = max(finish_times) if finish_times else 0.0
        if delivery.get("deadline") is not None and completion_time > float(delivery["deadline"]) + 1e-6:
            return False, (
                f"delivery {delivery['id']} completes at {completion_time:.3f}s, "
                f"exceeding deadline {float(delivery['deadline']):.3f}s"
            ), {}
        delivery_completion[delivery["id"]] = completion_time
    return True, "", delivery_completion


def _evaluate_optimization(
    final_state: WorldState,
    task_dict: dict,
    makespan: float,
) -> tuple[bool, str, int]:
    deadline = task_dict.get("deadline")
    if deadline is not None and makespan > float(deadline) + 1e-6:
        return False, f"plan finishes at {makespan:.3f}s, exceeding deadline {float(deadline):.3f}s", 0

    selected_reward = 0
    usage: dict[str, int] = {}
    for candidate in task_dict.get("candidate_goals", []):
        if final_state.item_state.get(candidate["item"]) != candidate["state"]:
            continue
        selected_reward += int(candidate.get("reward", 0))
        for resource, amount in candidate.get("cost", {}).items():
            usage[resource] = usage.get(resource, 0) + int(amount)

    for resource, limit in task_dict.get("inventory_limits", {}).items():
        if usage.get(resource, 0) > int(limit):
            return False, (
                f"inventory limit exceeded for {resource}: used {usage[resource]}, limit {int(limit)}"
            ), 0
    return True, "", selected_reward


def evaluate_episode_plan(steps: list[PlanStep], task_dict: dict, oracle: dict | None = None) -> EpisodeEval:
    state = _initial_world(task_dict)
    fry_requires_cut = {
        name for name, info in task_dict["items"].items()
        if info.get("fry_requires_cut", False)
    }
    grill_requires_marinated = {
        name for name, info in task_dict["items"].items()
        if info.get("grill_requires_marinated", False)
    }

    queue: list[tuple[float, int, int]] = []
    for i, step in enumerate(steps):
        queue.append((step.t_start, 1, i))
        queue.append((step.t_end, 0, i))
    queue.sort(key=lambda x: (x[0], x[1]))

    required_finish_times: dict[tuple[str, str], float] = {}
    stacked_events: list[tuple[str, float]] = []
    makespan = 0.0

    for t, kind, idx in queue:
        step = steps[idx]
        makespan = max(makespan, t)
        try:
            if kind == 1:
                check_start(step.action, step.args, state, fry_requires_cut, grill_requires_marinated)
                apply_start(step.action, step.args, state)
            else:
                apply_end(step.action, step.args, state)
                item = step.args[-1] if step.args else None
                if item is not None and step.action != "stack":
                    terminal_state = state.item_state.get(item)
                    if terminal_state in TERMINAL:
                        required_finish_times.setdefault((item, terminal_state), t)
                if step.action == "stack" and item is not None:
                    stacked_events.append((item, t))
        except PreconditionError as exc:
            phase = "start" if kind == 1 else "end"
            return EpisodeEval(False, f"{phase} failed for ({step.action} {' '.join(step.args)}): {exc}", makespan)

    ok, err, delivery_completion = _evaluate_deliveries(
        state,
        task_dict.get("deliveries", []),
        required_finish_times,
        stacked_events,
    )
    if not ok:
        return EpisodeEval(False, err, makespan)

    selected_reward = None
    reward_ratio = None
    oracle_reward = None
    if task_dict.get("candidate_goals"):
        ok, err, selected_reward = _evaluate_optimization(state, task_dict, makespan)
        if not ok:
            return EpisodeEval(False, err, makespan)
        oracle_reward = None
        if oracle:
            oracle_reward = oracle.get("continuation_oracle_reward", oracle.get("optimal_reward"))
        if oracle_reward is not None:
            reward_ratio = round(float(selected_reward) / float(oracle_reward), 4) if float(oracle_reward) > 0 else 1.0
            if selected_reward < int(oracle_reward):
                return EpisodeEval(
                    False,
                    f"selected reward {selected_reward} below continuation oracle reward {int(oracle_reward)}",
                    makespan,
                    selected_reward=selected_reward,
                    reward_ratio=reward_ratio,
                    continuation_oracle_reward=int(oracle_reward),
                )

    makespan_ratio = None
    oracle_makespan = None
    if oracle:
        oracle_makespan = oracle.get("continuation_oracle_makespan", oracle.get("oracle_final_makespan"))
    if oracle_makespan:
        oracle_makespan = float(oracle_makespan)
        if oracle_makespan > 0:
            makespan_ratio = round(float(makespan) / oracle_makespan, 4)

    return EpisodeEval(
        success=True,
        error="",
        makespan=makespan,
        selected_reward=selected_reward,
        reward_ratio=reward_ratio,
        makespan_ratio=makespan_ratio,
        delivery_completion_times=delivery_completion,
        continuation_oracle_makespan=float(oracle_makespan) if oracle_makespan else None,
        continuation_oracle_reward=int(oracle_reward) if oracle_reward is not None else None,
    )


def run(
    model_name: str,
    out_dir: str,
    task_dir: str,
    max_tasks: int | None,
    num_workers: int = 4,
    implicit: bool = False,
    include_tags: set[str] | None = None,
    exclude_tags: set[str] | None = None,
):
    from src.experiments.utils import build_llm_client

    out_path = Path(out_dir)
    out_path.mkdir(parents=True, exist_ok=True)

    episodes = [
        json.loads(path.read_text())
        for path in sorted(Path(task_dir).glob("*.json"))
    ]
    if include_tags or exclude_tags:
        episodes = [
            ep for ep in episodes
            if tag_filter_match(ep, include_tags or set(), exclude_tags or set())
        ]
    episodes = sort_online_episodes(episodes)
    if max_tasks:
        episodes = episodes[:max_tasks]

    llm = build_llm_client(
        model_name=model_name,
        temperature=0.0,
        max_tokens=3072,
        num_workers=num_workers,
    )

    jsonl_path = out_path / "full_results.jsonl"
    jsonl_path.unlink(missing_ok=True)
    results = []

    print(f"Stage 1/1  Online replanning ({len(episodes)} episodes) ...\n")
    progress = OnlineSubsetProgress(episodes)
    for episode in episodes:
        progress.start_episode(episode)
        working = copy.deepcopy(episode["initial_task"])
        working["difficulty"] = episode.get("difficulty", "")
        committed_steps: list[PlanStep] = []
        stage_records = []
        current_state = _initial_world(working)
        current_completed_steps: list[PlanStep] = []
        current_ongoing_steps: list[PlanStep] = []
        error_type = None
        error = ""
        success = False
        continuation_oracle: dict = {}

        event_times = [float(ev["trigger_time"]) for ev in episode.get("events", [])]
        for stage_idx in range(len(event_times) + 1):
            now = 0.0 if stage_idx == 0 else event_times[stage_idx - 1]
            snapshot = copy.deepcopy(working) if stage_idx == 0 else _snapshot_for_replan(
                working,
                current_state,
                now,
            )
            snapshot["difficulty"] = episode.get("difficulty", "")

            prompt = _prompt_nl(
                snapshot,
                episode["id"],
                current_completed_steps,
                current_ongoing_steps,
                now,
                implicit,
            )
            response = llm.chat([
                {"role": "system", "content": SYSTEM_PROMPT},
                {"role": "user", "content": prompt},
            ])
            plan_text = response if isinstance(response, str) else (response.content if response is not None else "")
            plan_text = (plan_text or "").strip()
            if "```" in plan_text:
                plan_text = plan_text.replace("```plaintext", "").replace("```", "").strip()
            rel_steps = parse_optic_plan(plan_text)
            if not rel_steps:
                error_type = "parse_error"
                error = f"stage {stage_idx}: LLM output contained no parseable plan lines"
                stage_records.append({
                    "stage": stage_idx,
                    "time": now,
                    "prompt": prompt,
                    "response": plan_text,
                    "parsed_steps": 0,
                })
                break

            # Strict online mode: the model is responsible for accounting for
            # ongoing actions and occupied resources in its replan suffix.
            shift = 0.0
            abs_steps = _shift_relative_steps(rel_steps, now)
            combined_steps = sorted(committed_steps + abs_steps, key=lambda s: (s.t_start, s.action, tuple(s.args)))
            stage_records.append({
                "stage": stage_idx,
                "time": now,
                "prompt": prompt,
                "response": plan_text,
                "parsed_steps": len(rel_steps),
                "shift_seconds": shift,
            })

            if stage_idx < len(event_times):
                horizon = event_times[stage_idx]
                partial = _run_events_until(combined_steps, working, horizon)
                if not partial.success:
                    error_type = "eval_error"
                    error = partial.error
                    committed_steps = combined_steps
                    break
                committed_steps = partial.started_steps
                current_state = partial.state
                current_completed_steps = partial.completed_steps
                current_ongoing_steps = partial.ongoing_steps
                working = _apply_event(working, episode["events"][stage_idx])
                working["difficulty"] = episode.get("difficulty", "")
                oracle_snapshot = _snapshot_for_replan(working, current_state, horizon)
                oracle_snapshot["difficulty"] = episode.get("difficulty", "")
                continuation_oracle = _continuation_oracle(
                    oracle_snapshot,
                    current_ongoing_steps,
                    horizon,
                )
                stage_records[-1]["continuation_oracle"] = continuation_oracle
            else:
                committed_steps = combined_steps
                final_task = copy.deepcopy(working)
                eval_oracle = {**episode.get("oracle", {}), **continuation_oracle}
                evaluation = evaluate_episode_plan(committed_steps, final_task, eval_oracle)
                success = evaluation.success
                error = evaluation.error
                if not success:
                    error_type = "eval_error"
                else:
                    error_type = None
                break

        final_steps = committed_steps
        final_plan_text = _render_plan_text(final_steps)
        final_task = copy.deepcopy(working)
        eval_oracle = {**episode.get("oracle", {}), **continuation_oracle}
        evaluation = evaluate_episode_plan(final_steps, final_task, eval_oracle)
        success = evaluation.success if error_type != "parse_error" else False
        if error_type is None and not evaluation.success:
            error_type = "eval_error"
            error = evaluation.error
        elif error_type is None:
            error = ""

        result = {
            "id": episode["id"],
            "online_mode": "strict",
            "difficulty": episode.get("difficulty"),
            "source_split": episode.get("source_split"),
            "n_events": len(episode.get("events", [])),
            "stage_records": stage_records,
            "final_plan": final_plan_text,
            "success": success,
            "error_type": error_type,
            "error": error,
            "makespan": evaluation.makespan if success or final_steps else None,
            "makespan_ratio": evaluation.makespan_ratio if success else None,
            "oracle_final_makespan": episode.get("oracle", {}).get("oracle_final_makespan"),
            "continuation_oracle_makespan": evaluation.continuation_oracle_makespan,
            "selected_reward": evaluation.selected_reward,
            "reward_ratio": evaluation.reward_ratio,
            "optimal_reward": episode.get("oracle", {}).get("optimal_reward"),
            "continuation_oracle_reward": evaluation.continuation_oracle_reward,
            "delivery_completion_times": evaluation.delivery_completion_times,
        }
        progress.update()
        results.append(result)
        with jsonl_path.open("a", encoding="utf-8") as handle:
            handle.write(json.dumps(result, ensure_ascii=False) + "\n")
    progress.close()

    n_success = sum(1 for r in results if r["success"])
    makespans = [r["makespan"] for r in results if r["success"] and r["makespan"] is not None]
    ratios = [r["makespan_ratio"] for r in results if r["success"] and r.get("makespan_ratio") is not None]
    summary = {
        "model": model_name,
        "online_mode": "strict",
        "n_tasks": len(results),
        "n_success": n_success,
        "success_rate": round(n_success / len(results), 4) if results else 0.0,
        "avg_makespan": round(sum(makespans) / len(makespans), 4) if makespans else None,
        "avg_makespan_ratio": round(sum(ratios) / len(ratios), 4) if ratios else 0,
        "n_parse_error": sum(1 for r in results if r["error_type"] == "parse_error"),
        "n_eval_error": sum(1 for r in results if r["error_type"] == "eval_error"),
        "by_tag": summarize_by_tag(episodes, results),
    }
    (out_path / "summary.json").write_text(json.dumps(summary, indent=2))

    print(f"\n{'=' * 50}")
    print(f"Success rate: {n_success}/{len(results)} ({summary['success_rate']:.1%})")
    print(f"Avg makespan: {summary['avg_makespan']}")
    print(f"By tag:       {summary['by_tag']}")
    print(f"Results ->    {out_path}/")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--model", required=True, help="e.g. openai/gpt-5-mini")
    parser.add_argument("--out", default="results/robo_async_online/planner/{model}/{mode}")
    parser.add_argument("--tasks", default="data/robo_async_online/episodes")
    parser.add_argument("--max", type=int, default=None, help="limit number of tasks")
    parser.add_argument("--num-workers", type=int, default=4, help="parallel LLM workers")
    parser.add_argument("--implicit", action="store_true", help="hide dependency hints in NL")
    parser.add_argument("--include-tags", default="", help="comma-separated online tags to include")
    parser.add_argument("--exclude-tags", default="", help="comma-separated online tags to exclude")
    args = parser.parse_args()

    mode = "implicit" if args.implicit else "explicit"
    out_dir = args.out.format(model=args.model.replace("/", "_"), mode=mode)
    print(f"Model:       {args.model}")
    print(f"Mode:        {mode}")
    print(f"Tasks:       {args.tasks}")
    print(f"Out:         {out_dir}")
    print(f"LLM workers: {args.num_workers}")
    if args.include_tags:
        print(f"Include tags:{args.include_tags}")
    if args.exclude_tags:
        print(f"Exclude tags:{args.exclude_tags}")
    print()

    run(
        model_name=args.model,
        out_dir=out_dir,
        task_dir=args.tasks,
        max_tasks=args.max,
        num_workers=args.num_workers,
        implicit=args.implicit,
        include_tags=parse_tag_arg(args.include_tags),
        exclude_tags=parse_tag_arg(args.exclude_tags),
    )


if __name__ == "__main__":
    main()
