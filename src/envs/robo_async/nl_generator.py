"""
Natural Language Generator
---------------------------
Converts a robo-async task JSON into a natural language description
suitable for prompting an LLM formalizer.

Design principles:
  - Durations are stated explicitly (LLM shouldn't guess them)
  - Action preconditions are described in plain English
  - The goal is described as a final dish, NOT as an ordered sequence of steps
  - No hints about which actions can be parallelized
"""

import json
from pathlib import Path


# ── Action descriptions ───────────────────────────────────────────────────────

ACTION_VERBS = {
    "grill":    "grill",
    "cut":      "cut",
    "fry":      "fry",
    "boil":     "boil",
    "toast":    "toast",
    "marinate": "marinate",
    "mash":     "mash",
    "stack":    "stack",
}

STATE_ADJECTIVES = {
    "grilled":   "grilled",
    "cut":       "cut",
    "fried":     "fried",
    "boiled":    "boiled",
    "toasted":   "toasted",
    "marinated": "marinated",
    "mashed":    "mashed",
    "ready":     "",        # already ready, no processing needed
    "raw":       "raw",
}

TYPE_ARTICLES = {
    "meat":      "a piece of",
    "vegetable": "a",
    "bread":     "a slice of",
    "bun":       "a",
    "liquid":    "some",
    "cheese":    "a slice of",
}


def _item_label(name: str, item_info: dict) -> str:
    """Turn 'patty1 / meat' into a readable label like 'patty #1 (meat)'."""
    # strip trailing digits for display, keep for uniqueness
    base = name.rstrip("0123456789")
    suffix = name[len(base):]
    label = base.replace("_", " ")
    if suffix:
        label += f" #{suffix}"
    return label


def _duration_phrase(seconds: float) -> str:
    if seconds == int(seconds):
        return f"{int(seconds)} second{'s' if seconds != 1 else ''}"
    return f"{seconds:.1f} seconds"


def _affordance_labels(info: dict, terse: bool = False) -> list[str]:
    """Readable item-level action model facts for challenge-style tasks."""
    labels = []
    preds = set(info.get("predicates", []))
    if terse:
        labels.extend(sorted(preds))
        if info.get("mash_requires_boiled"):
            labels.append("ismashableifboiled")
        return labels
    if "iscuttable" in preds:
        labels.append("cuttable from raw")
    if "isfryable" in preds and not info.get("fry_requires_cut"):
        labels.append("fryable from raw")
    if "isfryableifcut" in preds or info.get("fry_requires_cut"):
        labels.append("fryable after cut")
    if "iscookable" in preds and not info.get("grill_requires_marinated"):
        labels.append("grillable from raw")
    if "iscookableifmarinated" in preds or info.get("grill_requires_marinated"):
        labels.append("grillable after marinating")
    if "isboilable" in preds:
        labels.append("boilable from raw")
    if info.get("mash_requires_boiled"):
        labels.append("mashable after boiling")
    return labels


# ── Main generator ────────────────────────────────────────────────────────────

def task_to_nl(task: dict, implicit: bool = False) -> str:
    items      = task["items"]
    goal       = task["goal"]
    durations  = task["action_durations"]
    req_states = goal.get("required_states", {})
    stack_order = goal.get("stack_order", [])

    lines = []

    # ── Section 1: available ingredients ─────────────────────────────────────
    lines.append("## Ingredients")
    show_affordances = task.get("affordance_mode") == "action_model"
    for name, info in items.items():
        label = _item_label(name, info)
        state = info["state"]
        state_adj = STATE_ADJECTIVES.get(state, state)
        affordances = _affordance_labels(info, terse=implicit) if show_affordances else []
        affordance_note = f"; {'; '.join(affordances)}" if affordances else ""
        if state_adj and state_adj != "ready":
            if implicit:
                note = ""
            elif info.get("fry_requires_cut"):
                note = " [must be cut before frying]"
            elif info.get("grill_requires_marinated"):
                note = " [must be cut, then marinated before grilling]"
            else:
                note = ""
            lines.append(f"- {label} ({state_adj}{affordance_note}){note}")
        else:
            lines.append(f"- {label} (ready to use{affordance_note})")
    lines.append("")

    # ── Section 2: available actions ──────────────────────────────────────────
    lines.append("## Available Actions")

    # Collect which actions are actually needed (including transitive prerequisites)
    state_to_action = {
        "grilled":   "grill",
        "cut":       "cut",
        "fried":     "fry",
        "boiled":    "boil",
        "toasted":   "toast",
        "mashed":    "mash",
    }
    needed_actions = set()
    for state in req_states.values():
        if state in state_to_action:
            needed_actions.add(state_to_action[state])
    if stack_order:
        needed_actions.add("stack")
    # Transitive prerequisites
    fry_requires_cut_any = any(info.get("fry_requires_cut") for info in items.values())
    grill_requires_marinated_any = any(info.get("grill_requires_marinated") for info in items.values())
    if grill_requires_marinated_any and "grill" in needed_actions:
        needed_actions.add("marinate")
        needed_actions.add("cut")
    if "mash" in needed_actions:
        needed_actions.add("boil")
    if fry_requires_cut_any and "fry" in needed_actions:
        needed_actions.add("cut")

    action_descriptions = {
        "grill": (
            "**grill** `<item>`  —  "
            f"Grill an item on the grill. Takes {_duration_phrase(durations['grill'])}. "
            "Produces a grilled item."
            + (
                (
                    " Use the ingredient predicates to determine the required input state."
                )
                if implicit and show_affordances else
                "" if implicit else
                (" NOTE: some items must be marinated before they can be grilled (see ingredients)."
                 if grill_requires_marinated_any else "")
            )
        ),
        "cut": (
            "**cut** `<item>`  —  "
            f"Chop a raw item on the cutting board. Takes {_duration_phrase(durations['cut'])}. "
            "Produces a cut item."
        ),
        "fry": (
            "**fry** `<item>`  —  "
            f"Fry an item in a fryer. Takes {_duration_phrase(durations['fry'])}. "
            "Produces a fried item. "
            + (
                (
                    "Use the ingredient predicates to determine the required input state."
                )
                if implicit and show_affordances else
                ""
                if implicit else
                (
                    "NOTE: some items must be cut before they can be fried (see ingredients)."
                    if fry_requires_cut_any else
                    "The item must be raw before frying."
                )
            )
        ),
        "boil": (
            "**boil** `<item>`  —  "
            f"Boil an item. Takes {_duration_phrase(durations['boil'])}. "
            "Produces a boiled item."
        ),
        "toast": (
            "**toast** `<item>`  —  "
            f"Toast a raw bread item. Takes {_duration_phrase(durations.get('toast', 5))}. "
            "Produces a toasted item."
        ),
        "marinate": (
            "**marinate** `<item>`  —  "
            + (
                "Marinate an eligible item. "
                if implicit and show_affordances else
                "Marinate a cut item. "
            )
            + f"Takes {_duration_phrase(durations.get('marinate', 8))}. "
            + "Produces a marinated item."
            + (
                "" if implicit and show_affordances else
                " The item must be cut first."
            )
        ),
        "mash": (
            "**mash** `<item>`  —  "
            + (
                "Mash an eligible item on the cutting board. "
                if implicit and show_affordances else
                "Mash a boiled item on the cutting board. "
            )
            + f"Takes {_duration_phrase(durations.get('mash', 4))}. "
            + "Produces a mashed item."
            + (
                "" if implicit and show_affordances else
                " The item must be boiled first."
            )
        ),
        "stack": (
            "**stack** `<item>`  —  "
            f"Place an ingredient on top of the current stack. Takes {_duration_phrase(durations['stack'])}. "
            + (
                "Use the goal requirements to decide when an ingredient is eligible."
                if implicit and show_affordances else
                "The item must already be in its required state before stacking."
            )
        ),
    }

    for action in ["grill", "cut", "fry", "boil", "toast", "marinate", "mash", "stack"]:
        if action in needed_actions:
            lines.append(f"- {action_descriptions[action]}")
    lines.append("")

    # ── Section 2b: station constraints ──────────────────────────────────────
    station_to_actions = {
        "grill":         ["grill"],
        "cutting_board": ["cut", "mash"],
        "fryer":         ["fry"],
        "boiler":        ["boil"],
        "toaster":       ["toast"],
        "marinator":     ["marinate"],
    }
    stations = task.get("stations", {})
    station_lines = []
    for station, actions in station_to_actions.items():
        active = [a for a in actions if a in needed_actions]
        if not active:
            continue
        cap = stations.get(station, 1)
        action_label = "/".join(active)
        station_lines.append(
            f"- **{station.replace('_', ' ')}**: capacity {cap} "
            f"(at most {cap} {action_label} action{'s' if cap > 1 else ''} running at once)"
        )
    if station_lines:
        lines.append("## Station Constraints")
        lines.extend(station_lines)
        lines.append("")

    # ── Section 3: goal ───────────────────────────────────────────────────────
    lines.append("## Goal")

    # Describe required processing
    processing_requirements = []
    for name, state in req_states.items():
        label = _item_label(name, items)
        adj   = STATE_ADJECTIVES.get(state, state)
        processing_requirements.append(f"{label} must be {adj}")

    if processing_requirements:
        lines.append("The following ingredients must be prepared:")
        for req in processing_requirements:
            lines.append(f"- {req}")
        lines.append("")

    # Describe stack goal
    if stack_order:
        if implicit:
            # Give the set of items to stack without ordering information
            lines.append(
                "Assemble the final dish by stacking all of the following ingredients:"
            )
            for name in stack_order:
                label = _item_label(name, items)
                state = req_states.get(name, items[name]["state"])
                adj   = STATE_ADJECTIVES.get(state, "")
                full  = f"{adj} {label}".strip() if adj else label
                lines.append(f"  - {full}")
        else:
            lines.append(
                "Assemble the final dish by stacking the ingredients "
                "in this order (bottom to top):"
            )
            for i, name in enumerate(stack_order):
                label = _item_label(name, items)
                state = req_states.get(name, items[name]["state"])
                adj   = STATE_ADJECTIVES.get(state, "")
                full  = f"{adj} {label}".strip() if adj else label
                lines.append(f"  {i+1}. {full}")

    return "\n".join(lines)


# ── CLI ───────────────────────────────────────────────────────────────────────

def generate_nl_for_all(task_dir: str = "data/robo_async/tasks"):
    for path in sorted(Path(task_dir).glob("*.json")):
        task = json.loads(path.read_text())
        nl = task_to_nl(task)
        # save alongside JSON
        out = path.with_suffix(".nl.txt")
        out.write_text(nl, encoding="utf-8")
        print(f"  {path.stem:30s} → {out.name}")
    print("Done.")


if __name__ == "__main__":
    # Quick demo: print NL for burger_simple
    task_path = Path("data/robo_async/tasks/burger_simple.json")
    task = json.loads(task_path.read_text())
    print(task_to_nl(task))
