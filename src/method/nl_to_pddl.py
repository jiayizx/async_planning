"""NL → PDDL 2.1 conversion for async planning problems.

The LLM directly translates the natural language planning problem into
PDDL 2.1 domain and problem files with :durative-actions.

Uses structured output (pydantic schema) to guarantee valid JSON from the LLM.

Prompt design inspired by:
  https://github.com/CassieHuang22/llm-as-pddl-formalizer
"""
from __future__ import annotations

import json
from typing import List, Optional

from pydantic import BaseModel


# ── Pydantic schema for structured output ──────────────────────────────


class PDDLResult(BaseModel):
    domain_pddl: str
    problem_pddl: str
    step_actions: List[str] = []  # action names in step order: step_actions[i] = action for Step i+1


class PDDLResponse(BaseModel):
    responses: List[PDDLResult]


# ── Prompt ──────────────────────────────────────────────────────────────

# PDDL_SYSTEM_PROMPT = """
# You are a PDDL expert. Given an asynchronous planning problem, write the domain and problem files in minimal PDDL 2.1 format.

# Return the responses in JSON format with the key: "responses" (list of dicts). Each dictionary must include:
# - 'domain_pddl': the domain in PDDL 2.1 format as a string.
# - 'problem_pddl': the problem in PDDL 2.1 format as a string.
# """

PDDL_SYSTEM_PROMPT = """
You are a PDDL expert. Given an asynchronous planning problem, write the domain and problem files in minimal PDDL 2.1 format.

ENCODING: Use PARAMETERLESS actions (no step type, no step objects).
Each action gets its own pair of predicates: `(X_pending)` and `(X_done)`.
`X_done` is BOTH the "step completed" marker AND the semantic predicate for successors.

CRITICAL PDDL RULES for OPTIC planner compatibility:
1. Use ONLY `:durative-actions` in `:requirements`. Do NOT use `:typing`, `:negative-preconditions`,
   `:adl`, or `:disjunctive-preconditions`.
2. NEVER use `(not ...)` in action preconditions. Instead, use a positive "_pending" predicate:
   - BAD:  `:condition (at start (not (task_done)))`
   - GOOD: `:condition (at start (task_pending))`
   Then in `:effect`, set `(not (task_pending))` and `(task_done)`.
   Note: `(not ...)` is allowed in effects, just not in conditions.
3. ALL predicates must be declared in the `:predicates` block before use.
4. No `:types` block or `:objects` block is needed — actions take NO parameters.
5. Use `(:durative-action ...)` with `:duration`, `:condition`, and `:effect` — not `(:action ...)`.
6. Use `(at start ...)`, `(at end ...)`, or `(over all ...)` inside `:condition` and `:effect`.
7. Initialize ALL "_pending" predicates as true in the problem's `:init`.

CRITICAL SEMANTIC RULES — failure to follow these causes the planner to find wrong shortcuts:

8. Every action MUST:
   (a) consume its own `(X_pending)` at start: `(at start (not (X_pending)))`
   (b) produce its own `(X_done)` at end: `(at end (X_done))`
   (c) require ALL direct predecessors' `_done` predicates as `(at start ...)` conditions.
   This is a DAG (not a linear chain): a step may have multiple direct predecessors and ALL must be
   enforced, otherwise the planner can skip slow predecessors and find an illegally short makespan.
   - BAD (step C requires only A but not B, so planner skips slow B):
     ```
     (:durative-action do_A :parameters () :duration (= ?duration 3600)
       :condition (at start (a_pending))
       :effect (and (at start (not (a_pending))) (at end (a_done))))
     (:durative-action do_B :parameters () :duration (= ?duration 7200)
       :condition (at start (b_pending))
       :effect (and (at start (not (b_pending))) (at end (b_done))))
     (:durative-action do_C :parameters () :duration (= ?duration 600)
       :condition (and (at start (c_pending)) (at start (a_done)))   ; ← missing (b_done)!
       :effect (and (at start (not (c_pending))) (at end (c_done))))
     ```
   - GOOD (step C requires BOTH A and B — the full AND-join):
     ```
     (:durative-action do_A :parameters () :duration (= ?duration 3600)
       :condition (at start (a_pending))
       :effect (and (at start (not (a_pending))) (at end (a_done))))
     (:durative-action do_B :parameters () :duration (= ?duration 7200)
       :condition (at start (b_pending))
       :effect (and (at start (not (b_pending))) (at end (b_done))))
     (:durative-action do_C :parameters () :duration (= ?duration 600)
       :condition (and (at start (c_pending)) (at start (a_done)) (at start (b_done)))   ; ← both
       :effect (and (at start (not (c_pending))) (at end (c_done))))
     ```
   Steps with NO predecessors need only `(at start (X_pending))` in their condition.

9. The problem's `:goal` MUST include ALL `_done` predicates (one per action).
   This ensures the planner cannot skip any step.
   - BAD (missing some predicates — planner can skip steps with no successors):
     ```
     (:goal (and (tickets_booked) (departure_prepared)))
     ; ← missing (luggage_packed), (taxi_called), etc.
     ```
   - GOOD (every action's done predicate required):
     ```
     (:goal (and (tickets_booked) (luggage_packed) (taxi_called) ... (departure_prepared)))
     ```

10. Every action's `:duration` MUST come from the time stated in the problem for that step.
    NEVER give any action a duration of 1 second (or any tiny placeholder) unless the problem
    explicitly states that step takes 1 second.
    Do NOT split a step into "the real work" + a 1-second "state confirmation" action —
    `X_done` is simply an effect of the step's action, not a separate action.
    - BAD (the act of "buying beer" is given 1 second; its real duration is absorbed into prior steps):
      ```
      (:durative-action give_money  :parameters () :duration (= ?duration 120) :effect (at end (money_given)))
      (:durative-action buy_beer    :parameters () :duration (= ?duration 1)   :effect (at end (beer_bought)))
      ; "buy_beer" should have the duration from the problem, not 1 second
      ```
    - GOOD (each step uses the duration stated in the problem):
      ```
      (:durative-action give_money  :parameters () :duration (= ?duration 120) :effect (at end (money_given)))
      (:durative-action buy_beer    :parameters () :duration (= ?duration 60)  :effect (at end (beer_bought)))
      ```

11. A `:durative-action` may only have ONE `:condition` keyword. If multiple conditions are needed,
    wrap them ALL in a single `(and ...)` block. Never write multiple separate `:condition` lines.
    - BAD (PDDL parsers only keep the last `:condition`, silently dropping all others):
      ```
      :condition (at start (supplies_obtained))
      :condition (at start (task_pending))
      ```
    - GOOD:
      ```
      :condition (and (at start (supplies_obtained)) (at start (task_pending)))
      ```

12. The number of `:durative-actions` MUST exactly equal the number of steps (one action per step).
    Never generate more or fewer actions than steps — extra actions let the planner skip the most
    expensive one. Correspondingly, initialize exactly N `_pending` predicates in `:init`.
    - BAD (7 actions but only 6 pending predicates initialized — planner ignores the slowest):
      ```
      (:init (a_pending) (b_pending) (c_pending) (d_pending) (e_pending) (f_pending))
      ; assemble_X (1200s) has no a_pending in :init, so the planner never runs it
      ```
    - GOOD (7 actions → 7 pending predicates in :init):
      ```
      (:init (a_pending) (b_pending) (c_pending) (d_pending) (e_pending) (f_pending) (g_pending))
      ```

Return the responses in JSON format with the key: "responses" (list of dicts). Each dictionary must include:
- 'domain_pddl': the domain in PDDL 2.1 format as a string.
- 'problem_pddl': the problem in PDDL 2.1 format as a string.
- 'step_actions': list of PDDL action names in step order. step_actions[0] is the action name for Step 1, step_actions[1] for Step 2, etc.
"""


PDDL_USER_TEMPLATE = """\
Here is an asynchronous planning problem.

{question}
"""


# ── Few-shot examples ────────────────────────────────────────────────────

FEW_SHOT_EXAMPLES = [
    {
        "question": "To go to an amusement park, here are the steps and the times needed for each step.\nStep 1. Get some money (30 seconds)\nStep 2. Find a nearby amusement park (5 minutes)\nStep 3. Travel to the park (15 minutes)\nStep 4. Purchase a pass (1 minutes)\nStep 5. Go into the park (1 minutes)\n\n\nThese ordering constraints need to be obeyed when executing above steps:\nStep 1 must precede step 4.\nStep 2 must precede step 3.\nStep 3 must precede step 4.\nStep 4 must precede step 5.\n\n\nQuestion: Assume that you need to execute all the steps to complete the task and that infinite resources are available. What is the shortest possible time to go to an amusement park? Think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>)",
        "domain_pddl": """(define (domain amusement_park)
  (:requirements :durative-actions)
  (:predicates
    (get_money_pending)
    (have_money)
    (find_park_pending)
    (park_found)
    (travel_pending)
    (at_park)
    (purchase_pass_pending)
    (have_pass)
    (enter_park_pending)
    (in_park)
  )

  (:durative-action get_money
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (get_money_pending))
    :effect (and
      (at start (not (get_money_pending)))
      (at end (have_money))
    )
  )

  (:durative-action find_park
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (find_park_pending))
    :effect (and
      (at start (not (find_park_pending)))
      (at end (park_found))
    )
  )

  (:durative-action travel_to_park
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (travel_pending))
      (at start (park_found))
    )
    :effect (and
      (at start (not (travel_pending)))
      (at end (at_park))
    )
  )

  (:durative-action purchase_pass
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (purchase_pass_pending))
      (at start (have_money))
      (at start (at_park))
    )
    :effect (and
      (at start (not (purchase_pass_pending)))
      (at end (have_pass))
    )
  )

  (:durative-action enter_park
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (enter_park_pending))
      (at start (have_pass))
    )
    :effect (and
      (at start (not (enter_park_pending)))
      (at end (in_park))
    )
  )
)""",
        "problem_pddl": """(define (problem go_to_amusement_park)
  (:domain amusement_park)
  (:init
    (get_money_pending)
    (find_park_pending)
    (travel_pending)
    (purchase_pass_pending)
    (enter_park_pending)
  )
  (:goal (and
    (have_money)
    (park_found)
    (at_park)
    (have_pass)
    (in_park)
  ))
)""",
        "step_actions": ["get_money", "find_park", "travel_to_park", "purchase_pass", "enter_park"],
    },
    {
        "question": "To make breakfast in bed for their mom, here are the steps and the times needed for each step.\nStep 1. heat up pan on stove (5 minutes)\nStep 2. crack eggs in a bowl (3 minutes)\nStep 3. whisk eggs to scramble (3 minutes)\nStep 4. pour in whisked eggs (10 seconds)\nStep 5. scramble as cooking (10 minutes)\nStep 6. add butter to pain (10 seconds)\nStep 7. put eggs on plate (10 seconds)\n\n\nThese ordering constraints need to be obeyed when executing above steps:\nStep 1 must precede step 6.\nStep 2 must precede step 3.\nStep 3 must precede step 4.\nStep 4 must precede step 5.\nStep 5 must precede step 7.\nStep 6 must precede step 4.\n\n\nQuestion: Assume that you need to execute all the steps to complete the task and that infinite resources are available. What is the shortest possible time to make breakfast in bed for their mom? Think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>)",
        "domain_pddl": """(define (domain breakfast)
  (:requirements :durative-actions)
  (:predicates
    (heat_pan_pending)
    (pan_heated)
    (crack_eggs_pending)
    (eggs_cracked)
    (whisk_eggs_pending)
    (eggs_whisked)
    (add_butter_pending)
    (butter_added)
    (pour_eggs_pending)
    (eggs_poured)
    (scramble_cook_pending)
    (eggs_cooked)
    (plate_eggs_pending)
    (eggs_plated)
  )

  (:durative-action heat_pan
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (heat_pan_pending))
    :effect (and
      (at start (not (heat_pan_pending)))
      (at end (pan_heated))
    )
  )

  (:durative-action crack_eggs
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (crack_eggs_pending))
    :effect (and
      (at start (not (crack_eggs_pending)))
      (at end (eggs_cracked))
    )
  )

  (:durative-action whisk_eggs
    :parameters ()
    :duration (= ?duration 180)
    :condition (and
      (at start (whisk_eggs_pending))
      (at start (eggs_cracked))
    )
    :effect (and
      (at start (not (whisk_eggs_pending)))
      (at end (eggs_whisked))
    )
  )

  (:durative-action add_butter
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (add_butter_pending))
      (at start (pan_heated))
    )
    :effect (and
      (at start (not (add_butter_pending)))
      (at end (butter_added))
    )
  )

  (:durative-action pour_eggs
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (pour_eggs_pending))
      (at start (eggs_whisked))
      (at start (butter_added))
    )
    :effect (and
      (at start (not (pour_eggs_pending)))
      (at end (eggs_poured))
    )
  )

  (:durative-action scramble_cook
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (scramble_cook_pending))
      (at start (eggs_poured))
    )
    :effect (and
      (at start (not (scramble_cook_pending)))
      (at end (eggs_cooked))
    )
  )

  (:durative-action plate_eggs
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (plate_eggs_pending))
      (at start (eggs_cooked))
    )
    :effect (and
      (at start (not (plate_eggs_pending)))
      (at end (eggs_plated))
    )
  )
)""",
        "problem_pddl": """(define (problem breakfast-problem)
  (:domain breakfast)
  (:init
    (heat_pan_pending)
    (crack_eggs_pending)
    (whisk_eggs_pending)
    (add_butter_pending)
    (pour_eggs_pending)
    (scramble_cook_pending)
    (plate_eggs_pending)
  )
  (:goal (and
    (pan_heated)
    (eggs_cracked)
    (eggs_whisked)
    (butter_added)
    (eggs_poured)
    (eggs_cooked)
    (eggs_plated)
  ))
)""",
        # Step 1→heat_pan, 2→crack_eggs, 3→whisk_eggs, 4→pour_eggs, 5→scramble_cook, 6→add_butter, 7→plate_eggs
        "step_actions": ["heat_pan", "crack_eggs", "whisk_eggs", "pour_eggs", "scramble_cook", "add_butter", "plate_eggs"],
    },
    {
        "question": "To grill with friends, here are the steps and the times needed for each step.\nStep 1. light the grill (3 minutes)\nStep 2. let the charcoal warm up (20 minutes)\nStep 3. make the hamburger patties (5 minutes)\nStep 4. cook the hamburgers (15 minutes)\nStep 5. put the hamburgers on a bun (5 minutes)\n\n\nThese ordering constraints need to be obeyed when executing above steps:\nStep 1 must precede step 2 and 3.\nStep 2 must precede step 4.\nStep 3 must precede step 4.\nStep 4 must precede step 5.\n\n\nQuestion: Assume that you need to execute all the steps to complete the task and that infinite resources are available. What is the shortest possible time to grill with friends? Think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>)",
        "domain_pddl": """(define (domain grill-with-friends)
  (:requirements :durative-actions)
  (:predicates
    (light_grill_pending)
    (grill_lit)
    (warm_charcoal_pending)
    (charcoal_warm)
    (make_patties_pending)
    (patties_made)
    (cook_burgers_pending)
    (burgers_cooked)
    (put_on_bun_pending)
    (burgers_on_bun)
  )

  (:durative-action light_grill
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (light_grill_pending))
    :effect (and
      (at start (not (light_grill_pending)))
      (at end (grill_lit))
    )
  )

  (:durative-action warm_charcoal
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (warm_charcoal_pending))
      (at start (grill_lit))
    )
    :effect (and
      (at start (not (warm_charcoal_pending)))
      (at end (charcoal_warm))
    )
  )

  (:durative-action make_patties
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (make_patties_pending))
      (at start (grill_lit))
    )
    :effect (and
      (at start (not (make_patties_pending)))
      (at end (patties_made))
    )
  )

  (:durative-action cook_burgers
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (cook_burgers_pending))
      (at start (charcoal_warm))
      (at start (patties_made))
    )
    :effect (and
      (at start (not (cook_burgers_pending)))
      (at end (burgers_cooked))
    )
  )

  (:durative-action put_on_bun
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (put_on_bun_pending))
      (at start (burgers_cooked))
    )
    :effect (and
      (at start (not (put_on_bun_pending)))
      (at end (burgers_on_bun))
    )
  )
)""",
        "problem_pddl": """(define (problem grill-with-friends-problem)
  (:domain grill-with-friends)
  (:init
    (light_grill_pending)
    (warm_charcoal_pending)
    (make_patties_pending)
    (cook_burgers_pending)
    (put_on_bun_pending)
  )
  (:goal (and
    (grill_lit)
    (charcoal_warm)
    (patties_made)
    (burgers_cooked)
    (burgers_on_bun)
  ))
)""",
        "step_actions": ["light_grill", "warm_charcoal", "make_patties", "cook_burgers", "put_on_bun"],
    },
]


# ── Build messages ──────────────────────────────────────────────────────


import re

RETRY_USER_TEMPLATE = """\
The PDDL you generated caused the following error from the OPTIC planner:

{error}

Please fix the issues and return corrected domain and problem PDDL.
"""

def optimize_question_to_seconds(question: str) -> str:
    """
    Extract all step durations in the prompt and convert them into seconds.
    Modifies for units: days, hours, minutes → seconds.
    E.g. "Step 1. Learn X (4 days)" → "Step 1. Learn X (345600 seconds)"
    """
    def repl(match):
        value = float(match.group(1))
        unit = match.group(2).lower()
        if unit in ["day", "days"]:
            seconds = int(value * 24 * 60 * 60)
        elif unit in ["hour", "hours", "hrs"]:
            seconds = int(value * 60 * 60)
        elif unit in ["minute", "minutes", "min", "mins"]:
            seconds = int(value * 60)
        elif unit in ["second", "seconds", "sec", "secs"]:
            seconds = int(value)
        else:
            # unknown unit, skip replacement
            return match.group(0)
        return f"({seconds} seconds)"

    # The regex matches "(number unit[s])", e.g., (180 days)
    pattern = re.compile(r"\(([\d\.]+)\s*(days?|hours?|minutes?|seconds?)\)")
    new_question = pattern.sub(repl, question)
    return new_question


def build_pddl_messages(question: str, num_shots: int = 0) -> list[dict[str, str]]:
    """Return the chat messages for one NL→PDDL translation call."""
    messages = [{"role": "system", "content": PDDL_SYSTEM_PROMPT}]

    for ex in FEW_SHOT_EXAMPLES[:num_shots]:
        assistant_response = json.dumps({
            "responses": [{"domain_pddl": ex["domain_pddl"], "problem_pddl": ex["problem_pddl"], "step_actions": ex["step_actions"]}]
        })
        messages.append({"role": "user", "content": PDDL_USER_TEMPLATE.format(question=optimize_question_to_seconds(ex["question"]))})
        messages.append({"role": "assistant", "content": assistant_response})

    messages.append({"role": "user", "content": PDDL_USER_TEMPLATE.format(question=optimize_question_to_seconds(question))})
    return messages


def _truncate_solver_error(error: str, head: int = 10, tail: int = 20) -> str:
    """Keep only the first `head` and last `tail` lines of solver output.

    OPTIC emits thousands of lines of search trace (e.g. 2500 "is uninteresting"
    lines) that are useless for the LLM but can bloat the retry message to 200k+
    characters and stall API calls.  Only the first few lines (parse errors) and
    last few lines (final status / heuristic) matter.
    """
    lines = error.splitlines()
    if len(lines) <= head + tail:
        return error
    kept = lines[:head] + [f"... ({len(lines) - head - tail} lines omitted) ..."] + lines[-tail:]
    return "\n".join(kept)


def build_retry_messages(
    question: str,
    domain_pddl: str | None,
    problem_pddl: str | None,
    error: str,
    num_shots: int = 0,
    step_actions: Optional[List[str]] = None,
) -> list[dict[str, str]]:
    """Build retry messages that feed solver/parse errors back to the LLM."""
    messages = build_pddl_messages(question, num_shots=num_shots)

    if domain_pddl and problem_pddl:
        prev_attempt = json.dumps({
            "responses": [{"domain_pddl": domain_pddl, "problem_pddl": problem_pddl, "step_actions": step_actions or []}]
        })
        messages.append({"role": "assistant", "content": prev_attempt})

    messages.append({"role": "user", "content": RETRY_USER_TEMPLATE.format(error=_truncate_solver_error(error))})
    return messages


# ── Parse structured response ──────────────────────────────────────────


def parse_pddl_response(response: str) -> Optional[tuple[str, str, List[str]]]:
    """Parse the structured JSON response into (domain_pddl, problem_pddl, step_actions).

    Expects a JSON string matching the PDDLResponse schema.
    Returns None if parsing fails.
    """
    if not response:
        return None

    # Extract JSON from markdown code fence if present (some models add reasoning preamble)
    fence_match = re.search(r"```(?:json)?\s*(\{.*?)\s*```", response, re.DOTALL)
    if fence_match:
        response = fence_match.group(1).strip()
    else:
        # No code fence — try to find a bare JSON object in the text (e.g. "Here are the PDDL:\n\n{...}")
        brace_idx = response.find("{")
        if brace_idx != -1:
            response = response[brace_idx:]

    # Some models (e.g. llama) use line-continuation style in JSON string values:
    # they write \n\ + actual-newline instead of a clean \n escape.
    # Remove the bare backslash + actual-newline sequences so json.loads can parse.
    response = response.replace("\\\n", "")

    try:
        # Use raw_decode to parse the first JSON object and ignore any trailing text
        # (some models append explanations after the JSON block)
        data, _ = json.JSONDecoder().raw_decode(response)
        pddl_resp = PDDLResponse(**data)
        if pddl_resp.responses:
            r = pddl_resp.responses[0]
            return r.domain_pddl, r.problem_pddl, r.step_actions
    except (json.JSONDecodeError, ValueError, KeyError):
        pass

    return None
