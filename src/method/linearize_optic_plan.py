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
"""

from __future__ import annotations


def linearize_optic_plan(
    optic_plan: list[tuple[float, str, float]],
    original_json: dict,
) -> list[tuple[float, str, float]]:
    """Linearize an OPTIC temporal plan into a sequential game-engine action list.

    Args:
        optic_plan: [(start_time, action_string, duration), ...]
            action_string is the OPTIC plan action, e.g. "cut robot_1 lettuce_1 board_1"
        original_json: the Robotouille scenario JSON (used to read num_cuts from config)

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

    # Sort by start_time (stable sort preserves order for simultaneous starts)
    sorted_plan = sorted(optic_plan, key=lambda x: x[0])

    sequential: list[tuple[float, str, float]] = []
    game_step: int = 0
    _EPS = 1e-6

    for start_time, action_str, _duration in sorted_plan:
        # Insert wait ticks until game_step reaches start_time
        while float(game_step) < start_time - _EPS:
            game_step += 1
            sequential.append((game_step * 0.001, "wait", 0.001))

        # Determine action base name (first token, lower-cased)
        action_name = action_str.split()[0].lower() if action_str.strip() else action_str

        if action_name == "cut":
            # cut uses RepetitiveEffect — must emit num_cuts times
            for _ in range(num_cuts):
                game_step += 1
                sequential.append((game_step * 0.001, action_str, 0.001))
        else:
            game_step += 1
            sequential.append((game_step * 0.001, action_str, 0.001))

    return sequential
