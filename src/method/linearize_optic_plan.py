"""
Linearize an OPTIC temporal plan into a sequential list of game-engine actions
compatible with evaluate_record() in src/evaluation/robotouille/eval.py.

Key insight: OPTIC's plan uses duration values that match the game engine's
step counts (cook_time, num_cuts). So OPTIC time T corresponds to game_step T.

Algorithm:
  1. Sort by start_time
  2. For each action at time T:
     a. Insert null ticks ("wait") until game_step >= T
     b. If action is "cut": emit cut action num_cuts times (RepetitiveEffect)
     c. Else: emit action once

cook/fry use DelayedEffect — they advance on every state.step() call.
cut uses RepetitiveEffect — must actively call cut each time.

Parameterless encoding support:
  If the plan action has no spaces (parameterless encoding), the linearizer
  parses the action name to extract the base operation and object arguments,
  then reconstructs the standard "operation arg1 arg2 ..." format that
  eval.py's simulate_with_env expects.
"""

from __future__ import annotations

from collections import defaultdict


# ---------------------------------------------------------------------------
# Parameterless action parsing
# ---------------------------------------------------------------------------

# Maps parameterless base-op prefix → (canonical_op_name, num_args_without_player)
# num_args_without_player = number of object args encoded in the action name
# (player is NOT encoded in the name — it is prepended automatically)
_PARAMETERLESS_OPS: dict[str, tuple[str, int]] = {
    "move":     ("move",     2),  # from-station, to-station
    "pick-up":  ("pick-up",  2),  # item, station
    "pickup":   ("pick-up",  2),  # alias without hyphen
    "place":    ("place",    2),  # item, station
    "cook":     ("cook",     2),  # item, station
    "cut":      ("cut",      2),  # item, station
    "fry":      ("fry",      2),  # item, station
    "stack":    ("stack",    3),  # top-item, bot-item, station
    "unstack":  ("unstack",  3),  # top-item, bot-item, station
}


def _build_known_objects(original_json: dict) -> set[str]:
    """Build the set of all PDDL object names (type_N) from original_json.

    Uses the same ordering as _annotate_robotouille_json so names match.
    """
    objects: set[str] = set()
    type_count: dict[str, int] = defaultdict(int)

    for s in sorted(original_json.get("stations", []), key=lambda s: (s["x"], s["y"])):
        type_count[s["name"]] += 1
        objects.add(f"{s['name']}_{type_count[s['name']]}".lower())

    type_count.clear()
    for item in sorted(
        original_json.get("items", []),
        key=lambda i: (i["x"], i["y"], i.get("stack-level", 0)),
    ):
        type_count[item["name"]] += 1
        objects.add(f"{item['name']}_{type_count[item['name']]}".lower())

    type_count.clear()
    for p in original_json.get("players", []):
        type_count[p["name"]] += 1
        objects.add(f"{p['name']}_{type_count[p['name']]}".lower())

    return objects


def _get_player_pddl_name(original_json: dict) -> str:
    """Return the first player's PDDL name (e.g. 'robot_1')."""
    players = original_json.get("players", [])
    if not players:
        return "robot_1"
    name = players[0].get("name", "robot").lower()
    return f"{name}_1"


def _parse_parameterless_action(
    action_name: str,
    known_objects: set[str],
) -> tuple[str, list[str]] | None:
    """Parse a parameterless action name into (canonical_op, [object_args]).

    Action names follow the convention: {base_op}_{arg1}_{arg2}...
    where argN are known object names from the problem (player is not encoded).

    Returns (canonical_op, args) or None if the prefix is not a known operation.
    """
    name_lower = action_name.lower()

    # Match longest operation prefix first to avoid ambiguity (e.g. "pick-up" vs "pickup")
    operation = None
    remainder = ""
    for op in sorted(_PARAMETERLESS_OPS, key=len, reverse=True):
        if name_lower == op:
            operation = op
            remainder = ""
            break
        if name_lower.startswith(op + "_"):
            operation = op
            remainder = name_lower[len(op) + 1:]  # skip the leading "_"
            break

    if operation is None:
        return None

    canonical_op, num_args = _PARAMETERLESS_OPS[operation]

    # Greedily match known object names left-to-right from remainder
    args: list[str] = []
    pos = 0
    while pos <= len(remainder) and len(args) < num_args:
        if pos < len(remainder) and remainder[pos] == "_":
            pos += 1
            continue
        matched: str | None = None
        for obj in sorted(known_objects, key=len, reverse=True):  # longest first
            if remainder[pos:].lower().startswith(obj):
                end = pos + len(obj)
                if end >= len(remainder) or remainder[end] == "_":
                    matched = obj
                    pos = end
                    break
        if matched:
            args.append(matched)
        else:
            pos += 1  # skip unrecognized character

    return canonical_op, args


def _normalize_action(
    action_str: str,
    original_json: dict,
    known_objects: set[str],
    player_name: str,
) -> str:
    """If action_str is a parameterless action (no spaces), parse and reconstruct it
    as the standard 'operation player arg1 arg2...' format for eval.py.

    Returns action_str unchanged if it is already in standard format (has spaces).
    """
    if " " in action_str.strip():
        return action_str  # already parameterized format

    result = _parse_parameterless_action(action_str.strip(), known_objects)
    if result is None:
        return action_str  # unknown operation — pass through as-is

    canonical_op, args = result
    # Player is always prepended as the first argument
    full_args = [player_name] + args
    return canonical_op + " " + " ".join(full_args)


# ---------------------------------------------------------------------------
# Main linearizer
# ---------------------------------------------------------------------------


def linearize_optic_plan(
    optic_plan: list[tuple[float, str, float]],
    original_json: dict,
) -> list[tuple[float, str, float]]:
    """Linearize an OPTIC temporal plan into a sequential game-engine action list.

    Args:
        optic_plan: [(start_time, action_string, duration), ...]
            action_string is the OPTIC plan action.
            For parameterized encoding: "cook robot_1 chicken_1 stove_1"
            For parameterless encoding: "cook_chicken_1_stove_1"
        original_json: the Robotouille scenario JSON (used to read num_cuts from config
            and to look up object names for parameterless parsing)

    Returns:
        Sequential plan in eval.py format: [(start_time, action_str, 0.001), ...]
        where start_time is a unique monotonically increasing float (game_step * 0.001).

    The linearizer inserts "wait" null-tick actions to advance the game clock when
    a temporal action has a start_time greater than the current game_step.  "wait"
    is recognized by eval.py's _is_null_pddl_action as a null tick prefix.

    For "cut" actions the action string is emitted num_cuts times consecutively
    because the game engine models cutting via RepetitiveEffect (must actively
    call cut on each step).  All other actions are emitted exactly once.
    """
    config = original_json.get("config", {})
    num_cuts: int = int(config.get("num_cuts", {}).get("default", 3))

    # Build helpers for parameterless normalization (computed once, reused per action)
    known_objects = _build_known_objects(original_json)
    player_name = _get_player_pddl_name(original_json)

    # Sort by start_time (stable sort preserves order for simultaneous starts)
    sorted_plan = sorted(optic_plan, key=lambda x: x[0])

    # Detect TFD plan format: TFD uses real simulation time (durations ≥ 1.0 seconds
    # for all actions, including instant ones) whereas OPTIC uses 0.001-scaled steps.
    # Normalize TFD timestamps to OPTIC-compatible sequential 0.001 increments so the
    # main loop below works correctly without inserting spurious waits.
    if sorted_plan and max(d for _, _, d in sorted_plan) >= 0.5:
        # TFD format: convert to sequential 0.001-scaled timestamps but keep the
        # original integer duration (unscaled) so the cook/fry min_next_game_step
        # logic below (which uses int(round(duration))) works correctly.
        normalized: list[tuple[float, str, float]] = []
        for step_idx, (_, action, dur) in enumerate(sorted_plan, start=1):
            int_dur = max(1, round(dur))
            normalized.append((step_idx * 0.001, action, float(int_dur)))
        sorted_plan = normalized

    sequential: list[tuple[float, str, float]] = []
    game_step: int = 0
    _EPS = 1e-6

    # Minimum game_step required before the next action can start.
    # Updated when a long-duration action (cook/fry, duration D) is emitted at
    # game_step G: the DelayedEffect fires at step G+D-1, so the next action
    # can start at game_step G+D (i.e. min_next = G + D - 1 so the while-loop
    # exits at game_step == G+D-1 and then the action is emitted at G+D).
    min_next_game_step: int = 0

    for start_time, action_str, duration in sorted_plan:
        # Normalize parameterless actions to standard format
        action_str = _normalize_action(action_str, original_json, known_objects, player_name)

        # Insert wait ticks until game_step reaches the target.
        # target = max(OPTIC start_time constraint, durative-action completion constraint).
        # The OPTIC start_time and game_step can drift apart when concurrent OPTIC
        # actions are serialized (game_step runs ahead), so we enforce the stronger
        # of the two constraints.
        optic_target = start_time - _EPS
        target = max(optic_target, float(min_next_game_step))
        while float(game_step) < target:
            game_step += 1
            sequential.append((game_step * 0.001, "wait", 0.001))

        # Determine action base name (first token, lower-cased)
        action_name = action_str.split()[0].lower() if action_str.strip() else action_str

        if action_name == "cut":
            # cut uses RepetitiveEffect — must emit num_cuts times
            for _ in range(num_cuts):
                game_step += 1
                sequential.append((game_step * 0.001, action_str, 0.001))
            # cut's OPTIC duration == num_cuts; after emitting num_cuts steps,
            # game_step has already advanced past min_next_game_step automatically.
        else:
            game_step += 1
            sequential.append((game_step * 0.001, action_str, 0.001))

        # For durative actions (cook, fry — duration > 1), the game engine's
        # DelayedEffect fires at step (game_step + duration - 1).  Enforce that
        # the next action starts no earlier than game_step + duration.
        int_duration = int(round(duration))
        if int_duration > 1 and action_name not in ("cut",):
            # min_next_game_step is the loop-exit threshold; the action is then
            # emitted at min_next_game_step + 1 == game_step + int_duration.
            min_next_game_step = game_step + int_duration - 1

    return sequential
