"""Minimal online PDDL formalizer runner for Robo-Async episodes."""
from __future__ import annotations

import argparse
import copy
import json
import sys
from pathlib import Path

from dotenv import load_dotenv

load_dotenv()

_ROOT = Path(__file__).resolve().parent.parent.parent.parent
if str(_ROOT) not in sys.path:
    sys.path.insert(0, str(_ROOT))

from src.envs.robo_async.engine import PlanStep, parse_optic_plan  # noqa: E402
from src.envs.robo_async.nl_generator import task_to_nl  # noqa: E402
from src.experiments.robo_async.run_formalizer import (  # noqa: E402
    _call_llm,
    _inject_domain_constants,
    _strip_problem_redeclared_objects,
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
    OnlineSubsetProgress,
    sort_online_episodes,
)
from src.method.pddl_solver import solve  # noqa: E402


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
- Generate PDDL only for the remaining future work.
- Do not include actions that are already completed.
- Do not include actions that are currently in progress; they are already committed.
- Never model replacement actions such as *_commit or *_committed for already-committed work.
- If an item already has the required prepared state, only encode any later remaining actions
  such as stack; do not re-encode its earlier preparation action.
- Any durative action you model must keep its full positive domain duration.
- Do not encode 0-duration or partial "remaining-time" stand-ins for committed actions.
- Encode ongoing release times explicitly inside PDDL using planner-only wait_* actions
  or equivalent temporal constraints from the current moment.
- Do not assume resources used by ongoing actions are free at time 0 of the suffix.
- Do not restart committed ongoing actions.
- If rush-critical deliveries are listed, prioritize them before non-rush work whenever possible,
  even if the overall makespan becomes slightly worse.
"""


def _ongoing_release_guidance(snapshot: dict, ongoing_steps: list[PlanStep], now: float) -> str:
    if not ongoing_steps:
        return ""
    lines = ["## Ongoing Release Constraints"]
    for step in ongoing_steps:
        item = step.args[-1] if step.args else ""
        if not item:
            continue
        remaining = max(0.0, step.t_end - now)
        current_state = snapshot.get("items", {}).get(item, {}).get("state", "")
        effective_state = _effective_item_state(current_state)
        station = step.action if step.action == "stack" else None
        if step.action != "stack":
            from src.envs.robo_async.engine import ACTION_STATION as _ACTION_STATION
            station = _ACTION_STATION.get(step.action)
        robot = step.args[0] if len(step.args) == 2 else None
        lines.append(
            f"- `{item}` is currently in progress as `{current_state}` and should be treated as "
            f"becoming `{effective_state}` after {remaining:.3f} seconds."
        )
        if station:
            lines.append(
                f"- The `{station}` resource remains occupied for the next {remaining:.3f} seconds."
            )
        if robot:
            lines.append(
                f"- Robot `{robot}` remains occupied for the next {remaining:.3f} seconds."
            )
    lines.append(
        "- In the generated PDDL, represent these release-time constraints with planner-only "
        "wait_* durative actions or equivalent explicit lag constraints from the current moment."
    )
    return "\n".join(lines) + "\n"


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
    nl += _ongoing_release_guidance(snapshot, ongoing_steps, now)
    return task_dict, nl


def _normalize_online_pddl(
    domain_pddl: str,
    problem_pddl: str,
    task_dict: dict,
) -> tuple[str, str]:
    """Normalize grounded online PDDL before solver invocation.

    Online formalization prompts often ask the model to emit grounded stack/wait
    actions that mention concrete items directly inside the domain. OPTIC
    requires those symbols to be declared as domain constants; once injected, we
    also strip the duplicate problem-level declarations to keep scopes clean.
    """
    domain_pddl = _inject_domain_constants(domain_pddl, task_dict)
    problem_pddl = _strip_problem_redeclared_objects(problem_pddl, task_dict)
    return domain_pddl, problem_pddl


def run(
    model_name: str,
    out_dir: str,
    task_dir: str,
    solver_timeout: float,
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
        max_tokens=4096,
        num_workers=num_workers,
    )

    jsonl_path = out_path / "full_results.jsonl"
    jsonl_path.unlink(missing_ok=True)
    results = []

    print(f"Stage 1/1  Online PDDL formalization ({len(episodes)} episodes) ...\n")
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
            pddl = _call_llm(
                llm,
                stage_task,
                nl,
                list(stage_task["items"].keys()),
                list(stage_task.get("robots", [])),
            )
            if pddl is None:
                error_type = "llm_error"
                error = f"stage {stage_idx}: LLM failed to return valid PDDL JSON"
                stage_records.append({
                    "stage": stage_idx,
                    "time": now,
                    "nl": nl,
                    "error_type": error_type,
                    "error": error,
                })
                break

            domain_pddl, problem_pddl = _normalize_online_pddl(
                pddl[0],
                pddl[1],
                stage_task,
            )
            solver_result = solve(
                domain_pddl,
                problem_pddl,
                solver="optic",
                timeout=solver_timeout,
                max_retries=2,
            )
            if solver_result is None or solver_result.error:
                error_type = "solver_error"
                error = (
                    f"stage {stage_idx}: "
                    + (solver_result.error if solver_result else "solver returned None")
                )
                stage_records.append({
                    "stage": stage_idx,
                    "time": now,
                    "nl": nl,
                    "domain_pddl": domain_pddl,
                    "problem_pddl": problem_pddl,
                    "error_type": error_type,
                    "error": error,
                })
                break

            rel_plan_text = "\n".join(
                f"{t:.3f}: ({action})  [{dur:.3f}]"
                for t, action, dur in solver_result.plan
            )
            rel_steps = parse_optic_plan(rel_plan_text)
            if not rel_steps:
                error_type = "parse_error"
                error = f"stage {stage_idx}: solver returned no parseable suffix plan"
                stage_records.append({
                    "stage": stage_idx,
                    "time": now,
                    "nl": nl,
                    "domain_pddl": domain_pddl,
                    "problem_pddl": problem_pddl,
                    "solver_plan": rel_plan_text,
                    "error_type": error_type,
                    "error": error,
                })
                break

            # Strict online mode: do not shift the solver suffix behind ongoing
            # actions. Any required waits must be represented in the plan itself.
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
                "domain_pddl": domain_pddl,
                "problem_pddl": problem_pddl,
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
                break

        final_steps = committed_steps
        final_plan_text = _render_plan_text(final_steps)
        final_task = copy.deepcopy(working)
        eval_oracle = {**episode.get("oracle", {}), **continuation_oracle}
        evaluation = evaluate_episode_plan(final_steps, final_task, eval_oracle)
        success = evaluation.success and error_type not in {"llm_error", "solver_error", "parse_error"}
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
        "n_llm_error": sum(1 for r in results if r["error_type"] == "llm_error"),
        "n_solver_error": sum(1 for r in results if r["error_type"] == "solver_error"),
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
    parser.add_argument("--out", default="results/robo_async_online/formalizer/{model}/{mode}")
    parser.add_argument("--tasks", default="data/robo_async_online/episodes")
    parser.add_argument("--timeout", type=float, default=120.0)
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
    print(f"Timeout:     {args.timeout}s")
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
        solver_timeout=args.timeout,
        max_tasks=args.max,
        num_workers=args.num_workers,
        implicit=args.implicit,
        include_tags=parse_tag_arg(args.include_tags),
        exclude_tags=parse_tag_arg(args.exclude_tags),
    )


if __name__ == "__main__":
    main()
