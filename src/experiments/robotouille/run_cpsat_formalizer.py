"""
Run a CP-SAT formalizer baseline on ordinary Robotouille.

Pipeline per example:
  1. Load record from data/robotouille_single_agent_async.json
  2. LLM generates a structured scheduling JSON:
       actions = executable Robotouille/PDDL-style action strings
       dependencies = precedence constraints between action ids
  3. CP-SAT schedules the actions
  4. The scheduled action order is evaluated with the Robotouille engine

This is intentionally a scheduling formalizer baseline, not a full symbolic
replacement for Robotouille's transition system.  The LLM still has to propose
executable actions; CP-SAT only handles ordering, durations, and optional
resource/robot exclusivity.
"""
from __future__ import annotations

import argparse
import json
import os
import re
import sys
from pathlib import Path
from typing import Any

from pydantic import BaseModel, Field
from tqdm import tqdm

from dotenv import load_dotenv

load_dotenv()

_PROJECT_ROOT = Path(__file__).resolve().parent.parent.parent.parent
_ROBOTOUILLE_ROOT = _PROJECT_ROOT / "baselines" / "robotouille"
_DOMAIN_PDDL_PATH = _ROBOTOUILLE_ROOT / "environments" / "robotouille.pddl"
_DEFAULT_DATA_PATH = _PROJECT_ROOT / "data" / "robotouille_single_agent_async.json"

for p in (_PROJECT_ROOT, _ROBOTOUILLE_ROOT):
    if str(p) not in sys.path:
        sys.path.insert(0, str(p))

from src.evaluation.robotouille.eval import evaluate_record, summarize_eval
from src.experiments.robotouille.run_planner import (
    _build_problem_pddl_from_json,
    _expand_with_seeds,
    _find_nearest_station,
    _load_records,
    normalize_plan,
)
from src.experiments.utils import build_llm_client
from src.llms.base import BaseLLM
from src.method.cpsat_scheduler import ScheduleAction, ScheduleDependency, solve_schedule


class RobotouilleScheduleAction(BaseModel):
    id: str = Field(description="Unique action id, e.g. a1")
    action: str = Field(
        description=(
            "Executable Robotouille action string, e.g. "
            "'move robot_1 table_1 stove_1' or 'cook robot_1 chicken_1 stove_1'."
        )
    )
    duration: int = Field(default=1, description="Positive integer duration in discrete steps")
    resource: str | None = Field(
        default=None,
        description="Optional station/resource name used by this action, e.g. stove_1",
    )


class RobotouilleScheduleDependency(BaseModel):
    before: str
    after: str


class RobotouilleScheduleSpec(BaseModel):
    actions: list[RobotouilleScheduleAction]
    dependencies: list[RobotouilleScheduleDependency] = Field(default_factory=list)


_SYSTEM_PROMPT = """\
You are a Robotouille scheduling formalizer.

Given a JSON description of a kitchen planning problem, output a CP-SAT
scheduling JSON specification.  Each scheduled action must also be an executable
Robotouille/PDDL-style action string, because the final schedule will be checked
by the Robotouille simulator.

Environment rules:
These are the action semantics used by the evaluator:
- The robot can only act at its current station.
- To move, use `move robot_1 station_from station_to`; `station_from` must be
  the robot's current location.
- The robot can hold at most one item or container at a time.
- `pick-up` requires the item to be on the current station, clear, and not
  under another item.
- `place` requires the robot to hold the item and the target station to be empty.
- `stack` requires the robot to hold the top item; the bottom item must be clear
  and at the robot's current station.
- `unstack` requires the top item to be clear, stacked on the bottom item, and
  at the robot's current station.
- `cook`, `cut`, and `fry` require the item to be placed at the correct station
  type; the robot must not be holding anything.
- Cook/cut/fry take multiple simulator steps according to the task config; repeat
  the corresponding action the required number of times.
- Containers use container-specific actions. Do not use `pick-up` or `place` for
  containers.

Available action string formats:
- move player station_from station_to
- pick-up player item station
- place player item station
- stack player item_top item_bottom station
- cook player item station
- cut player item station
- fry player item station
- pick-up-container player container station
- place-container player container station
- fill-pot player container water station
- boil-water player container water station
- add-to player item water container station
- fill-bowl player bowl pot water station
- unstack player item_top item_bottom station

Naming convention:
- Use type-index names such as robot_1, table_1, stove_1, bread_1, chicken_1.
- Use only names, never coordinate tuples.
- Use one scheduled action for each discrete simulator action.  For example, if
  cooking requires three repeated cook actions, include three cook actions.
- Use the exact object names implied by the JSON arrays, such as `bread_1`,
  `bread_2`, `table_1`, and `robot_1`.
- The action strings must be executable by the Robotouille simulator.  Do not
  pick up a stacked item directly; unstack it first.  Do not use pick-up/place
  for containers; use the container-specific actions above.  Do not place an
  item onto a station that is already occupied unless you are stacking it onto
  the item at that station.
- CP-SAT only schedules the actions you provide.  It does not infer missing
  moves, unstack actions, or state preconditions, so include every simulator
  action needed for execution.

Return ONLY valid JSON with this schema:
{
  "actions": [
    {"id": "a1", "action": "move robot_1 table_1 stove_1", "duration": 1, "resource": null},
    {"id": "a2", "action": "cook robot_1 chicken_1 stove_1", "duration": 1, "resource": "stove_1"}
  ],
  "dependencies": [
    {"before": "a1", "after": "a2"}
  ]
}

The dependencies must be sufficient for CP-SAT to recover an executable order.
If two actions must occur in sequence for the simulator state to be valid, add a
dependency.  Do not include prose or markdown.
"""


_USER_TEMPLATE = """\
Here is the environment JSON:
```json
{original_json}
```

{starting_station_hint}
{state_summary}
{state_aware_instruction}

Output the scheduling JSON now.
"""


_STATE_AWARE_INSTRUCTION = """\
State-aware mode:
- Treat the `actions` list as an executable skeleton, not just an unordered task
  set.  Put actions in the exact order they should execute.
- Still include dependencies, but the runner will also preserve the listed order.
- Before emitting each action, mentally update robot location, held item/container,
  station occupancy, stack relations, and prepared/cooked/cut/fried status.
- Do not emit `noop`.
"""


def _named_initial_state_summary(original_json: dict) -> str:
    """Summarize Robotouille's initial state using the same names as the prompt."""
    if not original_json:
        return ""

    from collections import defaultdict

    station_counts: dict[str, int] = defaultdict(int)
    xy_to_station: dict[tuple[int, int], str] = {}
    station_names: list[str] = []
    for station in original_json.get("stations", []):
        base = str(station.get("name", "station")).lower()
        station_counts[base] += 1
        name = f"{base}_{station_counts[base]}"
        xy_to_station[(station.get("x"), station.get("y"))] = name
        station_names.append(name)

    item_counts: dict[str, int] = defaultdict(int)
    items_by_station: dict[str, list[tuple[int, str, list[str]]]] = defaultdict(list)
    for item in original_json.get("items", []):
        base = str(item.get("name", "item")).lower()
        item_counts[base] += 1
        name = f"{base}_{item_counts[base]}"
        station = xy_to_station.get((item.get("x"), item.get("y")), "unknown_station")
        preds = [str(p) for p in item.get("predicates", [])]
        level = int(item.get("stack-level", 0))
        items_by_station[station].append((level, name, preds))

    container_counts: dict[str, int] = defaultdict(int)
    containers_by_station: dict[str, list[str]] = defaultdict(list)
    for container in original_json.get("containers", []):
        base = str(container.get("name", "container")).lower()
        container_counts[base] += 1
        name = f"{base}_{container_counts[base]}"
        station = xy_to_station.get((container.get("x"), container.get("y")), "unknown_station")
        containers_by_station[station].append(name)

    occupied = set(items_by_station) | set(containers_by_station)
    empty_stations = [s for s in station_names if s not in occupied]
    starting_hint = _find_nearest_station(original_json) or ""
    start_match = re.search(r"station (\w+)", starting_hint)
    robot_start = start_match.group(1) if start_match else "unknown_station"

    lines = ["\nNamed initial state summary:"]
    lines.append(f"- robot_1 starts at {robot_start} and holds nothing.")
    if empty_stations:
        lines.append(f"- Empty stations: {', '.join(empty_stations)}.")
    for station in station_names:
        entries: list[str] = []
        item_entries = sorted(items_by_station.get(station, []), key=lambda row: row[0])
        if item_entries:
            stack_desc = []
            for level, item_name, preds in item_entries:
                pred_txt = f" [{', '.join(preds)}]" if preds else ""
                stack_desc.append(f"level {level}: {item_name}{pred_txt}")
            entries.append("items " + "; ".join(stack_desc))
        if containers_by_station.get(station):
            entries.append("containers " + ", ".join(containers_by_station[station]))
        if entries:
            lines.append(f"- {station}: " + " | ".join(entries) + ".")
    lines.append("- For stacked items, only the highest stack-level item is clear.")
    return "\n".join(lines) + "\n"


def _extract_json(text: str | None) -> dict[str, Any] | None:
    if not text:
        return None
    text = text.strip()
    if text.startswith("```"):
        parts = text.split("```")
        if len(parts) >= 2:
            text = parts[1].strip()
            if text.startswith("json"):
                text = text[4:].strip()
    try:
        obj = json.loads(text)
    except Exception:
        match = re.search(r"\{.*\}", text, re.DOTALL)
        if not match:
            return None
        try:
            obj = json.loads(match.group(0))
        except Exception:
            return None
    return obj if isinstance(obj, dict) else None


def _parse_spec(response: str | None) -> tuple[RobotouilleScheduleSpec | None, str | None]:
    obj = _extract_json(response)
    if obj is None:
        return None, "schedule JSON parse failed"
    try:
        spec = RobotouilleScheduleSpec.model_validate(obj)
    except Exception as exc:
        return None, f"schedule JSON schema validation failed: {exc}"
    if not spec.actions:
        return None, "schedule JSON contains no actions"
    ids = [a.id for a in spec.actions]
    if len(set(ids)) != len(ids):
        return None, "duplicate action ids"
    id_set = set(ids)
    for dep in spec.dependencies:
        if dep.before not in id_set or dep.after not in id_set:
            return None, f"dependency references unknown action: {dep.before}->{dep.after}"
    return spec, None


def _spec_to_schedule_inputs(
    spec: RobotouilleScheduleSpec,
    *,
    preserve_order: bool = False,
) -> tuple[list[ScheduleAction], list[ScheduleDependency], dict[str, str]]:
    action_text_by_id: dict[str, str] = {}
    actions: list[ScheduleAction] = []
    for raw in spec.actions:
        duration = max(1, int(raw.duration))
        resource = raw.resource.strip() if isinstance(raw.resource, str) and raw.resource.strip() else None
        action_text = raw.action.strip()
        action_text_by_id[raw.id] = action_text
        actions.append(
            ScheduleAction(
                id=raw.id,
                action="task",
                item="robotouille_action",
                duration=duration,
                station=resource,
                eligible_robots=("robot_1",),
            )
        )
    dependencies = [
        ScheduleDependency(before=d.before, after=d.after)
        for d in spec.dependencies
    ]
    if preserve_order:
        seen = {(d.before, d.after) for d in dependencies}
        for before, after in zip(spec.actions, spec.actions[1:]):
            key = (before.id, after.id)
            if key not in seen:
                dependencies.append(ScheduleDependency(before=before.id, after=after.id))
                seen.add(key)
    return actions, dependencies, action_text_by_id


def _scheduled_action_strings(
    scheduled_plan: list[tuple[float, str, float]],
    action_text_by_id: dict[str, str],
    original_json: dict,
) -> list[str]:
    ordered = [
        action_text_by_id.get(action_id, action_id)
        for _, action_id, _ in sorted(scheduled_plan, key=lambda row: (row[0], row[1]))
    ]
    nearest = None
    hint = _find_nearest_station(original_json)
    if hint:
        m = re.search(r"station (\w+)", hint)
        if m:
            nearest = m.group(1)
    return normalize_plan(ordered, original_json, nearest)


def _actions_to_plan(actions: list[str]) -> list[tuple[float, str, float]]:
    executable = [action for action in actions if action.strip().lower() not in {"noop", "wait"}]
    return [(float(i), action, 1.0) for i, action in enumerate(executable)]


def run_task(llm_client: BaseLLM, records: list[dict], args: argparse.Namespace):
    domain_pddl = _DOMAIN_PDDL_PATH.read_text(encoding="utf-8")
    n = len(records) if args.max_examples < 0 else min(len(records), args.max_examples)
    records = records[:n]

    messages: list[list[dict]] = []
    for rec in tqdm(records, desc="Preparing Robotouille CP-SAT prompts"):
        original_json = rec.get("original_json", {})
        state_summary = _named_initial_state_summary(original_json) if args.state_aware else ""
        state_aware_instruction = _STATE_AWARE_INSTRUCTION if args.state_aware else ""
        messages.append([
            {"role": "system", "content": _SYSTEM_PROMPT},
            {"role": "user", "content": _USER_TEMPLATE.format(
                original_json=json.dumps(original_json, indent=2),
                starting_station_hint=_find_nearest_station(original_json) or "",
                state_summary=state_summary,
                state_aware_instruction=state_aware_instruction,
            )},
        ])

    responses = llm_client.batch_chat(
        messages,
        schema=RobotouilleScheduleSpec,
        desc="LLM Robotouille schedule formalization",
    )

    specs: list[RobotouilleScheduleSpec | None] = []
    errors: list[str | None] = []
    raw_responses: list[str | None] = list(responses)
    for resp in responses:
        spec, err = _parse_spec(resp)
        specs.append(spec)
        errors.append(err)

    for retry in range(args.llm_retries):
        failed = [i for i, spec in enumerate(specs) if spec is None]
        if not failed:
            break
        print(f"\nRetry {retry + 1}/{args.llm_retries}: {len(failed)} failed to parse/validate")
        retry_messages = []
        for i in failed:
            msg = list(messages[i])
            if raw_responses[i]:
                msg.append({"role": "assistant", "content": raw_responses[i]})
            msg.append({
                "role": "user",
                "content": (
                    "The previous response was not a valid Robotouille scheduling JSON. "
                    f"Error: {errors[i]}. Return ONLY JSON with keys actions and dependencies. "
                    "Every action needs id, action, duration, and optional resource."
                ),
            })
            retry_messages.append(msg)
        retry_responses = llm_client.batch_chat(
            retry_messages,
            schema=RobotouilleScheduleSpec,
            desc=f"LLM retry {retry + 1}",
        )
        for msg, i, resp in zip(retry_messages, failed, retry_responses):
            messages[i] = msg
            raw_responses[i] = resp
            specs[i], errors[i] = _parse_spec(resp)

    save_path = Path(args.save_path)
    save_path.mkdir(parents=True, exist_ok=True)
    jsonl_path = save_path / "full_results.jsonl"

    result_records: list[dict] = []
    eval_results: list[dict] = []

    with jsonl_path.open("w", encoding="utf-8") as jsonl_f:
        for i, rec in enumerate(records):
            original_json = rec.get("original_json", {})
            problem_pddl = _build_problem_pddl_from_json(original_json) if original_json else None

            scheduled_strings: list[str] | None = None
            solver_error = None
            makespan = None

            if specs[i] is not None:
                try:
                    actions, dependencies, action_text_by_id = _spec_to_schedule_inputs(
                        specs[i],
                        preserve_order=args.state_aware,
                    )
                    solver_result = solve_schedule(
                        actions,
                        dependencies,
                        robots=["robot_1"],
                        timeout=args.timeout,
                    )
                    if solver_result.makespan is None or solver_result.error:
                        solver_error = solver_result.error or "CP-SAT solver failed"
                    else:
                        makespan = solver_result.makespan
                        scheduled_strings = _scheduled_action_strings(
                            solver_result.plan,
                            action_text_by_id,
                            original_json,
                        )
                except Exception as exc:
                    solver_error = str(exc)

            plan = _actions_to_plan(scheduled_strings) if scheduled_strings else None
            ev = evaluate_record(
                problem_pddl=problem_pddl,
                plan=plan,
                original_json=original_json,
                error=errors[i] or solver_error,
                domain_pddl=domain_pddl,
                record_id=rec.get("id", "?"),
            )
            eval_results.append(ev)

            out_record = {
                "id": rec.get("id", "?"),
                "original_json": original_json,
                "schedule_json": specs[i].model_dump() if specs[i] is not None else None,
                "solver_makespan": makespan,
                "plan": scheduled_strings,
                "plan_length": len(scheduled_strings) if scheduled_strings else None,
                "solved": scheduled_strings is not None,
                "error": errors[i] or solver_error,
                "eval": ev,
                "state_aware": args.state_aware,
                "llm_response": raw_responses[i],
                "chat_history": messages[i],
            }
            result_records.append(out_record)
            jsonl_f.write(json.dumps(out_record, indent=2, ensure_ascii=False) + "\n")
            jsonl_f.flush()

    _save_summary(result_records, eval_results, args)
    return result_records


def _save_summary(records: list[dict], eval_results: list[dict], args: argparse.Namespace) -> None:
    save_path = Path(args.save_path)
    n = len(records)
    n_solved = sum(1 for r in records if r.get("solved"))
    eval_summary = summarize_eval(eval_results)
    metrics = {
        "benchmark": "robotouille",
        "method": "cpsat_formalizer",
        "model_name": args.model_name,
        "num_examples": n,
        "state_aware": args.state_aware,
        "num_schedules_solved": n_solved,
        "schedule_solve_rate": n_solved / n if n else 0.0,
        **eval_summary,
    }
    with (save_path / "summary_results.json").open("w", encoding="utf-8") as f:
        json.dump(metrics, f, indent=2)

    print(f"\nResults saved to {save_path}")
    print(f"State-aware mode      : {args.state_aware}")
    print(f"Schedules solved      : {n_solved}/{n}")
    print(f"Accuracy (done)       : {eval_summary.get('accuracy', 0.0):.4f} "
          f"({eval_summary.get('num_done', 0)}/{n})")
    if eval_summary.get("env_simulation_success_rate") is not None:
        print(
            "Env simulation        : "
            f"{eval_summary['env_simulation_success_rate']:.4f} "
            f"({eval_summary.get('num_env_simulation_success', 0)}/"
            f"{eval_summary.get('num_env_simulation_tested', 0)})"
        )


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Robotouille CP-SAT formalizer: JSON -> scheduling JSON -> CP-SAT -> evaluation"
    )
    parser.add_argument("--model-name", required=True)
    parser.add_argument("--temperature", type=float, default=0.0)
    parser.add_argument("--max-tokens", type=int, default=8192)
    parser.add_argument("--save-path", required=True)
    parser.add_argument("--data-path", default=str(_DEFAULT_DATA_PATH))
    parser.add_argument("--max-examples", type=int, default=999)
    parser.add_argument("--num-workers", type=int, default=4)
    parser.add_argument("--llm-retries", type=int, default=2)
    parser.add_argument("--timeout", type=float, default=120.0)
    parser.add_argument(
        "--state-aware",
        action="store_true",
        default=False,
        dest="state_aware",
        help=(
            "Enable a state-aware Robotouille prompt and preserve the LLM's "
            "listed action order as additional CP-SAT precedence constraints."
        ),
    )
    parser.add_argument("--seeds", type=int, nargs="*", default=[])
    parser.add_argument(
        "--exclude-envs", type=str, nargs="*", default=[],
        dest="exclude_envs",
        help="Record id prefixes to exclude, e.g. 3.1_.",
    )
    parser.add_argument("--no-coordinates", action="store_true")
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    data_path = Path(args.data_path)
    if not data_path.is_absolute():
        data_path = _PROJECT_ROOT / data_path

    records = _load_records(data_path)
    print(f"Loaded {len(records)} records from {data_path}")
    if args.exclude_envs:
        before = len(records)
        records = [r for r in records if not any(r["id"].startswith(p) for p in args.exclude_envs)]
        print(
            f"Excluded {before - len(records)} records matching prefixes "
            f"{args.exclude_envs} ({len(records)} remaining)"
        )
    if args.seeds:
        records = _expand_with_seeds(
            records,
            args.seeds,
            include_coordinates=not args.no_coordinates,
        )
        print(f"Expanded to {len(records)} records with seeds {args.seeds}")

    os.makedirs(args.save_path, exist_ok=True)
    llm_client = build_llm_client(
        args.model_name,
        args.temperature,
        args.max_tokens,
        num_workers=args.num_workers,
        strict_json=True,
    )
    run_task(llm_client, records, args)


if __name__ == "__main__":
    main()
