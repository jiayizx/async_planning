"""
Convert a structured Robotouille environment JSON into a natural-language
planning problem description.

Pure Python extraction — no LLM calls.  Produces a conversational prompt
describing the kitchen setup, items, processing requirements, and goal.

Entity naming follows the same scheme as
baselines/robotouille/environments/env_generator/builder.py:
  - sort entities by (x, y)
  - count occurrences of each name
  - assign name + count  →  table_1, table_2, bread_1, bread_2, …

Goal IDs (coreference markers) are resolved so that predicates sharing
the same (arg, id) pair map to the same named entity.
"""

import json
import sys
from pathlib import Path
from dataclasses import dataclass, field
from typing import Optional

from tqdm import tqdm

_PROJECT_ROOT = Path(__file__).resolve().parent.parent.parent.parent
if str(_PROJECT_ROOT) not in sys.path:
    sys.path.insert(0, str(_PROJECT_ROOT))


# ---------------------------------------------------------------------------
# Data structures
# ---------------------------------------------------------------------------
@dataclass
class AsyncPlanningProblem:
    task: str
    prompt: str
    goal_predicates: list[dict] = field(default_factory=list)
    config: dict = field(default_factory=dict)


# ---------------------------------------------------------------------------
# Entity naming (mirrors builder.py build_objects)
# ---------------------------------------------------------------------------
_ENTITY_FIELDS = ("stations", "items", "players", "containers", "meals")

_STATION_NAMES = {"table", "stove", "board", "fryer", "sink"}
_CONTAINER_NAMES = {"pot", "bowl"}
_MEAL_NAMES = {"water", "boiling_water", "soup"}

_STATION_DESCRIPTIONS = {
    "table": "a surface for placing items",
    "stove": "used for cooking items",
    "board": "used for cutting items",
    "fryer": "used for frying items",
    "sink": "used for filling containers with water",
}

_PREDICATE_PROCESSING = {
    "iscookable": ("cooked", "stove", "cook_time"),
    "iscuttable": ("cut", "board", "num_cuts"),
}


def _assign_entity_names(env: dict) -> dict:
    """Assign unique names to every station, item, player, and container.

    Returns a dict with per-field lists of (original_dict, assigned_name),
    plus a "station_at" lookup for coordinates → station name.
    """
    result: dict = {f: [] for f in _ENTITY_FIELDS}
    result["station_at"] = {}

    for field_name in _ENTITY_FIELDS:
        entities = sorted(
            env.get(field_name, []),
            key=lambda e: (e.get("x", 0), e.get("y", 0)),
        )
        seen: dict[str, int] = {}
        for entity in entities:
            name = entity["name"]
            seen[name] = seen.get(name, 0) + 1
            unique_name = f"{name}_{seen[name]}"
            result[field_name].append((entity, unique_name))
            if field_name == "stations":
                result["station_at"][(entity["x"], entity["y"])] = unique_name

    return result


# ---------------------------------------------------------------------------
# Goal resolution
# ---------------------------------------------------------------------------
_PRED_ALIASES = {"item_at": "at", "item_on": "on"}


def _resolve_goals(env: dict, entity_map: dict) -> list[dict]:
    """Resolve goal predicates to use assigned entity names."""
    goals = env.get("goal", [])
    if not goals:
        return []

    arg_id_lists: dict[str, list[int]] = {}
    for goal in goals:
        for arg, id_val in zip(goal["args"], goal["ids"]):
            if arg not in arg_id_lists:
                arg_id_lists[arg] = []
            if id_val not in arg_id_lists[arg]:
                arg_id_lists[arg].append(id_val)

    for arg in arg_id_lists:
        arg_id_lists[arg].sort()

    id_to_name: dict[tuple[str, int], str] = {}

    for arg, ids in arg_id_lists.items():
        candidates: list[str] = []
        if arg in _STATION_NAMES:
            candidates = [n for e, n in entity_map["stations"] if e["name"] == arg]
        elif arg in _CONTAINER_NAMES:
            candidates = [n for e, n in entity_map["containers"] if e["name"] == arg]
        elif arg in _MEAL_NAMES:
            candidates = [n for e, n in entity_map["meals"] if e["name"] == arg]
        else:
            candidates = [n for e, n in entity_map["items"] if e["name"] == arg]
        if not candidates:
            candidates = [n for e, n in entity_map["players"] if e["name"] == arg]

        for idx, id_val in enumerate(ids):
            if idx < len(candidates):
                id_to_name[(arg, id_val)] = candidates[idx]
            else:
                id_to_name[(arg, id_val)] = f"{arg}_{id_val}"

    resolved: list[dict] = []
    for goal in goals:
        pred = _PRED_ALIASES.get(goal["predicate"], goal["predicate"])
        resolved_args = [
            id_to_name.get((arg, id_val), f"{arg}_{id_val}")
            for arg, id_val in zip(goal["args"], goal["ids"])
        ]
        resolved.append({"predicate": pred, "args": resolved_args})

    return resolved


# ---------------------------------------------------------------------------
# Build the goal description (stack assembly + other conditions)
# ---------------------------------------------------------------------------
def _build_goal_description(
    task: str,
    goal_predicates: list[dict],
    entity_map: dict,
) -> str:
    """Build a natural-language goal description with stack assembly.

    Handles multiple stacks (sandwiches/burgers) and soup goals in the
    same problem.
    """
    # Collect processing conditions from all goals
    processing: dict[str, list[str]] = {}
    for g in goal_predicates:
        if g["predicate"] == "iscooked":
            processing.setdefault(g["args"][0], []).append("cooked")
        elif g["predicate"] == "iscut":
            processing.setdefault(g["args"][0], []).append("cut")
        elif g["predicate"] == "isfried":
            processing.setdefault(g["args"][0], []).append("fried")

    # Group predicates by target station for stacks
    on_preds = [g for g in goal_predicates if g["predicate"] == "on"]
    at_preds = [g for g in goal_predicates if g["predicate"] == "at"]
    clear_preds = {g["args"][0] for g in goal_predicates if g["predicate"] == "clear"}

    # Soup/container predicates
    container_preds = [g for g in goal_predicates
                       if g["predicate"] in ("in", "addedto", "isboiling", "container_at")]

    lines: list[str] = [f"Goal: {task}"]

    # Build stacks per station
    stacks_by_station: dict[str, dict] = {}
    for g in on_preds:
        bottom_item, station = g["args"]
        stacks_by_station[station] = {"bottom": bottom_item, "middle": [], "top": None}

    for g in at_preds:
        if len(g["args"]) < 2:
            continue
        item, station = g["args"]
        if station in stacks_by_station:
            if item in clear_preds:
                stacks_by_station[station]["top"] = item
            elif item != stacks_by_station[station]["bottom"]:
                stacks_by_station[station]["middle"].append(item)

    if stacks_by_station:
        for station, stack in stacks_by_station.items():
            lines.append(f"The final assembly on {station} from bottom to top should be:")
            bottom = stack["bottom"]
            conds = processing.get(bottom, [])
            conds_str = f", {', '.join(conds)}" if conds else ""
            lines.append(f"  {bottom} (bottom{conds_str})")

            for item in stack["middle"]:
                conds = processing.get(item, [])
                conds_str = f" ({', '.join(conds)})" if conds else ""
                lines.append(f"  {item}{conds_str}")

            top = stack["top"]
            if top and top != bottom:
                conds = processing.get(top, [])
                conds.append("clear")
                lines.append(f"  {top} (top, {', '.join(conds)})")
            lines.append("")

    # Soup / container conditions
    if container_preds:
        if stacks_by_station:
            lines.append("Additionally:")
        else:
            lines.append("Required conditions:")
        for g in container_preds:
            if g["predicate"] == "in":
                lines.append(f"  - {g['args'][0]} must be in {g['args'][1]}")
            elif g["predicate"] == "addedto":
                lines.append(f"  - {g['args'][0]} must be added to {g['args'][1]}")
            elif g["predicate"] == "isboiling":
                lines.append(f"  - {g['args'][0]} must be boiling")
            elif g["predicate"] == "container_at":
                lines.append(f"  - {g['args'][0]} must be at {g['args'][1]}")

    # Any remaining predicates not covered above
    covered = {"on", "at", "clear", "iscooked", "iscut", "isfried",
               "in", "addedto", "isboiling", "container_at"}
    remaining = [g for g in goal_predicates if g["predicate"] not in covered]
    if remaining:
        for g in remaining:
            args_str = ", ".join(g["args"])
            lines.append(f"  - {g['predicate']}({args_str})")

    return "\n".join(lines).rstrip()


# ---------------------------------------------------------------------------
# Build the full NL prompt
# ---------------------------------------------------------------------------
def _build_prompt(env: dict, entity_map: dict, goal_predicates: list[dict]) -> str:
    """Build the complete conversational NL prompt."""
    config = env.get("config", {})
    station_at = entity_map["station_at"]
    lines: list[str] = []

    # Intro
    lines.append("You are a robot chef in a kitchen with the following setup:")
    lines.append("")

    # Stations
    lines.append("Stations:")
    for entity, name in entity_map["stations"]:
        stype = entity["name"]
        desc = _STATION_DESCRIPTIONS.get(stype, "")
        desc_str = f" ({desc})" if desc else ""
        lines.append(f"  {name} at ({entity['x']}, {entity['y']}){desc_str}")
    lines.append("")

    # Items — with stacking relationships
    items_by_station: dict[str, list[tuple[dict, str]]] = {}
    for entity, name in entity_map["items"]:
        sname = station_at.get((entity["x"], entity["y"]),
                               f"({entity['x']}, {entity['y']})")
        items_by_station.setdefault(sname, []).append((entity, name))
    for sname in items_by_station:
        items_by_station[sname].sort(key=lambda x: x[0].get("stack-level", 0))

    lines.append("Items:")
    for entity, name in entity_map["items"]:
        sname = station_at.get((entity["x"], entity["y"]),
                               f"({entity['x']}, {entity['y']})")
        stack_level = entity.get("stack-level", 0)
        predicates = entity.get("predicates", [])
        station_items = items_by_station.get(sname, [])

        parts: list[str] = [
            f"at {sname} ({entity['x']}, {entity['y']})",
            f"stack-level {stack_level}",
        ]

        if "iscookable" in predicates:
            parts.append("cookable")
        if "iscuttable" in predicates:
            parts.append("cuttable")

        # Stacking relationship
        stack_note = ""
        if len(station_items) > 1:
            if stack_level > 0:
                below = [n for e, n in station_items
                         if e.get("stack-level", 0) == stack_level - 1]
                if below:
                    stack_note = f" ({name} is on top of {below[0]})"
            is_top = all(
                e.get("stack-level", 0) <= stack_level
                for e, _ in station_items
            )
            if is_top and stack_level == 0:
                pass
            elif is_top:
                stack_note = stack_note or f" ({name} is the top item)"

        lines.append(f"  {name}: {', '.join(parts)}{stack_note}")
    lines.append("")

    # Containers
    if entity_map["containers"]:
        lines.append("Containers:")
        for entity, name in entity_map["containers"]:
            sname = station_at.get(
                (entity["x"], entity["y"]),
                f"({entity['x']}, {entity['y']})",
            )
            lines.append(f"  {name}: at {sname} ({entity['x']}, {entity['y']})")
        lines.append("")

    # Players
    lines.append("Player:")
    for entity, name in entity_map["players"]:
        d = entity.get("direction", [0, 0])
        facing_x = entity["x"] + d[0]
        facing_y = entity["y"] + d[1]
        facing_station = station_at.get((facing_x, facing_y))
        facing_str = f"facing {facing_station}" if facing_station else ""
        parts = [f"at ({entity['x']}, {entity['y']})"]
        if facing_str:
            parts.append(facing_str)
        lines.append(f"  {name}: {', '.join(parts)}")
    lines.append("")

    # Processing requirements
    cook_time = config.get("cook_time", {})
    if isinstance(cook_time, dict):
        cook_time = cook_time.get("default", 3)
    num_cuts = config.get("num_cuts", {})
    if isinstance(num_cuts, dict):
        num_cuts = num_cuts.get("default", 3)

    lines.append("Processing requirements:")
    for entity, name in entity_map["items"]:
        predicates = entity.get("predicates", [])
        for pred, (desc, station_type, config_key) in _PREDICATE_PROCESSING.items():
            if pred in predicates:
                time_val = cook_time if config_key == "cook_time" else num_cuts
                lines.append(
                    f"  - {name} needs to be {desc} on a {station_type}, "
                    f"which takes {time_val} time steps"
                )
    lines.append("  - You can only carry one item at a time")

    # Stacking constraint: if there are multi-item stacks
    for sname, items in items_by_station.items():
        if len(items) > 1:
            top = items[-1]
            bottom = items[0]
            lines.append(
                f"  - You must pick up the top item of a stack first "
                f"({top[1]} must be picked up before {bottom[1]})"
            )
            break
    lines.append("")

    # Goal description
    task_text = env.get("goal_description", "Complete the task")
    goal_text = _build_goal_description(task_text, goal_predicates, entity_map)
    lines.append(goal_text)

    lines.append("")
    lines.append("What is the step-by-step plan to complete this task?")

    return "\n".join(lines)


# ---------------------------------------------------------------------------
# Main conversion (pure Python, no LLM)
# ---------------------------------------------------------------------------
def convert(env: dict) -> AsyncPlanningProblem:
    """Convert an environment JSON to an AsyncPlanningProblem."""
    entity_map = _assign_entity_names(env)

    task_text = env.get("goal_description", "Complete the task")
    goal_predicates = _resolve_goals(env, entity_map)
    prompt = _build_prompt(env, entity_map, goal_predicates)

    config_flat: dict = {}
    for k, v in env.get("config", {}).items():
        if isinstance(v, dict) and "default" in v:
            config_flat[k] = v["default"]

    return AsyncPlanningProblem(
        task=task_text,
        prompt=prompt,
        goal_predicates=goal_predicates,
        config=config_flat,
    )


# ---------------------------------------------------------------------------
# Pretty-print
# ---------------------------------------------------------------------------
def format_problem(problem: AsyncPlanningProblem) -> str:
    lines: list[str] = []
    lines.append("=" * 70)
    lines.append("ASYNC PLANNING PROBLEM DESCRIPTION")
    lines.append("=" * 70)
    lines.append("")
    lines.append(problem.prompt)
    lines.append("")
    lines.append("=" * 70)
    return "\n".join(lines)


# ---------------------------------------------------------------------------
# Batch: transform all single-agent async Robotouille envs
# ---------------------------------------------------------------------------
def _is_single_agent(env: dict) -> bool:
    return len(env.get("players", [])) == 1


def _discover_single_agent_async_envs(dir_path: Path) -> list[tuple[str, Path]]:
    results: list[tuple[str, Path]] = []
    if not dir_path.exists():
        return results
    for p in sorted(dir_path.glob("*.json")):
        try:
            env = json.loads(p.read_text(encoding="utf-8"))
            if _is_single_agent(env):
                results.append((p.stem, p))
        except (json.JSONDecodeError, KeyError):
            continue
    return results


def transform_folder(
    folder_path: Path | str,
    output_path: Path | str,
) -> list[dict]:
    """Transform all single-agent JSONs in folder; save to output_path."""
    folder = Path(folder_path)
    if not folder.is_dir():
        raise ValueError(f"Not a directory: {folder_path}")

    envs = _discover_single_agent_async_envs(folder)
    records: list[dict] = []

    for env_id, json_path in tqdm(envs, desc="Transforming environments"):
        env_json = json.loads(json_path.read_text(encoding="utf-8"))
        problem = convert(env_json)
        rec = {
            "id": env_id,
            "original_json": env_json,
            "nl": {
                "task": problem.task,
                "prompt": problem.prompt,
                "goal_predicates": [
                    {"predicate": g["predicate"], "args": g["args"]}
                    for g in problem.goal_predicates
                ],
                "config": problem.config,
            },
        }
        records.append(rec)

    out = Path(output_path)
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(
        json.dumps(records, indent=2, ensure_ascii=False), encoding="utf-8"
    )
    return records


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------
def main():
    import argparse

    parser = argparse.ArgumentParser(
        description="Convert Robotouille JSON to async planning problem (no LLM)"
    )
    parser.add_argument(
        "--env-json-path",
        default="baselines/robotouille/environments/env_generator/examples/asynchronous",
    )
    parser.add_argument(
        "--output",
        default="data/robotouille_single_agent_async.json",
    )
    args = parser.parse_args()

    path = Path(args.env_json_path)
    if not path.is_absolute():
        path = _PROJECT_ROOT / path
    if path.is_dir():
        records = transform_folder(path, output_path=args.output)
        print(f"Transformed {len(records)} envs → {args.output}")
    elif path.is_file():
        env_json = json.loads(path.read_text(encoding="utf-8"))
        if not _is_single_agent(env_json):
            print("Warning: multi-agent env")
        problem = convert(env_json)
        print(format_problem(problem))
        rec = {
            "id": path.stem,
            "original_json": env_json,
            "nl": {
                "task": problem.task,
                "prompt": problem.prompt,
                "goal_predicates": [
                    {"predicate": g["predicate"], "args": g["args"]}
                    for g in problem.goal_predicates
                ],
                "config": problem.config,
            },
        }
        out = Path(args.output)
        out.parent.mkdir(parents=True, exist_ok=True)
        out.write_text(
            json.dumps([rec], indent=2, ensure_ascii=False), encoding="utf-8"
        )
        print(f"Saved → {args.output}")
    else:
        raise ValueError(f"Path not found: {path}")


if __name__ == "__main__":
    main()
