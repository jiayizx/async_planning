"""
Transform Robotouille async JSON → Natural Language → PDDL.

RECOMMENDED APPROACH: Hybrid Structured + Narrative NL
──────────────────────────────────────────────────────

Why this approach:

1. **Goal description first**: The JSON's goal_description is human-written and
   captures intent. Using it as the lead gives the LLM natural context.

2. **Structured sections for precision**: LLMs converting free-form narrative to
   PDDL make frequent errors (wrong objects, missed init facts, incorrect goal).
   Explicit Objects / Initial state / Goal structure reduces ambiguity.

3. **Reuse Robotouille's builder for name resolution**: The builder assigns
   unique IDs (table1, patty1, etc.) and resolves goal predicate arguments.
   The NL must use these exact names so generated PDDL matches the domain.

4. **Domain is fixed**: robotouille.pddl is shared by all problems. Only the
   problem file (objects, init, goal) varies. The NL describes the problem only.

5. **Rule-based PDDL as ground truth**: Robotouille's builder produces correct
   PDDL from JSON. We use it for ground truth; the NL is the intermediate
   representation for LLM-based generation or human inspection.

Flow:
  JSON env → build_objects (name resolution) → NL template
  NL + domain (robotouille.pddl) → LLM → PDDL problem
  Or: JSON env → build_problem (rule-based) → PDDL problem (ground truth)
"""
from __future__ import annotations

import json
import sys
from pathlib import Path

ROBOTOUILLE_ROOT = Path(__file__).resolve().parent / "baselines" / "robotouille"
ASYNC_ENVS_DIR = ROBOTOUILLE_ROOT / "environments" / "env_generator" / "examples" / "asynchronous"


def _ensure_robotouille_on_path():
    if str(ROBOTOUILLE_ROOT) not in sys.path:
        sys.path.insert(0, str(ROBOTOUILLE_ROOT))


def _load_and_prepare_env(json_path: Path) -> tuple[dict, dict, dict]:
    """Load JSON env and run builder.build_objects for name resolution.
    Returns (env_for_builder, env_with_ids, raw).
    env_for_builder: has base names (table, bread) for build_problem.
    env_with_ids: has resolved names (table1, bread1) for NL.
    """
    _ensure_robotouille_on_path()
    from environments.env_generator.builder import build_objects
    from environments.env_generator.object_enums import str_to_typed_enum, TYPES
    import copy
    import random

    raw = json.loads(json_path.read_text(encoding="utf-8"))
    env = copy.deepcopy(raw)
    sort_key = lambda e: (e["x"], e["y"])
    for field in ["stations", "items", "players", "containers", "meals"]:
        if field not in env:
            continue
        env[field].sort(key=sort_key)
        for entity in env[field]:
            if entity["name"] == field[:-1]:  # wildcard
                entity["name"] = random.choice(list(TYPES[field[:-1]])).value
            try:
                entity["typed_enum"] = str_to_typed_enum(entity["name"])
            except ValueError:
                entity["typed_enum"] = None

    _, env_with_ids = build_objects(env)
    return env, env_with_ids, raw


def _stacks_at_stations(env: dict) -> dict[str, list]:
    """Return {station_name: [item_names from bottom to top]}."""
    stacks: dict[str, list] = {}
    for item in env.get("items", []):
        for station in env.get("stations", []):
            if item["x"] == station["x"] and item["y"] == station["y"]:
                stacks.setdefault(station["name"], []).append(item)
                break
    for k in stacks:
        stacks[k].sort(key=lambda i: i.get("stack-level", 0))
    return {s: [i["name"] for i in v] for s, v in stacks.items()}


def json_to_natural_language(env_with_ids: dict, raw: dict) -> str:
    """
    Convert a Robotouille environment (with ID-resolved names) to structured NL.
    This NL is designed so an LLM can reliably produce the PDDL problem file.
    """
    lines = []

    # 1. Goal (natural language, from JSON)
    goal_desc = raw.get("goal_description", "")
    lines.append(f"Goal: {goal_desc}")
    lines.append("")

    # 2. Objects
    lines.append("Objects:")
    for station in env_with_ids.get("stations", []):
        t = station.get("typed_enum")
        type_str = t.value if t else station["name"].rstrip("0123456789")
        lines.append(f"  - {station['name']} (station: {type_str})")
    for player in env_with_ids.get("players", []):
        lines.append(f"  - {player['name']} (player)")
    for item in env_with_ids.get("items", []):
        preds = item.get("predicates", [])
        extra = f" [{', '.join(preds)}]" if preds else ""
        lines.append(f"  - {item['name']} (item{extra})")
    for c in env_with_ids.get("containers", []):
        lines.append(f"  - {c['name']} (container)")
    lines.append("")

    # 3. Initial state
    lines.append("Initial state:")
    for p in env_with_ids.get("players", []):
        at_station = None
        for s in env_with_ids.get("stations", []):
            px, py = p["x"] + p.get("direction", [0, 0])[0], p["y"] + p.get("direction", [0, 0])[1]
            if px == s["x"] and py == s["y"]:
                at_station = s["name"]
                break
        holding = any(
            it["x"] == p["x"] and it["y"] == p["y"]
            for it in env_with_ids.get("items", [])
        )
        if holding:
            for it in env_with_ids.get("items", []):
                if it["x"] == p["x"] and it["y"] == p["y"]:
                    lines.append(f"  - Robot {p['name']} is at {at_station} and holds {it['name']}")
                    break
        else:
            lines.append(f"  - Robot {p['name']} is at {at_station} holding nothing")
    stacks = _stacks_at_stations(env_with_ids)
    for station_name, item_names in stacks.items():
        if len(item_names) == 1:
            lines.append(f"  - {item_names[0]} is on {station_name}")
        else:
            for i, name in enumerate(item_names):
                if i == 0:
                    lines.append(f"  - {name} is on {station_name}")
                else:
                    lines.append(f"  - {name} is on top of {item_names[i-1]}")
    for s in env_with_ids.get("stations", []):
        if s["name"] not in stacks or len(stacks[s["name"]]) == 0:
            lines.append(f"  - {s['name']} is empty and vacant")
    lines.append("")

    # 4. Goal predicates (reference; exact resolution done by builder)
    lines.append("Goal structure (predicate, args, ids → resolved in PDDL):")
    for g in raw.get("goal", []):
        lines.append(f"  - {g['predicate']}{g['args']} ids={g.get('ids', [])}")
    lines.append("")

    return "\n".join(lines)


def generate_pddl_via_builder(env_before_ids: dict) -> str:
    """Use Robotouille's builder to generate PDDL problem (ground truth).
    Must pass env with base names (table, bread), not ID-resolved (table1, bread1).
    """
    _ensure_robotouille_on_path()
    from environments.env_generator.builder import build_problem
    problem_str, _ = build_problem(env_before_ids)
    return problem_str


def main():
    # Example: first async env
    paths = sorted(ASYNC_ENVS_DIR.glob("*.json"))
    if not paths:
        print("No async envs found. Run: git submodule update --init --recursive")
        return

    example_path = paths[0]
    print(f"Example: {example_path.name}\n")
    print("=" * 70)
    print("STEP 1: JSON → Natural Language")
    print("=" * 70)
    env_for_builder, env_with_ids, raw = _load_and_prepare_env(example_path)

    # Custom encoder to handle objects that are not JSON serializable (e.g., Station enum)
    def safe_json_dumps(obj, **kwargs):
        def default(o):
            # Show class name if object is not serializable (avoid crashing)
            return f"<non-serializable: {type(o).__name__}>"
        return json.dumps(obj, default=default, **kwargs)

    # print("Env for builder:")
    # print(safe_json_dumps(env_for_builder, indent=2, ensure_ascii=False))
    # print("Env with IDs:")
    # print(safe_json_dumps(env_with_ids, indent=2, ensure_ascii=False))
    # print("Raw:")
    # print(safe_json_dumps(raw, indent=2, ensure_ascii=False))

    nl = json_to_natural_language(env_with_ids, raw)
    print(nl)

    print("=" * 70)
    print("STEP 2: PDDL problem (via Robotouille builder, ground truth)")
    print("=" * 70)
    pddl = generate_pddl_via_builder(env_for_builder)
    print(pddl)

    print("=" * 70)
    print("RATIONALE")
    print("=" * 70)
    print("""
The NL format is designed so that:
1. An LLM can take it + the domain (robotouille.pddl) and produce the problem PDDL.
2. The structured object names (table1, patty1, etc.) match the builder's resolution.
3. Goal description provides natural context; goal predicates provide precision.

To use with run_formalizer: You would need to adapt the prompt so the LLM outputs
Robotouille-style problem PDDL (objects, init, goal) rather than the scheduling
format. The domain can be fixed; only the problem is generated.
""")


if __name__ == "__main__":
    main()
