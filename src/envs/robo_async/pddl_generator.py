"""
PDDL Generator (Ground Truth)
------------------------------
Generates PDDL 2.1 domain + problem from a robo-async task JSON.

This is the GROUND TRUTH PDDL used to:
  1. Verify the engine is correct (OPTIC plan on GT PDDL should succeed)
  2. Provide an upper bound for comparison

The LLM formalizer generates its OWN PDDL from the NL description.
We then run OPTIC on the LLM's PDDL and evaluate the resulting plan
with our engine (which is the source of truth).
"""

import json
from pathlib import Path


# ── Domain ────────────────────────────────────────────────────────────────────

from src.envs.robo_async.engine import ACTION_STATION, DEFAULT_STATION_CAPACITY


def generate_domain(task: dict) -> str:
    """
    Generate a PDDL 2.1 domain for this task.
    Only includes actions that are actually needed.
    Station constraints are encoded via <station>_free predicates.
    """
    items      = task["items"]
    goal       = task["goal"]
    durations  = task["action_durations"]
    req_states = goal.get("required_states", {})
    stations   = task.get("stations", DEFAULT_STATION_CAPACITY)

    # Goal states directly map to their producing action
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
    if goal.get("stack_order"):
        needed_actions.add("stack")

    # Item-level flags for multi-step chains
    fry_requires_cut = any(
        info.get("fry_requires_cut", False) for info in items.values()
    )
    fry_from_raw = any(
        "isfryable" in info.get("predicates", []) and not info.get("fry_requires_cut", False)
        for info in items.values()
    )
    grill_requires_marinated = any(
        info.get("grill_requires_marinated", False) for info in items.values()
    )

    # Transitively add prerequisite actions implied by multi-step chains
    if grill_requires_marinated and "grill" in needed_actions:
        needed_actions.add("marinate")   # grill ← marinate
        needed_actions.add("cut")        # marinate ← cut
    if "mash" in needed_actions:
        needed_actions.add("boil")       # mash ← boil
    if fry_requires_cut and "fry" in needed_actions:
        needed_actions.add("cut")        # fry ← cut

    # Which stations are actually used by needed actions
    needed_stations = {
        ACTION_STATION[a] for a in needed_actions if a in ACTION_STATION
    }

    lines = []
    lines.append("(define (domain robo-async)")
    lines.append("  (:requirements :durative-actions :typing)")
    lines.append("  (:types item)")
    lines.append("")

    lines.append("  (:predicates")
    lines.append("    (raw        ?i - item)")
    lines.append("    (grilled    ?i - item)")
    lines.append("    (cut        ?i - item)")
    lines.append("    (fried      ?i - item)")
    lines.append("    (boiled     ?i - item)")
    lines.append("    (toasted    ?i - item)")
    lines.append("    (marinated  ?i - item)")
    lines.append("    (mashed     ?i - item)")
    lines.append("    (ready      ?i - item)")
    lines.append("    (stackable  ?i - item)")
    lines.append("    (stacked    ?i - item)")
    for s in sorted(needed_stations):
        lines.append(f"    ({s}_free)")
    lines.append("  )")
    lines.append("")

    # ── Durative processing actions ───────────────────────────────────────────

    def _emit_action(name, dur, input_state, eff_end_result):
        """Emit a durative action that consumes input_state and produces eff_end_result."""
        station = ACTION_STATION.get(name)
        lines.append(f"  (:durative-action {name}")
        lines.append( "    :parameters (?i - item)")
        d = int(dur) if dur == int(dur) else dur
        lines.append(f"    :duration (= ?duration {d})")
        conds = [f"({input_state} ?i)"]
        if station and station in needed_stations:
            conds.append(f"({station}_free)")
        cond_str = " ".join(f"(at start {c})" for c in conds)
        lines.append(f"    :condition (and {cond_str})")
        effs = [f"(at start (not ({input_state} ?i)))"]
        if station and station in needed_stations:
            effs.append(f"(at start (not ({station}_free)))")
            effs.append(f"(at end ({station}_free))")
        effs += [f"(at end ({eff_end_result} ?i))", "(at end (stackable ?i))"]
        lines.append(f"    :effect (and {' '.join(effs)})")
        lines.append( "  )")
        lines.append("")

    if "grill" in needed_actions:
        grill_input = "marinated" if grill_requires_marinated else "raw"
        _emit_action("grill", durations["grill"], grill_input, "grilled")

    if "cut" in needed_actions:
        _emit_action("cut", durations["cut"], "raw", "cut")

    if "fry" in needed_actions:
        fry_input = "cut" if (fry_requires_cut and not fry_from_raw) else "raw"
        _emit_action("fry", durations["fry"], fry_input, "fried")

    if "boil" in needed_actions:
        _emit_action("boil", durations["boil"], "raw", "boiled")

    if "toast" in needed_actions:
        _emit_action("toast", durations.get("toast", 5), "raw", "toasted")

    if "marinate" in needed_actions:
        _emit_action("marinate", durations.get("marinate", 8), "cut", "marinated")

    if "mash" in needed_actions:
        _emit_action("mash", durations.get("mash", 4), "boiled", "mashed")

    # ── Stack actions: one per item in stack_order, encoding ordering ────────
    # Each stack_X action:
    #   - requires (stackable X)  — item has finished processing
    #   - requires (stacked prev) — previous item is already on the stack
    #   - consumes (stackable X) at start to prevent double-stacking
    # No negative preconditions → fully OPTIC-compatible.
    if "stack" in needed_actions:
        stack_order = goal.get("stack_order", [])
        dur_stack = durations["stack"]
        d = int(dur_stack) if dur_stack == int(dur_stack) else dur_stack
        for i, name in enumerate(stack_order):
            conds = [f"(at start (stackable {name}))"]
            # Enforce that item is in its required goal state before stacking
            req_state = req_states.get(name)
            if req_state and req_state not in ("ready",):
                conds.append(f"(at start ({req_state} {name}))")
            if i > 0:
                conds.append(f"(at start (stacked {stack_order[i-1]}))")
            lines.append(f"  (:durative-action stack_{name}")
            lines.append( "    :parameters ()")
            lines.append(f"    :duration (= ?duration {d})")
            lines.append(f"    :condition (and {' '.join(conds)})")
            lines.append(f"    :effect (and (at start (not (stackable {name}))) (at end (stacked {name})))")
            lines.append( "  )")
            lines.append("")

    lines.append(")")
    return "\n".join(lines)


# ── Problem ───────────────────────────────────────────────────────────────────

def generate_problem(task: dict) -> str:
    items       = task["items"]
    goal        = task["goal"]
    req_states  = goal.get("required_states", {})
    stack_order = goal.get("stack_order", [])
    stations    = task.get("stations", DEFAULT_STATION_CAPACITY)

    # Determine which stations are needed (must mirror generate_domain logic)
    state_to_action = {
        "grilled": "grill", "cut": "cut", "fried": "fry",
        "boiled": "boil", "toasted": "toast", "mashed": "mash",
    }
    needed_actions = {state_to_action[s] for s in req_states.values() if s in state_to_action}
    if stack_order:
        needed_actions.add("stack")
    # Transitively add prerequisite actions
    fry_requires_cut = any(info.get("fry_requires_cut", False) for info in items.values())
    grill_requires_marinated = any(info.get("grill_requires_marinated", False) for info in items.values())
    if grill_requires_marinated and "grill" in needed_actions:
        needed_actions.add("marinate")
        needed_actions.add("cut")
    if "mash" in needed_actions:
        needed_actions.add("boil")
    if fry_requires_cut and "fry" in needed_actions:
        needed_actions.add("cut")
    needed_stations = {ACTION_STATION[a] for a in needed_actions if a in ACTION_STATION}

    lines = []
    lines.append("(define (problem robo-async-task)")
    lines.append("  (:domain robo-async)")
    lines.append("")

    # objects
    item_names = " ".join(items.keys())
    lines.append(f"  (:objects {item_names} - item)")
    lines.append("")

    # init
    lines.append("  (:init")
    for name, info in items.items():
        state = info["state"]
        if state == "raw":
            lines.append(f"    (raw {name})")
        elif state == "ready":
            lines.append(f"    (ready {name})")
            lines.append(f"    (stackable {name})")
        else:
            lines.append(f"    ({state} {name})")
            lines.append(f"    (stackable {name})")
    # All stations start free
    for s in sorted(needed_stations):
        lines.append(f"    ({s}_free)")
    lines.append("  )")
    lines.append("")

    # goal
    lines.append("  (:goal (and")
    for name, state in req_states.items():
        lines.append(f"    ({state} {name})")
    for name in stack_order:
        lines.append(f"    (stacked {name})")
    lines.append("  ))")
    lines.append("")
    lines.append(")")
    return "\n".join(lines)


# ── CLI ───────────────────────────────────────────────────────────────────────

def generate_pddl_for_all(task_dir: str = "data/robo_async/tasks"):
    for path in sorted(Path(task_dir).glob("*.json")):
        task = json.loads(path.read_text())
        domain  = generate_domain(task)
        problem = generate_problem(task)

        (path.parent / f"{path.stem}.domain.pddl").write_text(domain,  encoding="utf-8")
        (path.parent / f"{path.stem}.problem.pddl").write_text(problem, encoding="utf-8")
        print(f"  {path.stem}")
    print("Done.")


if __name__ == "__main__":
    task_path = Path("data/robo_async/tasks/burger_simple.json")
    task = json.loads(task_path.read_text())
    print("=== DOMAIN ===")
    print(generate_domain(task))
    print("\n=== PROBLEM ===")
    print(generate_problem(task))
