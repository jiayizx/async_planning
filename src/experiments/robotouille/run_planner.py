"""
Run LLM-as-Planner baseline on Robotouille.

Pipeline per example:
  1. Load record from data/robotouille_single_agent_async.json
  2. Build NL prompt from record's 'nl' field
  3. LLM directly generates a plan (sequence of PDDL-style actions)

Unlike run_formalizer.py, this skips the PDDL formalization + solver step
and asks the LLM to produce the action sequence directly.

Evaluation:
  - plan_found_rate: fraction of problems where the LLM outputs a parseable plan
  - plan_steps: average number of actions
  - env_simulation: validate plan using the Robotouille game engine
  - pddl_simulation: validate plan against the STRIPS domain
"""
from __future__ import annotations

import argparse
import json
import os
import re
import sys
from pathlib import Path

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

from src.experiments.utils import build_llm_client
from src.llms.base import BaseLLM
from src.evaluation.robotouille.eval import evaluate_record, summarize_eval


# ── Structured output schema ────────────────────────────────────────────


class RobotouillePlan(BaseModel):
    plan: list[str] = Field(
        description=(
            "Ordered list of PDDL actions to execute. "
            "Each entry is a single action string like 'move robot_1 table_1 table_2' "
            "or 'pick-up robot_1 bread_2 table_1'."
        )
    )


# ── System prompt ────────────────────────────────────────────────────────

# NOTE: Updated prompt to request PDDL-style action format directly,
# with explicit examples and argument ordering instructions.

_PLANNER_SYSTEM_PROMPT = """\
You are a helpful plan organizer.

Given a JSON description of a kitchen planning problem, you must produce a step-by-step plan using the available actions to reach the goal.

## JSON Schema

```
{
  "width": int, "height": int,
  "players": [{"name": str, "x": int, "y": int, "direction": [dx, dy]}],
  "stations": [{"name": str, "x": int, "y": int}],
  "items": [
    {"name": str, "x": int, "y": int,
     "predicates": ["iscookable", "iscuttable", ...],
     "stack-level": int}
  ],
  "config": {"cook_time": {"default": int}, "num_cuts": {"default": int}},
  "goal": [{"predicate": str, "args": [str], "ids": [int]}],
  "goal_description": str
}
```

## Naming Convention

Assign names by entity type and 1-based array order:
- `stations[0]` of type "table" → `table_1`, `stations[1]` of same type → `table_2`, etc.
- Same rule for items and players: `bread_1`, `chicken_1`, `robot_1`, etc.

## Environment Rules

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

Follow this recipe guide:
Sandwich - A slice of bread, stacked on prepared ingredients, stacked on another slice of bread.
Hamburger - A bottom bun, stacked on prepared ingredients, stacked on a top bun.
Soup - A pot of boiling water containing prepared ingredients served in a bowl.

## CRITICAL: Action Format

You MUST format every action in PDDL style: `action_name arg1 arg2 ...`

Use ONLY station/item/player NAMES (like table_1, stove_1) — NEVER coordinate tuples.

The available actions and their EXACT formats are:

- `move player station_from station_to`
- `pick-up player item station`
- `place player item station`
- `stack player item_top item_bottom station`
- `cook player item station`
- `cut player item station`
- `fry player item station`
- `pick-up-container player container station`
- `place-container player container station`
- `fill-pot player container water station`
- `boil-water player container water station`
- `add-to player item water container station`
- `fill-bowl player bowl pot water station`
- `unstack player item_top item_bottom station`

### Examples:
```
move robot_1 table_1 stove_1
pick-up robot_1 chicken_1 table_2
place robot_1 chicken_1 stove_1
cook robot_1 chicken_1 stove_1
cook robot_1 chicken_1 stove_1
cook robot_1 chicken_1 stove_1
pick-up robot_1 chicken_1 stove_1
stack robot_1 chicken_1 bread_1 table_1
cut robot_1 lettuce_1 board_1
pick-up-container robot_1 pot_1 table_2
fill-pot robot_1 pot_1 water_1 sink_1
boil-water robot_1 pot_1 water_1 stove_1
add-to robot_1 potato_1 water_1 pot_1 stove_1
fill-bowl robot_1 bowl_1 pot_1 water_1 stove_1
```

### Common mistakes to avoid:
- Do NOT use coordinates: `move robot_1 (0, 2) (1, 3)` is WRONG
- The player argument always comes FIRST after the action name
- For `stack`, the first item is placed ON TOP of the second item
- Include the station argument for `stack` and `unstack`
- Do not place an item onto an occupied station unless you are using `stack`
- Do not move from a station where the robot is not currently located
- Use the exact object names implied by the JSON arrays, such as `bread_1`,
  `bread_2`, `table_1`, and `robot_1`

Always format your response as follows:
```json
{
    "plan": [
        "move robot_1 table_1 stove_1",
        "pick-up robot_1 chicken_1 stove_1",
        "..."
    ]
}
```
"""

_PLANNER_USER_TEMPLATE = """\
Here is the environment JSON:
```json
{original_json}
```

{starting_station_hint}

Please think step by step and produce a step-by-step plan using the PDDL-style action format described above.
"""

# ── Data loading ────────────────────────────────────────────────────────

def _load_records(data_path: Path) -> list[dict]:
    if not data_path.exists():
        raise FileNotFoundError(f"Data file not found: {data_path}")
    records = json.loads(data_path.read_text(encoding="utf-8"))
    if not isinstance(records, list):
        raise ValueError(f"Expected JSON array, got {type(records).__name__}")
    return records


def _expand_with_seeds(
    records: list[dict],
    seeds: list[int],
    *,
    include_coordinates: bool = True,
) -> list[dict]:
    """Expand records by applying each seed via randomize_environment.

    Each (record, seed) pair produces one entry. If seeds is empty, returns
    records unchanged (seed=None, base layout).
    """
    if not seeds:
        return records
    try:
        from environments.env_generator.procedural_generator import randomize_environment
    except ImportError as e:
        raise ImportError(f"Cannot import randomize_environment: {e}")

    import copy
    expanded: list[dict] = []
    for rec in records:
        for seed in seeds:
            new_rec = copy.deepcopy(rec)
            new_rec["original_json"] = randomize_environment(
                copy.deepcopy(rec["original_json"]), seed, noisy_randomization=False
            )
            new_rec["seed"] = seed
            new_rec["id"] = f"{rec['id']}_seed{seed}"
            # Rebuild NL prompt from randomized env
            from src.gen_data.robotouille.data_transform_regex import convert_task
            new_rec["natural_language"] = convert_task(
                new_rec["original_json"], include_coordinates=include_coordinates
            )
            expanded.append(new_rec)
    return expanded


def _format_nl(nl_dict: dict) -> str:
    if "prompt" in nl_dict:
        return nl_dict["prompt"]
    lines: list[str] = []
    lines.append("## Task\n")
    lines.append(nl_dict.get("task", ""))
    lines.append("\n## Environment\n")
    lines.append(nl_dict.get("environment", ""))
    lines.append("\n## Goal Predicates\n")
    for g in nl_dict.get("goal_predicates", []):
        args_str = ", ".join(g["args"])
        lines.append(f"  - {g['predicate']}({args_str})")
    return "\n".join(lines)


# ── Starting station detection ──────────────────────────────────────────


def _find_nearest_station(original_json: dict) -> str | None:
    """Find the station nearest to the robot's starting position from JSON.

    Returns a hint string like:
        "IMPORTANT: The robot starts at station table_1. Use 'table_1' as station_from."
    or None if we can't determine it.
    """
    players = original_json.get("players", [])
    stations = original_json.get("stations", [])
    if not players or not stations:
        return None

    player = players[0]
    rx, ry = player["x"], player["y"]
    dx, dy = player.get("direction", [0, -1])
    facing_x, facing_y = rx + dx, ry + dy

    # Build station name map (type + 1-based index)
    from collections import defaultdict
    type_count: dict[str, int] = defaultdict(int)
    station_labels = []
    for s in stations:
        type_count[s["name"]] += 1
        station_labels.append(f"{s['name']}_{type_count[s['name']]}")

    # Find station at facing position first (that's where robot stands)
    for s, label in zip(stations, station_labels):
        if s["x"] == facing_x and s["y"] == facing_y:
            return (
                f"IMPORTANT: The robot starts facing station {label} at ({facing_x}, {facing_y}). "
                f"Use '{label}' as station_from in your first move action."
            )

    # Fallback: nearest station by Manhattan distance from player position
    best_label, best_dist, best_s = None, float("inf"), None
    for s, label in zip(stations, station_labels):
        dist = abs(rx - s["x"]) + abs(ry - s["y"])
        if dist < best_dist:
            best_dist, best_label, best_s = dist, label, s

    if best_label:
        return (
            f"IMPORTANT: The robot's starting position ({rx}, {ry}) is closest to "
            f"station {best_label} at ({best_s['x']}, {best_s['y']}). "
            f"Use '{best_label}' as station_from in your first move action."
        )
    return None


# ── Plan parsing ────────────────────────────────────────────────────────


def _parse_plan_response(response: str) -> list[str] | None:
    """Parse the LLM response into a list of action strings.

    Handles both structured JSON and free-text responses.
    """
    if not response:
        return None

    # Try JSON parsing first
    try:
        data = json.loads(response)
        if isinstance(data, dict) and "plan" in data:
            plan = data["plan"]
            if isinstance(plan, list) and all(isinstance(a, str) for a in plan):
                return [a.strip() for a in plan if a.strip()]
    except (json.JSONDecodeError, KeyError):
        pass

    # Try extracting from a JSON code block
    json_match = re.search(r'```(?:json)?\s*(\{.*?\})\s*```', response, re.DOTALL)
    if json_match:
        try:
            data = json.loads(json_match.group(1))
            if isinstance(data, dict) and "plan" in data:
                return [a.strip() for a in data["plan"] if isinstance(a, str) and a.strip()]
        except json.JSONDecodeError:
            pass

    # Try line-by-line: look for lines that match action patterns
    # Updated regex to capture all supported Robotouille/PDDL action names.
    action_pattern = re.compile(
        r'^\s*(?:\d+[\.\)]\s*)?'  # optional step number
        r'\(?\s*'                  # optional opening paren
        r'((?:move|pick-up|place|cook|cut|fry|stack|unstack|'
        r'pick-up-container|place-container|fill-pot|boil-water|'
        r'add-to|fill-bowl|fill-water|fill-container|boil|add|noop)'
        r'(?:\s+[^\s)]+)*)'       # args (no parens in tokens)
        r'\s*\)?\s*$',
        re.IGNORECASE,
    )
    actions = []
    for line in response.splitlines():
        m = action_pattern.match(line.strip())
        if m:
            actions.append(m.group(1).strip())
    if actions:
        return actions

    return None


# ── Action normalization (NL-style → PDDL-style) ───────────────────────


# Mapping from coordinate tuples to station names, built per-problem
def _build_coord_to_station(original_json: dict) -> dict[str, str]:
    """Build a mapping from '(x, y)' strings to station names from JSON."""
    from collections import defaultdict
    mapping = {}
    type_count: dict[str, int] = defaultdict(int)
    for s in original_json.get("stations", []):
        type_count[s["name"]] += 1
        label = f"{s['name']}_{type_count[s['name']]}"
        coord_key = f"({s['x']},{s['y']})"
        coord_key2 = f"({s['x']}, {s['y']})"
        mapping[coord_key] = label
        mapping[coord_key2] = label
    return mapping


def _normalize_action(action_str: str, coord_to_station: dict[str, str] | None = None) -> str:
    """Normalize a single action string from NL-style to PDDL-style.

    Handles conversions like:
      "Move robot_1 (0, 2) (1, 3)"           → "move robot_1 table_1 table_2"
      "Pick up chicken_1 from table_2 using robot_1" → "pick-up robot_1 chicken_1 table_2"
      "Place chicken_1 on stove_1 using robot_1"     → "place robot_1 chicken_1 stove_1"
      "Cook chicken_1 on stove_1 using robot_1"      → "cook robot_1 chicken_1 stove_1"
      "Cut lettuce_1 on board_1 using robot_1"       → "cut robot_1 lettuce_1 board_1"
      "Fry onion_1 on fryer_1 using robot_1"         → "fry robot_1 onion_1 fryer_1"
      "Stack cheese_1 on top of chicken_1 using robot_1" → "stack robot_1 cheese_1 chicken_1"
      "Unstack bread_2 from bread_1 using robot_1"   → "unstack robot_1 bread_2 bread_1"
      "Fill pot_1 with water_1 from sink_1 using robot_1"  → "fill-pot robot_1 pot_1 water_1 sink_1"
      "Boil water_1 in pot_1 on stove_1 using robot_1"     → "boil-water robot_1 pot_1 water_1 stove_1"
      "Add potato_1 into water_1 in pot_1 using robot_1"   → "add-to robot_1 potato_1 water_1 pot_1 stove_1"
      "Fill bowl_1 with water_1 from pot_1 using robot_1"  → "fill-bowl robot_1 bowl_1 pot_1 water_1 stove_1"
      "Do nothing"                                    → "noop"
    """
    s = action_str.strip()

    # If already in PDDL format (lowercase, no filler words), return as-is
    lower = s.lower()
    if lower == "noop" or lower == "do nothing" or lower == "do_nothing":
        return "noop"

    # Check if it's already in clean PDDL format
    first_token = lower.split()[0] if lower.split() else ""
    pddl_actions = {
        "move", "pick-up", "place", "cook", "cut", "fry",
        "stack", "unstack", "pick-up-container", "place-container",
        "fill-pot", "boil-water", "add-to", "fill-bowl",
        "fill-water", "fill-container", "boil", "add", "noop",
    }
    # If the first token is a known PDDL action and there are no filler words,
    # it's likely already normalized
    filler_words = {"from", "to", "using", "on", "into", "top", "of", "with", "water", "'s", "contents"}
    tokens = s.split()
    has_fillers = any(t.lower().rstrip("'s") in filler_words for t in tokens[1:])

    if first_token in pddl_actions and not has_fillers:
        # Already PDDL-style, just ensure lowercase action name
        tokens[0] = tokens[0].lower()
        # But still resolve any coordinates
        if coord_to_station:
            tokens = _resolve_coordinates_in_tokens(tokens, coord_to_station)
        return " ".join(tokens)

    # ── NL-style normalization via regex patterns ──

    # Do nothing
    if re.match(r'^do\s+nothing$', s, re.IGNORECASE):
        return "noop"

    # Move {p1} from {s1} to {s2}  OR  Move {p1} {s1} {s2}  OR  Move {p1} {coord} {coord/station}
    m = re.match(
        r'^move\s+(\S+)\s+(?:from\s+)?(.+?)\s+(?:to\s+)?(\S+(?:\s*\(\s*\d+\s*,\s*\d+\s*\))?)$',
        s, re.IGNORECASE
    )
    if not m:
        # Try: Move player station_from to station_to (with "to" keyword)
        m = re.match(
            r'^move\s+(\S+)\s+(.+?)\s+to\s+(.+?)$',
            s, re.IGNORECASE
        )
    if m:
        player = m.group(1)
        src = _resolve_station(m.group(2).strip(), coord_to_station)
        dst = _resolve_station(m.group(3).strip(), coord_to_station)
        return f"move {player} {src} {dst}"

    # Pick up {item} from {station} using {player}
    m = re.match(
        r'^pick\s+up\s+(\S+)\s+from\s+(\S+)\s+using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        return f"pick-up {m.group(3)} {m.group(1)} {m.group(2)}"

    # Place {item} on {station} using {player}
    m = re.match(
        r'^place\s+(\S+)\s+on\s+(\S+)\s+using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        return f"place {m.group(3)} {m.group(1)} {m.group(2)}"

    # Stack {item1} on top of {item2} using {player}
    m = re.match(
        r'^stack\s+(\S+)\s+on\s+top\s+of\s+(\S+)\s+using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        return f"stack {m.group(3)} {m.group(1)} {m.group(2)}"

    # Unstack {item1} from {item2} using {player}
    m = re.match(
        r'^unstack\s+(\S+)\s+from\s+(\S+)\s+using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        return f"unstack {m.group(3)} {m.group(1)} {m.group(2)}"

    # Cook {item} on {station} using {player}
    m = re.match(
        r'^cook\s+(\S+)\s+on\s+(\S+)\s+using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        return f"cook {m.group(3)} {m.group(1)} {m.group(2)}"

    # Cut {item} on {station} using {player}
    m = re.match(
        r'^cut\s+(\S+)\s+on\s+(\S+)\s+using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        return f"cut {m.group(3)} {m.group(1)} {m.group(2)}"

    # Fry {item} on {station} using {player}
    m = re.match(
        r'^fry\s+(\S+)\s+on\s+(\S+)\s+using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        return f"fry {m.group(3)} {m.group(1)} {m.group(2)}"

    # Pick up / place containers
    m = re.match(
        r'^pick\s+up\s+container\s+(\S+)\s+from\s+(\S+)\s+using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        return f"pick-up-container {m.group(3)} {m.group(1)} {m.group(2)}"

    m = re.match(
        r'^place\s+container\s+(\S+)\s+on\s+(\S+)\s+using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        return f"place-container {m.group(3)} {m.group(1)} {m.group(2)}"

    # Fill {container} with water from {station} using {player}
    m = re.match(
        r'^fill\s+(\S+)\s+with\s+(\S+)\s+from\s+(\S+)\s+using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        return f"fill-pot {m.group(4)} {m.group(1)} {m.group(2)} {m.group(3)}"

    # Boil {water} in {container} on {station} using {player}
    m = re.match(
        r'^boil\s+(\S+)\s+in\s+(\S+)\s+on\s+(\S+)\s+using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        return f"boil-water {m.group(4)} {m.group(2)} {m.group(1)} {m.group(3)}"

    # Add {item} into {water} in {container} using {player}
    m = re.match(
        r'^add\s+(\S+)\s+into\s+(\S+)\s+in\s+(\S+)(?:\s+at\s+(\S+))?\s+using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        station = m.group(4) or "stove_1"
        return f"add-to {m.group(5)} {m.group(1)} {m.group(2)} {m.group(3)} {station}"

    # Add {item} into {container} using {player}
    m = re.match(
        r'^add\s+(\S+)\s+into\s+(\S+)\s+using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        return f"add-to {m.group(3)} {m.group(1)} water_1 {m.group(2)} stove_1"

    # Fill {container1} with {container2}'s contents using {player}
    m = re.match(
        r'^fill\s+(\S+)\s+with\s+(\S+?)(?:\'s)?\s+(?:contents\s+)?using\s+(\S+)$',
        s, re.IGNORECASE
    )
    if m:
        return f"fill-bowl {m.group(3)} {m.group(1)} {m.group(2)} water_1 stove_1"

    # Fallback: try to at least lowercase and resolve coordinates
    result = s.lower()
    if coord_to_station:
        for coord, station in coord_to_station.items():
            result = result.replace(coord.lower(), station)
    return result


def _resolve_station(text: str, coord_to_station: dict[str, str] | None) -> str:
    """Resolve a station reference that might be a coordinate tuple or a station name.

    Examples:
      "(0, 2)"     → "table_1"  (via coord_to_station mapping)
      "table_1"    → "table_1"
      "stove_1 (1, 1)" → "stove_1"
      "(0, 2) facing up" → resolve the coord part
    """
    text = text.strip()

    # If it's just a plain station name (alphanumeric + underscore), return it
    if re.match(r'^[a-zA-Z]\w*$', text):
        return text

    # Check if it contains a station name followed by coordinates: "table_2 (1, 3)"
    m = re.match(r'^([a-zA-Z]\w*)\s*\(', text)
    if m:
        return m.group(1)

    # Check if it's a coordinate tuple: "(x, y)" or "(x,y)"
    coord_match = re.search(r'\((\d+)\s*,\s*(\d+)\)', text)
    if coord_match and coord_to_station:
        x, y = coord_match.group(1), coord_match.group(2)
        for fmt in [f"({x},{y})", f"({x}, {y})"]:
            if fmt in coord_to_station:
                return coord_to_station[fmt]

    # Last resort: return the text with whitespace cleaned
    return re.sub(r'\s+', '_', text)


def _resolve_coordinates_in_tokens(
    tokens: list[str], coord_to_station: dict[str, str]
) -> list[str]:
    """Resolve any coordinate tokens in a token list."""
    result = []
    i = 0
    while i < len(tokens):
        # Check for coordinate pattern spanning multiple tokens: "(x," "y)"
        if (
            i + 1 < len(tokens)
            and tokens[i].startswith("(")
            and tokens[i + 1].endswith(")")
        ):
            coord_str = tokens[i] + " " + tokens[i + 1]
            resolved = _resolve_station(coord_str, coord_to_station)
            result.append(resolved)
            i += 2
        else:
            result.append(tokens[i])
            i += 1
    return result


def normalize_plan(
    actions: list[str],
    original_json: dict,
    nearest_station: str | None = None,
) -> list[str]:
    """Normalize a full plan from NL-style to PDDL-style actions.

    Also fixes the first move's source station if the robot starts at
    a coordinate position rather than a named station.
    """
    coord_to_station = _build_coord_to_station(original_json)
    normalized = []
    first_move_fixed = False

    for action in actions:
        norm = _normalize_action(action, coord_to_station)
        tokens = norm.split()

        # Fix the first move: if the source station doesn't match any known station,
        # replace it with the nearest station
        if (
            not first_move_fixed
            and tokens
            and tokens[0] == "move"
            and len(tokens) >= 4
        ):
            first_move_fixed = True
            src = tokens[2]
            # Check if src looks like a coordinate remnant or is unknown
            if nearest_station and (
                src.startswith("(")
                or "_" not in src  # not a proper station name
                or any(c.isdigit() and not c.isalnum() for c in src)
            ):
                # Only replace if source doesn't look like a valid station
                pass  # src might already be resolved, check further

            # Also handle the case where robot starts at coords and Move uses coords
            # that got resolved to a wrong station
            # Actually, just ensure the first move's source is the nearest station
            if nearest_station:
                # Check if the resolved src matches any known station in the problem
                all_stations = set(coord_to_station.values())
                if src not in all_stations and nearest_station in all_stations:
                    tokens[2] = nearest_station
                    norm = " ".join(tokens)

        # Handle "Move robot_1 (0, 1) (0, 1)" same-station moves → noop
        if tokens and tokens[0] == "move" and len(tokens) >= 4 and tokens[2] == tokens[3]:
            norm = "noop"

        normalized.append(norm)

    return normalized


def _actions_to_plan(actions: list[str]) -> list[tuple[float, str, float]]:
    """Convert a list of action strings to the standard plan format."""
    return [(float(i), action, 1.0) for i, action in enumerate(actions)]


# ── Build problem PDDL from original JSON for PDDL simulation ──────────


def _build_problem_pddl_from_json(original_json: dict) -> str | None:
    """Use the Robotouille builder to generate a ground-truth problem PDDL."""
    try:
        from environments.env_generator import builder
        import copy
        problem_str, _ = builder.build_problem(copy.deepcopy(original_json))
        return problem_str
    except Exception:
        return None


# ── Core experiment logic ───────────────────────────────────────────────


def run_task(llm_client: BaseLLM, records: list[dict], args: argparse.Namespace):
    domain_pddl = _DOMAIN_PDDL_PATH.read_text(encoding="utf-8")
    n = min(len(records), args.max_examples)
    records = records[:n]

    # Build messages
    all_messages: list[list[dict]] = []
    gold_data: list[dict] = []
    nl_strings: list[str] = []  # Keep NL strings for normalization

    for rec in tqdm(records, desc="Preparing questions"):
        original_json = rec.get("original_json", {})
        starting_hint = _find_nearest_station(original_json) or ""

        messages = [
            {"role": "system", "content": _PLANNER_SYSTEM_PROMPT},
            {"role": "user", "content": _PLANNER_USER_TEMPLATE.format(
                original_json=json.dumps(original_json, indent=2),
                starting_station_hint=starting_hint,
            )},
        ]
        all_messages.append(messages)
        nl_strings.append(original_json)
        gold_data.append({
            "id": rec.get("id", "?"),
            "original_json": original_json,
        })

    # Batch LLM call
    responses = llm_client.batch_chat(
        all_messages, schema=RobotouillePlan, desc="LLM planning",
    )

    # Parse plans
    plans: list[list[str] | None] = []
    raw_responses: list[str | None] = []
    for resp in responses:
        raw_responses.append(resp)
        plans.append(_parse_plan_response(resp))

    # Retry failed parses
    for retry in range(args.llm_retries):
        failed = [i for i in range(n) if plans[i] is None]
        if not failed:
            break
        print(f"\nRetry {retry + 1}/{args.llm_retries}: {len(failed)} failed to parse")
        retry_msgs = []
        for i in failed:
            msgs = list(all_messages[i])
            if raw_responses[i]:
                msgs.append({"role": "assistant", "content": raw_responses[i]})
            msgs.append({
                "role": "user",
                "content": (
                    "Your response could not be parsed as a valid plan. "
                    "Please output a JSON object with a single key 'plan' "
                    "containing a list of PDDL-style action strings. "
                    "Use the exact Robotouille action formats from the prompt. "
                    "For example, stack/unstack require a station argument, and "
                    "containers require pick-up-container/place-container/fill-pot/"
                    "boil-water/add-to/fill-bowl.\n"
                    "Example:\n"
                    '{"plan": ["move robot_1 table_1 stove_1", '
                    '"pick-up robot_1 chicken_1 table_2", '
                    '"cook robot_1 chicken_1 stove_1"]}'
                ),
            })
            retry_msgs.append(msgs)

        retry_responses = llm_client.batch_chat(
            retry_msgs, schema=RobotouillePlan,
            desc=f"LLM retry {retry + 1}",
        )
        for idx, (i, resp) in enumerate(zip(failed, retry_responses)):
            raw_responses[i] = resp
            all_messages[i] = retry_msgs[idx]
            plans[i] = _parse_plan_response(resp)

    # ── Normalize all parsed plans ──────────────────────────────────────
    for i in range(n):
        if plans[i] is not None:
            orig_json = nl_strings[i]
            # Find nearest station for first-move fix
            nearest = None
            hint = _find_nearest_station(orig_json)
            if hint:
                m = re.search(r"station (\w+)", hint)
                if m:
                    nearest = m.group(1)
            plans[i] = normalize_plan(plans[i], orig_json, nearest)

    # Evaluate and save
    save_path = Path(args.save_path)
    save_path.mkdir(parents=True, exist_ok=True)
    jsonl_path = save_path / "full_results.jsonl"

    result_records: list[dict] = []
    eval_results: list[dict] = []

    with jsonl_path.open("w", encoding="utf-8") as jsonl_f:
        for i, gold in enumerate(gold_data):
            action_list = plans[i]
            plan = _actions_to_plan(action_list) if action_list else None

            # Build ground-truth problem PDDL for simulation
            original_json = gold.get("original_json")
            problem_pddl = _build_problem_pddl_from_json(original_json) if original_json else None

            ev = evaluate_record(
                problem_pddl=problem_pddl,
                plan=plan,
                original_json=original_json,
                error=None if action_list else "plan_parse_failed",
                domain_pddl=domain_pddl,
                record_id=gold["id"],
            )
            eval_results.append(ev)

            rec = {
                "id": gold["id"],
                "original_json": gold.get("original_json"),
                "plan": [a for a in action_list] if action_list else None,
                "plan_length": len(action_list) if action_list else None,
                "solved": action_list is not None,
                "eval": ev,
                "llm_response": raw_responses[i],
                "chat_history": all_messages[i],
            }
            result_records.append(rec)
            jsonl_f.write(json.dumps(rec, indent=2, ensure_ascii=False) + "\n")
            jsonl_f.flush()

    _save_summary(result_records, eval_results, args)
    return result_records


def _save_summary(
    records: list[dict],
    eval_results: list[dict],
    args: argparse.Namespace,
) -> None:
    save_path = Path(args.save_path)
    n = len(records)

    n_parsed = sum(1 for r in records if r.get("solved"))
    eval_summary = summarize_eval(eval_results)

    metrics = {
        "benchmark": "robotouille",
        "method": "planner",
        "model_name": args.model_name,
        "num_examples": n,
        "num_plans_parsed": n_parsed,
        "plan_parse_rate": n_parsed / n if n else 0.0,
        **eval_summary,
    }
    with (save_path / "summary_results.json").open("w", encoding="utf-8") as f:
        json.dump(metrics, f, indent=2)

    acc = eval_summary.get("accuracy", 0.0)
    n_done = eval_summary.get("num_done", 0)
    avg_steps = eval_summary.get("average_steps", 0.0)
    avg_ratio = eval_summary.get("avg_steps_ratio")

    sim_rate = eval_summary.get("simulation_success_rate")
    n_sim_tested = eval_summary.get("num_simulation_tested", 0)
    n_sim_ok = eval_summary.get("num_simulation_success", 0)
    env_sim_rate = eval_summary.get("env_simulation_success_rate")
    n_env_tested = eval_summary.get("num_env_simulation_tested", 0)
    n_env_ok = eval_summary.get("num_env_simulation_success", 0)

    print(f"\nResults saved to {save_path}")
    print(f"Plans parsed          : {n_parsed}/{n}")
    print(f"Accuracy (done)       : {acc:.4f} ({n_done}/{n})")
    print(f"Average steps (done)  : {avg_steps:.1f}")
    if avg_ratio is not None:
        print(f"Avg steps ratio       : {avg_ratio:.2f}x optimal")
    if sim_rate is not None:
        print(f"PDDL simulation       : {sim_rate:.4f} ({n_sim_ok}/{n_sim_tested})")
    if env_sim_rate is not None:
        print(f"Env simulation        : {env_sim_rate:.4f} ({n_env_ok}/{n_env_tested})")


# ── CLI ──────────────────────────────────────────────────────────────────


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Robotouille LLM-as-Planner: NL → direct plan generation"
    )
    parser.add_argument("--model-name", required=True)
    parser.add_argument("--temperature", type=float, default=0.0)
    parser.add_argument("--max-tokens", type=int, default=4096)
    parser.add_argument("--save-path", required=True)
    parser.add_argument("--data-path", default=str(_DEFAULT_DATA_PATH),
                        help="Path to robotouille_single_agent_async.json")
    parser.add_argument("--max-examples", type=int, default=999)
    parser.add_argument("--num-workers", type=int, default=4)
    parser.add_argument("--llm-retries", type=int, default=2)
    parser.add_argument("--seeds", type=int, nargs="*", default=[],
                        help="Seeds for procedural randomization. If omitted, use base layout only.")
    parser.add_argument(
        "--exclude-envs", type=str, nargs="*", default=[],
        dest="exclude_envs",
        help="Record id prefixes to exclude, e.g. 3.1_.",
    )
    parser.add_argument(
        "--no-coordinates",
        action="store_true",
        help="When using --seeds, omit grid (x, y) from regenerated natural_language.",
    )
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
        args.model_name, args.temperature, args.max_tokens,
        num_workers=args.num_workers, strict_json=True,
    )
    run_task(llm_client, records, args)


if __name__ == "__main__":
    main()
