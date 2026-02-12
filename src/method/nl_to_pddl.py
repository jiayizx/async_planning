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

CRITICAL PDDL RULES for OPTIC planner compatibility:
1. Use ONLY `:durative-actions` and `:typing` in `:requirements`. Do NOT use `:negative-preconditions`, `:adl`, or `:disjunctive-preconditions`.
2. NEVER use `(not ...)` in action preconditions. Instead, create positive "not_done" predicates:
   - BAD:  `:condition (at start (not (task_done)))`
   - GOOD: `:condition (at start (task_pending))`
   Then in `:effect`, set `(not (task_pending))` and `(task_done)`.
   Note: `(not ...)` is allowed in effects, just not in conditions.
3. ALL predicates must be declared in the `:predicates` block before use.
4. ALL types must be declared in the `:types` block.
5. Use `(:durative-action ...)` with `:duration`, `:condition`, and `:effect` — not `(:action ...)`.
6. Use `(at start ...)`, `(at end ...)`, or `(over all ...)` inside `:condition` and `:effect`.
7. Initialize ALL "pending" predicates as true in the problem's `:init`.

Example durative-action pattern:
```
(:durative-action do_task
  :parameters (?a - agent)
  :duration (= ?duration 5)
  :condition (and
    (at start (task_pending ?a))
    (over all (available ?a))
  )
  :effect (and
    (at start (not (task_pending ?a)))
    (at end (task_done ?a))
  )
)
```

Return the responses in JSON format with the key: "responses" (list of dicts). Each dictionary must include:
- 'domain_pddl': the domain in PDDL 2.1 format as a string.
- 'problem_pddl': the problem in PDDL 2.1 format as a string.
"""


PDDL_USER_TEMPLATE = """\
Here is an asynchronous planning problem.

{question}
"""


# ── Build messages ──────────────────────────────────────────────────────


import re

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


def build_pddl_messages(question: str) -> list[dict[str, str]]:
    """Return the chat messages for one NL→PDDL translation call."""
    return [
        {"role": "system", "content": PDDL_SYSTEM_PROMPT},
        {"role": "user", "content": PDDL_USER_TEMPLATE.format(question=optimize_question_to_seconds(question))},
    ]


# ── Parse structured response ──────────────────────────────────────────


def parse_pddl_response(response: str) -> Optional[tuple[str, str]]:
    """Parse the structured JSON response into (domain_pddl, problem_pddl).

    Expects a JSON string matching the PDDLResponse schema.
    Returns None if parsing fails.
    """
    if not response:
        return None

    try:
        data = json.loads(response)
        pddl_resp = PDDLResponse(**data)
        if pddl_resp.responses:
            r = pddl_resp.responses[0]
            return r.domain_pddl, r.problem_pddl
    except (json.JSONDecodeError, ValueError, KeyError):
        pass

    return None, None
