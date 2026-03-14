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


def convert_task(task: dict) -> str:
    data = task.get("original_json", task)

    w = data["width"]
    h = data["height"]
    config = data.get("config", {})
    cook_time = config.get("cook_time", {}).get("default", 3)
    num_cuts = config.get("num_cuts", {}).get("default", 3)

    # --- Player ---
    player = data["players"][0]
    px, py = player["x"], player["y"]
    pdir = direction_to_str(player.get("direction", [0, -1]))

    lines = []
    lines.append(
        f"You are a chef in a {w}x{h} kitchen. "
        f"You are currently at ({px}, {py}) facing {pdir}. "
        f"You can either move up/down/left/right each step."
    )
    lines.append("")

    # --- Stations ---
    stations = data.get("stations", [])
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

    lines.append(f"There are {len(stations)} stations:")
    for s, label in zip(stations, station_labels):
        lines.append(f"- {label} at ({s['x']}, {s['y']})")
    lines.append("")

    # --- Items ---
    items = data.get("items", [])
    item_count = defaultdict(int)
    item_labels = []  # parallel to items list (1-indexed id -> label)
    for item in items:
        item_count[item["name"]] += 1
        label = f'{item["name"]}_{item_count[item["name"]]}'
        item_labels.append(label)

    lines.append(f"There are {len(items)} items:")
    for item, label in zip(items, item_labels):
        loc_label = station_at.get((item["x"], item["y"]), f'({item["x"]}, {item["y"]})')
        lines.append(f"- {label} at ({item['x']}, {item['y']}) on {loc_label}")
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
        "item_on":  lambda resolved: f"{resolved[0]} is on {resolved[1]}",
        "item_at":  lambda resolved: f"{resolved[0]} is at {resolved[1]}",
        "iscooked": lambda resolved: f"{resolved[0]} is cooked",
        "iscut":    lambda resolved: f"{resolved[0]} is cut",
        "clear":    lambda resolved: f"{resolved[0]} has nothing on top of it (clear)",
        "on":       lambda resolved: f"{resolved[0]} is on {resolved[1]}",
        "holding":  lambda resolved: f"robot is holding {resolved[0]}",
    }

    # Build a mapping: for each (arg_name, id) pair, create a readable label.
    # We count how many distinct ids exist per arg_name across all goals
    # to decide if we need disambiguation.
    from collections import Counter
    name_id_pairs = set()
    for g in goals:
        for arg, aid in zip(g["args"], g.get("ids", [])):
            name_id_pairs.add((arg, aid))
    
    # For each unique name, sort its ids and assign _1, _2, etc.
    name_to_ids = defaultdict(set)
    for name, aid in name_id_pairs:
        name_to_ids[name].add(aid)
    
    id_label_map = {}
    for name, ids_set in name_to_ids.items():
        sorted_ids = sorted(ids_set)
        if len(sorted_ids) == 1:
            id_label_map[(name, sorted_ids[0])] = name
        else:
            for idx, aid in enumerate(sorted_ids, 1):
                id_label_map[(name, aid)] = f"{name}_{idx}"

    for g in goals:
        pred = g["predicate"]
        args = g["args"]
        ids = g.get("ids", list(range(1, len(args) + 1)))

        resolved = [id_label_map.get((arg, aid), f"{arg}_{aid}") for arg, aid in zip(args, ids)]

        template = PREDICATE_TEMPLATES.get(pred)
        if template:
            goal_str = template(resolved)
        else:
            goal_str = f"{pred}({', '.join(resolved)})"

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
    args = parser.parse_args()

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
        nl = convert_task(task)
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