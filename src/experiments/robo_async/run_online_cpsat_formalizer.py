"""Minimal online CP-SAT formalizer runner for Robo-Async episodes."""
from __future__ import annotations

import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
import copy
import itertools
import json
import math
import sys
from pathlib import Path

from dotenv import load_dotenv

load_dotenv()


_ROOT = Path(__file__).resolve().parent.parent.parent.parent
if str(_ROOT) not in sys.path:
    sys.path.insert(0, str(_ROOT))

from src.envs.robo_async.engine import PlanStep, parse_optic_plan  # noqa: E402
from src.envs.robo_async.nl_generator import task_to_nl  # noqa: E402
from src.envs.robo_async.engine import ACTION_STATION
from src.experiments.robo_async.run_cpsat_formalizer import (  # noqa: E402
    _normalize_id,
    _resource_feasible,
    _schedule_spec_for_goal,
    _validate_optimization_spec,
    SYSTEM_PROMPT,
    USER_TEMPLATE,
    _parse_llm_json,
    oracle_schedule_spec,
)
from src.experiments.robo_async.run_online_planner import (  # noqa: E402
    _completed_lines,
    _effective_item_state,
    _build_task_dict,
    _deadline_lines,
    _ongoing_lines,
    _priority_lines,
    _remaining_action_lines,
    _remaining_work_lines,
    _render_plan_text,
    _run_events_until,
    _shift_relative_steps,
    _snapshot_for_replan,
    _apply_event,
    _initial_world,
    _continuation_oracle,
    evaluate_episode_plan,
)
from src.experiments.robo_async.tag_filter import (  # noqa: E402
    parse_tag_arg,
    summarize_by_tag,
    tag_filter_match,
)
from src.experiments.robo_async.online_progress import (  # noqa: E402
    sort_online_episodes,
)
from src.method.cpsat_scheduler import (  # noqa: E402
    ScheduleAction,
    ScheduleDependency,
    parse_schedule_spec,
    solve_schedule,
)


ONLINE_CONTEXT_TEMPLATE = """
## Online Execution Context
Current time: {now:.3f} seconds.

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

Important online instructions:
- Output only the remaining future work.
- Do not include actions that are already completed.
- Do not include actions that are currently in progress; they are already committed.
- Never invent replacement actions such as *_commit or *_committed for already-committed work.
- If an item already has the required prepared state, only emit any later remaining actions
  such as stack; do not re-emit its earlier preparation action.
- Every emitted action must use the full positive domain duration for that action.
- Never emit 0-duration actions or partial "remaining-time" stand-ins for committed actions.
- Ongoing actions may keep robots/stations busy briefly, so a conservative remaining
  schedule is better than reusing an occupied resource immediately.
- If rush-critical deliveries are listed, schedule the actions needed for those deliveries
  before non-rush work whenever possible, even if total makespan becomes slightly worse.
"""


def _build_user_prompt(nl: str, item_names: list[str]) -> str:
    return USER_TEMPLATE.format(
        nl=nl,
        item_names="\n".join(f"- {n}" for n in item_names),
    )


def _is_optimization_spec(spec: dict, task_dict: dict) -> bool:
    objective = spec.get("objective")
    if isinstance(objective, dict):
        objective = objective.get("type", "")
    objective = str(objective or "").strip().lower()
    return (
        str(spec.get("mode", "")).strip().lower() == "optimize"
        or objective == "maximize_reward_under_deadline"
        or (
            task_dict.get("objective_type") == "maximize_reward_under_deadline"
            and "candidate_goals" in spec
        )
    )


def _stage_nl(
    snapshot: dict,
    episode_id: str,
    completed_steps: list[PlanStep],
    ongoing_steps: list[PlanStep],
    now: float,
    implicit: bool,
) -> tuple[dict, str]:
    task_dict = _build_task_dict(snapshot, episode_id)
    nl = task_to_nl(task_dict, implicit=implicit)
    nl += ONLINE_CONTEXT_TEMPLATE.format(
        now=now,
        completed=_completed_lines(completed_steps),
        ongoing=_ongoing_lines(ongoing_steps, now),
        remaining=_remaining_work_lines(snapshot),
        remaining_actions=_remaining_action_lines(snapshot),
        priority=_priority_lines(snapshot),
        deadlines=_deadline_lines(snapshot),
    )
    if ongoing_steps:
        nl += "\nCommitted release-time hints:\n"
        for step in ongoing_steps:
            item = step.args[-1] if step.args else ""
            if not item:
                continue
            remaining = max(0.0, step.t_end - now)
            state = snapshot.get("items", {}).get(item, {}).get("state", "")
            effective = _effective_item_state(state)
            nl += (
                f"- {item} is already in progress ({state}) and will effectively become "
                f"`{effective}` after about {remaining:.3f}s. Do not restart that action.\n"
            )
    return task_dict, nl


def _remaining_seconds(step: PlanStep, now: float) -> int:
    return max(1, int(math.ceil(max(0.0, step.t_end - now - 1e-9))))


def _augment_with_ongoing_constraints(
    actions: list[ScheduleAction],
    dependencies: list[ScheduleDependency],
    ongoing_steps: list[PlanStep],
    now: float,
) -> tuple[list[ScheduleAction], list[ScheduleDependency]]:
    if not ongoing_steps:
        return actions, dependencies

    augmented_actions = list(actions)
    augmented_deps = list(dependencies)
    seen_ids = {a.id for a in augmented_actions}

    for step in ongoing_steps:
        item = step.args[-1] if step.args else ""
        if not item:
            continue
        robot = step.args[0] if len(step.args) == 2 else None
        blocker_id = f"ongoing_{step.action}_{item}"
        if blocker_id in seen_ids:
            continue
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
        seen_ids.add(blocker_id)

        for action in actions:
            if action.item == item:
                augmented_deps.append(ScheduleDependency(before=blocker_id, after=action.id))

    return augmented_actions, augmented_deps


def _build_deadline_objectives(
    snapshot: dict,
    actions: list[ScheduleAction],
    now: float,
) -> list[dict]:
    visible_ids = {a.id for a in actions if not a.hidden}
    by_item: dict[str, list[str]] = {}
    for action in actions:
        if action.hidden:
            continue
        by_item.setdefault(action.item, []).append(action.id)

    objectives = []
    for delivery in snapshot.get("deliveries", []):
        deadline = delivery.get("deadline")
        if deadline is None:
            continue

        relevant_ids: list[str] = []
        seen: set[str] = set()
        for item in delivery.get("required_states", {}):
            for action_id in by_item.get(item, []):
                if action_id not in seen:
                    relevant_ids.append(action_id)
                    seen.add(action_id)
        for item in delivery.get("stack_order", []):
            stack_id = _normalize_id("stack", item)
            if stack_id in visible_ids and stack_id not in seen:
                relevant_ids.append(stack_id)
                seen.add(stack_id)
            for action_id in by_item.get(item, []):
                if action_id not in seen:
                    relevant_ids.append(action_id)
                    seen.add(action_id)

        if not relevant_ids:
            continue

        delivery_id = str(delivery.get("id", "delivery"))
        objectives.append({
            "name": delivery_id,
            "deadline": max(0, int(round(float(deadline) - float(now)))),
            "action_ids": relevant_ids,
            "weight": 100 if "rush" in delivery_id.lower() else 10,
        })

    return objectives


def _solve_online_optimization_spec(
    spec: dict,
    task_dict: dict,
    ongoing_steps: list[PlanStep],
    now: float,
    *,
    solver_timeout: float,
) -> tuple[dict, object]:
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
            actions, deps = _augment_with_ongoing_constraints(actions, deps, ongoing_steps, now)
            deadline_objectives = _build_deadline_objectives(task_dict, actions, now)
            sr = solve_schedule(
                actions,
                deps,
                station_capacities=task_dict.get("stations", {}),
                robots=task_dict.get("robots"),
                timeout=solver_timeout,
                deadline_objectives=deadline_objectives,
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


def _run_episode(
    episode: dict,
    llm,
    *,
    solver_timeout: float,
    implicit: bool,
    oracle_spec: bool,
    max_llm_attempts: int,
) -> dict:
    difficulty = episode.get("difficulty", "online")
    working = copy.deepcopy(episode["initial_task"])
    working["difficulty"] = difficulty
    committed_steps: list[PlanStep] = []
    stage_records = []
    current_state = _initial_world(working)
    current_completed_steps: list[PlanStep] = []
    current_ongoing_steps: list[PlanStep] = []
    error_type = None
    error = ""
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
        stage_task, nl = _stage_nl(
            snapshot,
            episode["id"],
            current_completed_steps,
            current_ongoing_steps,
            now,
            implicit,
        )

        if oracle_spec:
            spec = oracle_schedule_spec(stage_task)
            raw_response = None
        else:
            raw_response = None
            spec = None
            base_prompt = _build_user_prompt(nl, list(stage_task["items"].keys()))
            for attempt in range(max(1, int(max_llm_attempts))):
                response = llm.chat([
                    {"role": "system", "content": SYSTEM_PROMPT},
                    {"role": "user", "content": base_prompt},
                ])
                raw_response = response if isinstance(response, str) else response.content
                spec = _parse_llm_json(raw_response or "")
                if spec is not None:
                    break

        if spec is None:
            error_type = "llm_error"
            error = f"stage {stage_idx}: LLM failed to return valid scheduling JSON"
            stage_records.append({
                "stage": stage_idx,
                "time": now,
                "nl": nl,
                "llm_response": raw_response,
                "error_type": error_type,
                "error": error,
            })
            break

        try:
            if _is_optimization_spec(spec, stage_task):
                normalized_spec, sched = _solve_online_optimization_spec(
                    spec,
                    stage_task,
                    current_ongoing_steps,
                    now,
                    solver_timeout=solver_timeout,
                )
            else:
                actions, deps = parse_schedule_spec(
                    spec,
                    valid_items=set(stage_task["items"].keys()),
                    station_capacities=stage_task.get("stations", {}),
                    robots=stage_task.get("robots"),
                )
                actions, deps = _augment_with_ongoing_constraints(
                    actions,
                    deps,
                    current_ongoing_steps,
                    now,
                )
                deadline_objectives = _build_deadline_objectives(snapshot, actions, now)
                sched = solve_schedule(
                    actions,
                    deps,
                    station_capacities=stage_task.get("stations", {}),
                    robots=stage_task.get("robots"),
                    timeout=solver_timeout,
                    deadline_objectives=deadline_objectives,
                )
                normalized_spec = {
                    "actions": [a.__dict__ for a in actions],
                    "dependencies": [
                        {
                            "before": dep.before,
                            "after": dep.after,
                            **({"min_lag": dep.min_lag} if dep.min_lag else {}),
                        }
                        for dep in deps
                    ],
                    "deadline_objectives": deadline_objectives,
                }
        except Exception as exc:
            error_type = "spec_error"
            error = f"stage {stage_idx}: {exc}"
            stage_records.append({
                "stage": stage_idx,
                "time": now,
                "nl": nl,
                "llm_response": raw_response,
                "schedule_spec": spec,
                "error_type": error_type,
                "error": error,
            })
            break

        if sched is None or (sched.error and not sched.plan):
            error_type = "solver_error"
            error = f"stage {stage_idx}: {sched.error if sched else 'solver returned None'}"
            stage_records.append({
                "stage": stage_idx,
                "time": now,
                "nl": nl,
                "llm_response": raw_response,
                "schedule_spec": normalized_spec,
                "error_type": error_type,
                "error": error,
            })
            break

        rel_plan_text = sched.to_plan_text()
        rel_steps = parse_optic_plan(rel_plan_text)
        if not rel_steps:
            error_type = "parse_error"
            error = f"stage {stage_idx}: solver returned no parseable suffix plan"
            stage_records.append({
                "stage": stage_idx,
                "time": now,
                "nl": nl,
                "llm_response": raw_response,
                "schedule_spec": normalized_spec,
                "solver_plan": rel_plan_text,
                "error_type": error_type,
                "error": error,
            })
            break

        shift = 0.0
        abs_steps = _shift_relative_steps(rel_steps, now)
        combined_steps = sorted(
            committed_steps + abs_steps,
            key=lambda s: (s.t_start, s.action, tuple(s.args)),
        )
        stage_records.append({
            "stage": stage_idx,
            "time": now,
            "nl": nl,
            "llm_response": raw_response,
            "schedule_spec": normalized_spec,
            "solver_status": getattr(sched, "status", None),
            "solver_optimal": getattr(sched, "optimal", False),
            "solver_plan": rel_plan_text,
            "planned_steps": len(rel_steps),
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
            working["difficulty"] = difficulty
            oracle_snapshot = _snapshot_for_replan(working, current_state, horizon)
            oracle_snapshot["difficulty"] = difficulty
            continuation_oracle = _continuation_oracle(
                oracle_snapshot,
                current_ongoing_steps,
                horizon,
                solver_timeout=solver_timeout,
            )
            stage_records[-1]["continuation_oracle"] = continuation_oracle
        else:
            committed_steps = combined_steps
            break

    final_steps = committed_steps
    final_plan_text = _render_plan_text(final_steps)
    final_task = copy.deepcopy(working)
    eval_oracle = {**episode.get("oracle", {}), **continuation_oracle}
    evaluation = evaluate_episode_plan(final_steps, final_task, eval_oracle)
    success = evaluation.success and error_type not in {"llm_error", "spec_error", "solver_error", "parse_error"}
    if error_type is None and not evaluation.success:
        error_type = "eval_error"
        error = evaluation.error
    elif error_type is None:
        error = ""

    return {
        "id": episode["id"],
        "online_mode": "strict",
        "difficulty": episode.get("difficulty"),
        "source_split": episode.get("source_split"),
        "n_events": len(episode.get("events", [])),
        "oracle_spec": oracle_spec,
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


def run(
    model_name: str,
    out_dir: str,
    task_dir: str,
    solver_timeout: float,
    max_tasks: int | None,
    num_workers: int = 4,
    implicit: bool = False,
    oracle_spec: bool = False,
    max_llm_attempts: int = 1,
    include_tags: set[str] | None = None,
    exclude_tags: set[str] | None = None,
):
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

    llm = None
    if not oracle_spec:
        from src.experiments.utils import build_llm_client

        llm = build_llm_client(
            model_name=model_name,
            temperature=0.0,
            max_tokens=4096,
            num_workers=num_workers,
        )

    jsonl_path = out_path / "full_results.jsonl"
    jsonl_path.unlink(missing_ok=True)
    results: list[dict | None] = [None] * len(episodes)

    print(
        f"Stage 1/1  Online CP-SAT formalization "
        f"({len(episodes)} episodes, {num_workers} workers) ...\n"
    )
    with ThreadPoolExecutor(max_workers=max(1, int(num_workers))) as executor:
        future_to_index = {
            executor.submit(
                _run_episode,
                episode,
                llm,
                solver_timeout=solver_timeout,
                implicit=implicit,
                oracle_spec=oracle_spec,
                max_llm_attempts=max_llm_attempts,
            ): i
            for i, episode in enumerate(episodes)
        }
        completed = 0
        for future in as_completed(future_to_index):
            idx = future_to_index[future]
            episode = episodes[idx]
            try:
                result = future.result()
            except Exception as exc:
                result = {
                    "id": episode["id"],
                    "online_mode": "strict",
                    "difficulty": episode.get("difficulty"),
                    "source_split": episode.get("source_split"),
                    "n_events": len(episode.get("events", [])),
                    "oracle_spec": oracle_spec,
                    "stage_records": [],
                    "final_plan": "",
                    "success": False,
                    "error_type": "runner_error",
                    "error": str(exc),
                    "makespan": None,
                    "makespan_ratio": None,
                    "oracle_final_makespan": episode.get("oracle", {}).get("oracle_final_makespan"),
                    "continuation_oracle_makespan": None,
                    "selected_reward": None,
                    "reward_ratio": None,
                    "optimal_reward": episode.get("oracle", {}).get("optimal_reward"),
                    "continuation_oracle_reward": None,
                    "delivery_completion_times": None,
                }
            results[idx] = result
            completed += 1
            status = "ok" if result.get("success") else result.get("error_type")
            print(f"  [{completed:3d}/{len(episodes):3d}] {episode['id']} ... {status}", flush=True)

    results = [r for r in results if r is not None]
    with jsonl_path.open("w", encoding="utf-8") as handle:
        for result in results:
            handle.write(json.dumps(result, ensure_ascii=False) + "\n")

    n_success = sum(1 for r in results if r["success"])
    makespans = [r["makespan"] for r in results if r["success"] and r["makespan"] is not None]
    ratios = [r["makespan_ratio"] for r in results if r["success"] and r.get("makespan_ratio") is not None]
    summary = {
        "model": model_name,
        "backend": "cp-sat",
        "online_mode": "strict",
        "oracle_spec": oracle_spec,
        "n_tasks": len(results),
        "n_success": n_success,
        "success_rate": round(n_success / len(results), 4) if results else 0.0,
        "avg_makespan": round(sum(makespans) / len(makespans), 4) if makespans else None,
        "avg_makespan_ratio": round(sum(ratios) / len(ratios), 4) if ratios else 0,
        "n_llm_error": sum(1 for r in results if r["error_type"] == "llm_error"),
        "n_spec_error": sum(1 for r in results if r["error_type"] == "spec_error"),
        "n_solver_error": sum(1 for r in results if r["error_type"] == "solver_error"),
        "n_parse_error": sum(1 for r in results if r["error_type"] == "parse_error"),
        "n_eval_error": sum(1 for r in results if r["error_type"] == "eval_error"),
        "n_runner_error": sum(1 for r in results if r["error_type"] == "runner_error"),
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
    parser.add_argument("--out", default="results/robo_async_online/cpsat_formalizer/{model}/{mode}")
    parser.add_argument("--tasks", default="data/robo_async_online/episodes")
    parser.add_argument("--timeout", type=float, default=120.0)
    parser.add_argument("--max", type=int, default=None, help="limit number of tasks")
    parser.add_argument("--num-workers", type=int, default=4, help="parallel LLM workers")
    parser.add_argument(
        "--max-llm-attempts",
        type=int,
        default=1,
        help="LLM attempts per online stage; 1 disables retry",
    )
    parser.add_argument("--implicit", action="store_true", help="hide dependency hints in NL")
    parser.add_argument("--oracle-spec", action="store_true", help="use gold task JSON instead of LLM")
    parser.add_argument("--include-tags", default="", help="comma-separated online tags to include")
    parser.add_argument("--exclude-tags", default="", help="comma-separated online tags to exclude")
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
    print(f"LLM attempts:{args.max_llm_attempts}")
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
        max_llm_attempts=args.max_llm_attempts,
        implicit=args.implicit,
        oracle_spec=args.oracle_spec,
        include_tags=parse_tag_arg(args.include_tags),
        exclude_tags=parse_tag_arg(args.exclude_tags),
    )


if __name__ == "__main__":
    main()
