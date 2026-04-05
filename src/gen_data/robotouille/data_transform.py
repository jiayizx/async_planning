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

_PREDICATE_PROCESSING = {
    "iscookable": ("cooked", "stove", "cook_time"),
    "iscuttable": ("cut", "board", "num_cuts"),
    "isfryable": ("fried", "fryer", "cook_time"),
    "isfryableifcut": ("fried (after cutting)", "fryer", "cook_time"),
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
# Build goal predicates as a bullet list
# ---------------------------------------------------------------------------
def _build_goal_lines(goal_predicates: list[dict]) -> list[str]:
    """Render each goal predicate as a readable bullet point."""
    _PRED_TEMPLATES = {
        "on": lambda a: f"{a[0]} is directly on {a[1]}",
        "at": lambda a: f"{a[0]} is at {a[1]}",
        "atop": lambda a: f"{a[0]} is on top of {a[1]}",
        "clear": lambda a: f"{a[0]} has nothing on top (clear)",
        "iscooked": lambda a: f"{a[0]} is cooked",
        "iscut": lambda a: f"{a[0]} is cut",
        "isfried": lambda a: f"{a[0]} is fried",
        "in": lambda a: f"{a[0]} is in {a[1]}",
        "addedto": lambda a: f"{a[0]} is added to {a[1]}",
        "isboiling": lambda a: f"{a[0]} is boiling",
        "container_at": lambda a: f"{a[0]} is at {a[1]}",
    }
    lines: list[str] = []
    for g in goal_predicates:
        template = _PRED_TEMPLATES.get(g["predicate"])
        if template:
            lines.append(f"- {template(g['args'])}")
        else:
            args_str = ", ".join(g["args"])
            lines.append(f"- {g['predicate']}({args_str})")
    return lines


# ---------------------------------------------------------------------------
# Build the full NL prompt
# ---------------------------------------------------------------------------
def _direction_word(d: list) -> str:
    """Convert a direction vector to a compass-like word."""
    dx, dy = d[0], d[1]
    if dy == -1:
        return "up" if dx == 0 else ("up-left" if dx == -1 else "up-right")
    if dy == 1:
        return "down" if dx == 0 else ("down-left" if dx == -1 else "down-right")
    if dx == -1:
        return "left"
    if dx == 1:
        return "right"
    return "nowhere"


def _build_prompt(
    env: dict,
    entity_map: dict,
    goal_predicates: list[dict],
    *,
    include_coordinates: bool = True,
) -> str:
    """Build the complete NL prompt.

    If include_coordinates is False, station/item/player positions are described
    only by names (e.g. which station an item is on), not grid (x, y) values.
    """
    config = env.get("config", {})
    width = env.get("width", "?")
    height = env.get("height", "?")
    station_at = entity_map["station_at"]
    lines: list[str] = []

    # Intro with grid size and player position
    player_entity, player_name = entity_map["players"][0]
    d = player_entity.get("direction", [0, 0])
    facing = _direction_word(d)
    if include_coordinates:
        intro = (
            f"You are a chef in a {width}x{height} kitchen. "
            f"You are currently at ({player_entity['x']}, {player_entity['y']}) "
            f"facing {facing}. "
            f"You can move up/down/left/right one grid each step."
        )
    else:
        intro = (
            f"You are a chef in a {width}x{height} kitchen. "
            f"You are at your starting position facing {facing}. "
            f"You can move up/down/left/right one grid each step."
        )
    lines.append(intro)
    lines.append("")

    # Stations
    n_stations = len(entity_map["stations"])
    lines.append(f"There are {n_stations} stations:")
    for entity, name in entity_map["stations"]:
        if include_coordinates:
            lines.append(f"  {name} at ({entity['x']}, {entity['y']})")
        else:
            lines.append(f"  {name}")
    lines.append("")

    # Items
    n_items = len(entity_map["items"])
    lines.append(f"There are {n_items} items:")
    for entity, name in entity_map["items"]:
        sname = station_at.get(
            (entity["x"], entity["y"]),
            f"({entity['x']}, {entity['y']})",
        )
        if include_coordinates:
            lines.append(f"  {name} at {sname} ({entity['x']}, {entity['y']})")
        else:
            if sname.startswith("("):
                lines.append(f"  {name} (location unspecified)")
            else:
                lines.append(f"  {name} on {sname}")
    lines.append("")

    # Containers
    if entity_map["containers"]:
        n_containers = len(entity_map["containers"])
        lines.append(f"There are {n_containers} containers:")
        for entity, name in entity_map["containers"]:
            sname = station_at.get(
                (entity["x"], entity["y"]),
                f"({entity['x']}, {entity['y']})",
            )
            if include_coordinates:
                lines.append(f"  {name} at {sname} ({entity['x']}, {entity['y']})")
            else:
                if sname.startswith("("):
                    lines.append(f"  {name} (location unspecified)")
                else:
                    lines.append(f"  {name} on {sname}")
        lines.append("")

    # Requirements
    cook_time = config.get("cook_time", {})
    if isinstance(cook_time, dict):
        cook_time = cook_time.get("default", 3)
    num_cuts = config.get("num_cuts", {})
    if isinstance(num_cuts, dict):
        num_cuts = num_cuts.get("default", 3)

    lines.append("Requirements for the items:")

    # Stack ordering constraints — compare every pair at the same station
    items_by_station: dict[str, list[tuple[dict, str]]] = {}
    for entity, name in entity_map["items"]:
        sname = station_at.get(
            (entity["x"], entity["y"]),
            f"({entity['x']}, {entity['y']})",
        )
        items_by_station.setdefault(sname, []).append((entity, name))

    for sname, items in items_by_station.items():
        if len(items) <= 1:
            continue
        items_sorted = sorted(items, key=lambda x: x[0].get("stack-level", 0))
        for j in range(len(items_sorted)):
            for k in range(j + 1, len(items_sorted)):
                lower_ent, lower_name = items_sorted[j]
                upper_ent, upper_name = items_sorted[k]
                lower_lvl = lower_ent.get("stack-level", 0)
                upper_lvl = upper_ent.get("stack-level", 0)
                if upper_lvl > lower_lvl:
                    lines.append(
                        f"  {lower_name} (stack-level {lower_lvl}) must be "
                        f"processed before {upper_name} (stack-level {upper_lvl}), "
                        f"you need to pick up {upper_name} before {lower_name}"
                    )

    # Processing requirements (cook, cut, fry)
    for entity, name in entity_map["items"]:
        predicates = entity.get("predicates", [])
        for pred, (desc, station_type, config_key) in _PREDICATE_PROCESSING.items():
            if pred in predicates:
                time_val = cook_time if config_key == "cook_time" else num_cuts
                lines.append(
                    f"  {name} must be {desc}, which will take {time_val} steps"
                )
    lines.append("")

    # Goal
    task_text = env.get("goal_description", "Complete the task")
    lines.append(
        f"Now you need to {task_text.lower()}, "
        f"and to do so, you need to make sure:"
    )
    for gl in _build_goal_lines(goal_predicates):
        lines.append(f"  {gl}")
    lines.append("")

    lines.append("Use the LLM to generate the plan.")

    return "\n".join(lines)


# ---------------------------------------------------------------------------
# Main conversion (pure Python, no LLM)
# ---------------------------------------------------------------------------
def convert(env: dict, *, include_coordinates: bool = True) -> AsyncPlanningProblem:
    """Convert an environment JSON to an AsyncPlanningProblem.

    include_coordinates: if False, omit grid (x, y) from the NL (stations/items/player).
    """
    entity_map = _assign_entity_names(env)

    task_text = env.get("goal_description", "Complete the task")
    goal_predicates = _resolve_goals(env, entity_map)
    prompt = _build_prompt(
        env, entity_map, goal_predicates, include_coordinates=include_coordinates
    )

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
    *,
    include_coordinates: bool = True,
) -> list[dict]:
    """Transform all single-agent JSONs in folder; save to output_path."""
    folder = Path(folder_path)
    if not folder.is_dir():
        raise ValueError(f"Not a directory: {folder_path}")

    envs = _discover_single_agent_async_envs(folder)
    records: list[dict] = []

    for env_id, json_path in tqdm(envs, desc="Transforming environments"):
        env_json = json.loads(json_path.read_text(encoding="utf-8"))
        problem = convert(env_json, include_coordinates=include_coordinates)
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
    parser.add_argument(
        "--no-coordinates",
        action="store_true",
        help="Omit grid (x, y) coordinates from the NL; use station names only",
    )
    args = parser.parse_args()

    include_coordinates = not args.no_coordinates

    path = Path(args.env_json_path)
    if not path.is_absolute():
        path = _PROJECT_ROOT / path
    if path.is_dir():
        records = transform_folder(
            path, output_path=args.output, include_coordinates=include_coordinates
        )
        print(f"Transformed {len(records)} envs → {args.output}")
    elif path.is_file():
        env_json = json.loads(path.read_text(encoding="utf-8"))
        if not _is_single_agent(env_json):
            print("Warning: multi-agent env")
        problem = convert(env_json, include_coordinates=include_coordinates)
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
