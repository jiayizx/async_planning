"""
Convert Robotouille task JSON into natural language using templates.

Usage:
    python json_to_nl.py --input task.json
    python json_to_nl.py --input tasks.json --output tasks_nl.json
"""

import json
import argparse
from pathlib import Path
from collections import defaultdict


DIRECTION_MAP = {
    (0, -1): "up",
    (0, 1): "down",
    (-1, 0): "left",
    (1, 0): "right",
}


def direction_to_str(d: list | tuple) -> str:
    return DIRECTION_MAP.get(tuple(d), str(d))


def convert_task(task: dict, *, include_coordinates: bool = True) -> str:
    """Build NL from a task dict (or env under original_json).

    If include_coordinates is False, omit grid (x, y) from player, stations, and items.
    """
    data = task.get("original_json", task)

    w = data["width"]
    h = data["height"]
    config = data.get("config", {})
    cook_time = config.get("cook_time", {}).get("default", 3)
    num_cuts = config.get("num_cuts", {}).get("default", 3)

    # --- Stations (built first so player can reference nearest station) ---
    # Sort by (x, y) to match _annotate_robotouille_json naming order
    stations = sorted(data.get("stations", []), key=lambda s: (s["x"], s["y"]))
    # Assign unique names: table_1, table_2, stove_1, etc.
    station_count = defaultdict(int)
    station_labels = []  # parallel to stations list
    # Also build a lookup: (x,y) -> label for matching items to stations
    station_at = {}
    for s in stations:
        station_count[s["name"]] += 1
        label = f'{s["name"]}_{station_count[s["name"]]}'
        station_labels.append(label)
        station_at[(s["x"], s["y"])] = label

    # --- Player ---
    player = data["players"][0]
    px, py = player["x"], player["y"]
    pdir = direction_to_str(player.get("direction", [0, -1]))
    from collections import Counter as _Counter
    _player_seen: _Counter = _Counter()
    _player_seen[player["name"]] += 1
    player_pddl_name = f"{player['name']}_{_player_seen[player['name']]}"
    nearest_station = min(stations, key=lambda s: (s["x"] - px) ** 2 + (s["y"] - py) ** 2)
    nearest_label = station_at[(nearest_station["x"], nearest_station["y"])]

    lines = []
    if include_coordinates:
        pos_clause = f"You are currently at ({px}, {py}) facing {pdir}."
    else:
        pos_clause = f"You are at {nearest_label}, facing {pdir}."
    lines.append(
        f"You are {player_pddl_name}, a robot in a kitchen environment. The objects in the kitchen and your goal are described. "
        f"You are currently in a {w}x{h} kitchen. "
        f"{pos_clause} "
    )
    lines.append("")

    lines.append(f"There are {len(stations)} stations:")
    for s, label in zip(stations, station_labels):
        if include_coordinates:
            lines.append(f"- {label} at ({s['x']}, {s['y']})")
        else:
            lines.append(f"- {label}")
    lines.append("")

    # --- Items ---
    # Sort by (x, y, stack-level) to match _annotate_robotouille_json naming order
    items = sorted(data.get("items", []), key=lambda i: (i["x"], i["y"], i.get("stack-level", 0)))
    item_count = defaultdict(int)
    item_labels = []
    item_label_map = {}  # (x, y, stack-level) -> label
    for item in items:
        item_count[item["name"]] += 1
        label = f'{item["name"]}_{item_count[item["name"]]}'
        item_labels.append(label)
        item_label_map[(item["x"], item["y"], item.get("stack-level", 0))] = label

    # Held items = items at player position
    held_labels = {
        item_label_map[(item["x"], item["y"], item.get("stack-level", 0))]
        for item in items
        if item["x"] == px and item["y"] == py
    }

    lines.append(f"There are {len(items)} items:")
    for item, label in zip(items, item_labels):
        level = item.get("stack-level", 0)
        if item["x"] == px and item["y"] == py:
            # Item held by player
            lines.append(f"- {label}: held by {player_pddl_name}")
        elif level > 0:
            # Item stacked on top of another item
            below_label = item_label_map.get((item["x"], item["y"], level - 1), "unknown")
            station = station_at.get((item["x"], item["y"]), f'({item["x"]},{item["y"]})')
            if include_coordinates:
                lines.append(f"- {label} at ({item['x']}, {item['y']}): on top of {below_label} at {station}")
            else:
                lines.append(f"- {label}: on top of {below_label} at {station}")
        else:
            loc_label = station_at.get((item["x"], item["y"]), f'({item["x"]}, {item["y"]})')
            if include_coordinates:
                lines.append(f"- {label} at ({item['x']}, {item['y']}) on {loc_label}")
            else:
                if str(loc_label).startswith("("):
                    lines.append(f"- {label}: location unknown")
                else:
                    lines.append(f"- {label}: on {loc_label}")
    lines.append("")

    # --- Empty stations ---
    item_coords = {(item["x"], item["y"]) for item in items if item.get("stack-level", 0) == 0}
    empty_stations = [label for s, label in zip(stations, station_labels)
                      if (s["x"], s["y"]) not in item_coords and (s["x"], s["y"]) != (px, py)]
    if empty_stations:
        lines.append(f"Initially empty stations (no items): {', '.join(empty_stations)}")
        lines.append("")

    # --- Robot hand state ---
    if not held_labels:
        lines.append(f"{player_pddl_name} is not holding anything.")
        lines.append("")

    # --- Requirements ---
    # --- Cookable / cuttable predicates ---
    requirements = []
    for item, label in zip(items, item_labels):
        preds = set(item.get("predicates", []))

        for p in preds:
            if p.startswith("iscookable"):
                requirements.append(f"- {label} must be cooked, which will take {cook_time} steps on a stove.")
            if p.startswith("iscuttable"):
                requirements.append(f"- {label} must be cut, which will take {num_cuts} cuts.")
            if p.startswith("isfryable"):
                requirements.append(f"- {label} must be fried, which will take {cook_time} steps on a fryer.")
            if p.startswith("isfryableifcut"):
                requirements.append(f"- {label} can only be fried after being cut, which will take {cook_time} steps on a fryer.")
            if p.startswith("iscookableifcut"):
                requirements.append(f"- {label} can only be cooked after being cut, which will take {cook_time} steps on a stove.")

    # --- Stack ordering ---
    # Group items by level, describe level-to-level constraints
    loc_groups = defaultdict(list)
    for item, label in zip(items, item_labels):
        key = (item.get("stack-level", 0))
        loc_groups[key].append(label)
    for level in sorted(list(loc_groups.keys())):
        # Only append requirement if there actually is a next level.
        if (level + 1) in loc_groups:
            requirements.append(f"- {', '.join(loc_groups[level])} must be stacked before {', '.join(loc_groups[level + 1])}")

    if requirements:
        lines.append("Here are some constraints on the items:")
        lines.extend(requirements)
        lines.append("")

    # --- Goal ---
    goal_desc = data.get("goal_description", "complete the task")
    goals = data.get("goal", [])
    lines.append(f"Now you need to {goal_desc.lower()} To do so, you need to make sure:")

    # Resolve goal args to labels.
    # The ids appear to be opaque internal Robotouille entity IDs. 
    # We resolve by using the args (which name the entity type) and tracking
    # which specific instance is meant based on the goal structure.
    # 
    # Strategy: for each goal predicate, we map (arg_name, arg_id) pairs.
    # We build a mapping from (entity_type, internal_id) -> label by assigning
    # internal ids in order of appearance: items get ids 1,2,3,... and 
    # stations get ids 1,2,3,... in the order they appear in the JSON.
    #
    # However, looking at the data, the ids seem to use a single shared space.
    # We try: items are numbered starting at 1 in JSON order, stations also
    # starting at 1, but ids in goals use a *per-name* counting scheme or
    # a global scheme. Since the exact scheme may vary, we build both and
    # use the arg name to disambiguate.

    # Goal predicate ids are opaque Robotouille entity IDs.
    # We display them as arg_name(id) for unambiguous reference.
    # The arg names tell us the entity type; the id distinguishes instances.

    PREDICATE_TEMPLATES = {
        "item_on":  lambda r: f"{r[0]} is on {r[1]}",
        "item_at":  lambda r: f"{r[0]} is at {r[1]}",
        "iscooked": lambda r: f"{r[0]} is cooked",
        "iscut":    lambda r: f"{r[0]} is cut",
        "isfried":  lambda r: f"{r[0]} is fried",
        "clear":    lambda r: f"{r[0]} has nothing on top of it (clear)",
        "on":       lambda r: f"{r[0]} is on {r[1]}",
        "holding":  lambda r: f"{player_pddl_name} is holding {r[0]}",
    }

    # Resolve goal ids → pddl_names using same scheme as _annotate_robotouille_json:
    # group pddl entities by base type, sort ids, map i-th id to i-th pddl_name.
    type_to_pddl: dict[str, list[str]] = {}
    for lbl in item_labels:
        base = lbl.rsplit("_", 1)[0]
        type_to_pddl.setdefault(base, []).append(lbl)
    for lbl in station_labels:
        base = lbl.rsplit("_", 1)[0]
        type_to_pddl.setdefault(base, []).append(lbl)
    type_to_pddl[player["name"]] = [player_pddl_name]

    type_ids: dict[str, set] = {}
    for g in goals:
        for arg, gid in zip(g.get("args", []), g.get("ids", [])):
            type_ids.setdefault(arg, set()).add(gid)

    id_to_pddl: dict[str, dict] = {}
    for arg_type, id_set in type_ids.items():
        sorted_ids = sorted(id_set)
        pddl_names = sorted(type_to_pddl.get(arg_type, []))
        id_to_pddl[arg_type] = {
            gid: pddl_names[i] if i < len(pddl_names) else f"{arg_type}_{i+1}"
            for i, gid in enumerate(sorted_ids)
        }

    for g in goals:
        pred = g["predicate"]
        args = g.get("args", [])
        ids = g.get("ids", list(range(1, len(args) + 1)))
        resolved = [id_to_pddl.get(arg, {}).get(aid, f"{arg}_{aid}") for arg, aid in zip(args, ids)]
        template = PREDICATE_TEMPLATES.get(pred)
        goal_str = template(resolved) if template else f"{pred}({', '.join(resolved)})"
        lines.append(f"- {goal_str}")
    
    # lines.append("Please generate the the step by step plan to complete the task. And output in the following format:") 
    # lines.append("```")
    # lines.append("step_1: action_1")
    # lines.append("step_2: action_2")
    # lines.append("...")
    # lines.append("step_n: action_n")
    # lines.append("```")

    return "\n".join(lines)


def main():
    parser = argparse.ArgumentParser(
        description="Convert Robotouille task JSON(s) to natural language"
    )
    parser.add_argument(
        "--env-json-path",
        default="baselines/robotouille/environments/env_generator/examples/asynchronous",
        help="Directory of env JSONs or a single JSON file",
    )
    parser.add_argument(
        "--output", "-o",
        default="data/robotouille_single_agent_async.json",
        help="Output JSON file path",
    )
    parser.add_argument(
        "--no-coordinates",
        default=True,
        help="Omit grid (x, y) coordinates from the NL; use station names only",
    )
    args = parser.parse_args()
    include_coordinates = not args.no_coordinates # default is True

    path = Path(args.env_json_path)
    if not path.is_absolute():
        project_root = Path(__file__).resolve().parent.parent.parent.parent
        path = project_root / path

    if path.is_dir():
        json_files = sorted(path.glob("*.json"))
        tasks = []
        for f in json_files:
            env = json.loads(f.read_text(encoding="utf-8"))
            if len(env.get("players", [])) == 1:
                tasks.append({"id": f.stem, "original_json": env})
    elif path.is_file():
        data = json.loads(path.read_text(encoding="utf-8"))
        if isinstance(data, list):
            tasks = data
        else:
            tasks = [{"id": path.stem, "original_json": data}]
    else:
        raise FileNotFoundError(f"Path not found: {path}")

    results = []
    for idx, task in enumerate(tasks):
        tid = task.get("id", "unknown")
        nl = convert_task(task, include_coordinates=include_coordinates)
        results.append({"id": tid, "original_json": task.get("original_json", task), "natural_language": nl})
        print(f"=== {idx} / {len(tasks)} ===")
        print(nl)
        print()

    out = Path(args.output)
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps(results, indent=2, ensure_ascii=False), encoding="utf-8")
    print(f"Saved {len(results)} result(s) to {out}")


if __name__ == "__main__":
    main()