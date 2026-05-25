"""State-aware online CP-SAT repair runner for Robo-Async episodes.

This runner differs from the standard online CP-SAT formalizer in one key way:
after the initial plan, the LLM is asked only to formalize the event delta. The
runner maintains execution state, applies the delta, and re-schedules only the
remaining actions with CP-SAT.
"""
from __future__ import annotations

import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
import copy
import json
import sys
from pathlib import Path

from dotenv import load_dotenv

load_dotenv()


_ROOT = Path(__file__).resolve().parent.parent.parent.parent
if str(_ROOT) not in sys.path:
    sys.path.insert(0, str(_ROOT))

from src.envs.robo_async.engine import parse_optic_plan  # noqa: E402
from src.experiments.robo_async.run_cpsat_formalizer import (  # noqa: E402
    SYSTEM_PROMPT,
    _parse_llm_json,
    oracle_schedule_spec,
)
from src.experiments.robo_async.run_online_cpsat_formalizer import (  # noqa: E402
    _augment_with_ongoing_constraints,
    _build_deadline_objectives,
    _build_user_prompt,
    _is_optimization_spec,
    _solve_online_optimization_spec,
    _stage_nl,
)
from src.experiments.robo_async.run_online_planner import (  # noqa: E402
    _apply_event,
    _initial_world,
    _continuation_oracle,
    _render_plan_text,
    _run_events_until,
    _shift_relative_steps,
    _snapshot_for_replan,
    evaluate_episode_plan,
)
from src.experiments.robo_async.tag_filter import (  # noqa: E402
    parse_tag_arg,
    summarize_by_tag,
    tag_filter_match,
)
from src.experiments.robo_async.online_progress import sort_online_episodes  # noqa: E402
from src.method.cpsat_scheduler import (  # noqa: E402
    ScheduleAction,
    ScheduleDependency,
    parse_schedule_spec,
    solve_schedule,
)


DELTA_SYSTEM_PROMPT = """\
You are an online planning state-update formalizer. Given the current execution
state and a new event, output only the structured event delta that changes the
planning problem.

Return ONLY valid JSON with this shape:
{
  "delta": {
    "add_items": {},
    "add_deliveries": [],
    "add_temporal_constraints": [],
    "add_candidate_goals": [],
    "replace_deliveries": null,
    "set_deadline": null
  }
}

Only include keys that are actually changed by the event. Do not output a full
plan, full task, or scheduling model.
"""


DELTA_USER_TEMPLATE = """\
Current time: {now:.3f} seconds.

Completed actions:
{completed}

Ongoing actions:
{ongoing}

New online event:
{event_json}

Return the event delta JSON only.
"""


def _parse_delta_response(text: str) -> dict | None:
    parsed = _parse_llm_json(text)
    if not isinstance(parsed, dict):
        return None
    delta = parsed.get("delta", parsed)
    if not isinstance(delta, dict):
        return None
    allowed = {
        "add_items",
        "add_deliveries",
        "add_temporal_constraints",
        "add_candidate_goals",
        "replace_deliveries",
        "set_deadline",
    }
    return {key: value for key, value in delta.items() if key in allowed and value is not None}


def _delta_prompt(event: dict, now: float, completed_steps: list, ongoing_steps: list) -> str:
    from src.experiments.robo_async.run_online_planner import _completed_lines, _ongoing_lines

    event_view = {
        "id": event.get("id"),
        "type": event.get("type"),
        "description": event.get("description"),
        "delta": event.get("delta", {}),
    }
    return DELTA_USER_TEMPLATE.format(
        now=now,
        completed=_completed_lines(completed_steps),
        ongoing=_ongoing_lines(ongoing_steps, now),
        event_json=json.dumps(event_view, indent=2, ensure_ascii=False),
    )


def _step_id(step) -> str:
    item = step.args[-1] if step.args else ""
    return f"{step.action}_{item}" if item else step.action


def _repair_state_dependencies(
    spec: dict,
    completed_steps: list,
    ongoing_steps: list,
    now: float,
) -> tuple[dict, list[dict]]:
    """Remove stale deps from JSON and carry state-aware deps to add after parse.

    A replan suffix may no longer contain the predecessor of a temporal
    dependency because that action has already completed or is currently
    running. We cannot leave that dependency in JSON because parse_schedule_spec
    rejects unknown endpoints. Instead, we later attach the successor to either
    the ongoing blocker or a short hidden wait interval.
    """
    action_ids = {
        str(action.get("id", "")).strip()
        for action in spec.get("actions", [])
        if isinstance(action, dict)
    }
    completed_finish = {_step_id(step): float(step.t_end) for step in completed_steps}
    ongoing_ids = {_step_id(step): f"ongoing_{step.action}_{step.args[-1]}" for step in ongoing_steps if step.args}

    repaired = copy.deepcopy(spec)
    repaired_deps = []
    carried = []
    for raw in spec.get("dependencies", []):
        if isinstance(raw, dict):
            before = str(raw.get("predecessor", raw.get("before", ""))).strip()
            after = str(raw.get("successor", raw.get("after", ""))).strip()
            lag = int(round(float(raw.get("min_lag", raw.get("lag", 0)) or 0)))
        elif isinstance(raw, (list, tuple)) and len(raw) == 2:
            before = str(raw[0]).strip()
            after = str(raw[1]).strip()
            lag = 0
        else:
            repaired_deps.append(raw)
            continue

        if after not in action_ids:
            continue
        if before in action_ids:
            repaired_deps.append(raw)
            continue
        if before in ongoing_ids:
            carried.append({
                "kind": "ongoing",
                "before": ongoing_ids[before],
                "after": after,
                "min_lag": lag,
            })
            continue
        if before in completed_finish:
            remaining_lag = max(0, int(round(completed_finish[before] + lag - float(now))))
            if remaining_lag > 0:
                carried.append({
                    "kind": "completed_wait",
                    "source": before,
                    "after": after,
                    "duration": remaining_lag,
                })
            continue

        # If the predecessor is neither in the suffix nor in the known execution
        # state, the best local repair is to drop the stale edge.

    repaired["dependencies"] = repaired_deps
    return repaired, carried


def _add_carried_state_dependencies(
    actions: list[ScheduleAction],
    dependencies: list[ScheduleDependency],
    carried: list[dict],
) -> tuple[list[ScheduleAction], list[ScheduleDependency]]:
    if not carried:
        return actions, dependencies

    action_by_id = {action.id: action for action in actions}
    action_ids = set(action_by_id)
    extra_actions = list(actions)
    extra_deps = list(dependencies)
    for item in carried:
        after = item["after"]
        if after not in action_ids:
            continue
        if item["kind"] == "ongoing":
            before = item["before"]
            if before in action_ids:
                extra_deps.append(ScheduleDependency(
                    before=before,
                    after=after,
                    min_lag=int(item.get("min_lag", 0) or 0),
                ))
            continue

        wait_id = f"wait_{item['source']}_to_{after}"
        if wait_id not in action_ids:
            extra_actions.append(ScheduleAction(
                id=wait_id,
                action="task",
                item=action_by_id[after].item,
                duration=max(1, int(item["duration"])),
                hidden=True,
                fixed_start=0,
            ))
            action_ids.add(wait_id)
        extra_deps.append(ScheduleDependency(before=wait_id, after=after))

    return extra_actions, extra_deps


def _solve_stage_spec(
    spec: dict,
    stage_task: dict,
    snapshot: dict,
    ongoing_steps: list,
    completed_steps: list,
    now: float,
    *,
    solver_timeout: float,
):
    if _is_optimization_spec(spec, stage_task):
        return _solve_online_optimization_spec(
            spec,
            stage_task,
            ongoing_steps,
            now,
            solver_timeout=solver_timeout,
        )

    repaired_spec, carried_deps = _repair_state_dependencies(
        spec,
        completed_steps,
        ongoing_steps,
        now,
    )
    actions, deps = parse_schedule_spec(
        repaired_spec,
        valid_items=set(stage_task["items"].keys()),
        station_capacities=stage_task.get("stations", {}),
        robots=stage_task.get("robots"),
    )
    actions, deps = _augment_with_ongoing_constraints(actions, deps, ongoing_steps, now)
    actions, deps = _add_carried_state_dependencies(actions, deps, carried_deps)
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
    return normalized_spec, sched


def _initial_llm_spec(llm, nl: str, item_names: list[str], attempts: int) -> tuple[dict | None, str | None]:
    raw_response = None
    prompt = _build_user_prompt(nl, item_names)
    for _ in range(max(1, int(attempts))):
        response = llm.chat([
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user", "content": prompt},
        ])
        raw_response = response if isinstance(response, str) else response.content
        spec = _parse_llm_json(raw_response or "")
        if spec is not None:
            return spec, raw_response
    return None, raw_response


def _event_delta(llm, event: dict, now: float, completed_steps: list, ongoing_steps: list) -> tuple[dict | None, str | None]:
    prompt = _delta_prompt(event, now, completed_steps, ongoing_steps)
    response = llm.chat([
        {"role": "system", "content": DELTA_SYSTEM_PROMPT},
        {"role": "user", "content": prompt},
    ])
    raw_response = response if isinstance(response, str) else response.content
    return _parse_delta_response(raw_response or ""), raw_response


def _run_episode(
    episode: dict,
    llm,
    *,
    solver_timeout: float,
    implicit: bool,
    max_llm_attempts: int,
) -> dict:
    difficulty = episode.get("difficulty", "online")
    working = copy.deepcopy(episode["initial_task"])
    working["difficulty"] = difficulty
    committed_steps = []
    stage_records = []
    current_state = _initial_world(working)
    current_completed_steps = []
    current_ongoing_steps = []
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
        snapshot["difficulty"] = difficulty
        stage_task, nl = _stage_nl(
            snapshot,
            episode["id"],
            current_completed_steps,
            current_ongoing_steps,
            now,
            implicit,
        )

        raw_response = None
        if stage_idx == 0:
            spec, raw_response = _initial_llm_spec(
                llm,
                nl,
                list(stage_task["items"].keys()),
                max_llm_attempts,
            )
            spec_source = "initial_llm"
        else:
            spec = oracle_schedule_spec(stage_task)
            spec_source = "state_repair"

        if spec is None:
            error_type = "llm_error"
            error = f"stage {stage_idx}: LLM failed to return valid initial scheduling JSON"
            stage_records.append({
                "stage": stage_idx,
                "time": now,
                "spec_source": "initial_llm",
                "nl": nl,
                "llm_response": raw_response,
                "error_type": error_type,
                "error": error,
            })
            break

        try:
                normalized_spec, sched = _solve_stage_spec(
                spec,
                stage_task,
                snapshot,
                current_ongoing_steps,
                current_completed_steps,
                now,
                solver_timeout=solver_timeout,
            )
        except Exception as exc:
            error_type = "spec_error"
            error = f"stage {stage_idx}: {exc}"
            stage_records.append({
                "stage": stage_idx,
                "time": now,
                "spec_source": spec_source,
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
                "spec_source": spec_source,
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
                "spec_source": spec_source,
                "nl": nl,
                "llm_response": raw_response,
                "schedule_spec": normalized_spec,
                "solver_plan": rel_plan_text,
                "error_type": error_type,
                "error": error,
            })
            break

        abs_steps = _shift_relative_steps(rel_steps, now)
        combined_steps = sorted(
            committed_steps + abs_steps,
            key=lambda s: (s.t_start, s.action, tuple(s.args)),
        )
        stage_records.append({
            "stage": stage_idx,
            "time": now,
            "spec_source": spec_source,
            "nl": nl,
            "llm_response": raw_response,
            "schedule_spec": normalized_spec,
            "solver_status": getattr(sched, "status", None),
            "solver_optimal": getattr(sched, "optimal", False),
            "solver_plan": rel_plan_text,
            "planned_steps": len(rel_steps),
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

            event = episode["events"][stage_idx]
            delta, delta_response = _event_delta(
                llm,
                event,
                horizon,
                current_completed_steps,
                current_ongoing_steps,
            )
            stage_records[-1]["event"] = {
                "id": event.get("id"),
                "type": event.get("type"),
                "trigger_time": event.get("trigger_time"),
                "description": event.get("description"),
            }
            stage_records[-1]["delta_response"] = delta_response
            stage_records[-1]["delta"] = delta
            if delta is None:
                error_type = "llm_error"
                error = f"stage {stage_idx}: LLM failed to return valid event delta JSON"
                stage_records[-1]["error_type"] = error_type
                stage_records[-1]["error"] = error
                break

            working = _apply_event(working, {"delta": delta})
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
        "online_mode": "state_aware_repair",
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


def run(
    model_name: str,
    out_dir: str,
    task_dir: str,
    solver_timeout: float,
    max_tasks: int | None,
    num_workers: int = 4,
    implicit: bool = False,
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
        f"Stage 1/1  State-aware online CP-SAT repair "
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
                    "online_mode": "state_aware_repair",
                    "difficulty": episode.get("difficulty"),
                    "source_split": episode.get("source_split"),
                    "n_events": len(episode.get("events", [])),
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
        "backend": "state-aware-cp-sat-repair",
        "online_mode": "state_aware_repair",
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
    parser.add_argument("--out", default="results/robo_async_online/state_aware_cpsat_repair/{model}/{mode}")
    parser.add_argument("--tasks", default="data/robo_async_online/episodes")
    parser.add_argument("--timeout", type=float, default=120.0)
    parser.add_argument("--max", type=int, default=None, help="limit number of tasks")
    parser.add_argument("--num-workers", type=int, default=4, help="parallel LLM workers")
    parser.add_argument("--max-llm-attempts", type=int, default=1)
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
    print(f"Timeout:     {args.timeout}s")
    print(f"LLM workers: {args.num_workers}")
    print(f"LLM attempts:{args.max_llm_attempts}")
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
        include_tags=parse_tag_arg(args.include_tags),
        exclude_tags=parse_tag_arg(args.exclude_tags),
    )


if __name__ == "__main__":
    main()
