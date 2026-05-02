"""Two-step NL → PDDL conversion.

Step 1: LLM extracts a structured dependency graph (JSON) from the NL problem.
Step 2: Python mechanically generates syntactically-correct PDDL from the graph.

Advantages over one-step:
  - No PDDL syntax errors (Python generates the PDDL, not the LLM)
  - LLM only needs to understand NL and output structured JSON
  - Works well for large problems (100+ nodes) where PDDL output is very long
"""
from __future__ import annotations

import json
import re
from typing import List, Optional

from pydantic import BaseModel

from src.llms.prompts import (
    GRAPH_SYSTEM_PROMPT,
    GRAPH_USER_TEMPLATE,
)
from src.method.nl_to_pddl import optimize_question_to_seconds


# ── Pydantic schema ─────────────────────────────────────────────────────

class GraphStep(BaseModel):
    step_number: int        # original step number from the problem (1-indexed)
    name: str               # snake_case action identifier
    duration: int           # duration in seconds
    depends_on: List[str]   # names of direct predecessor steps


class GraphStepsResult(BaseModel):
    steps: List[GraphStep]


class GraphResponse(BaseModel):
    responses: List[GraphStepsResult]


# ── Build messages ───────────────────────────────────────────────────────

def build_graph_messages(question: str) -> list[dict]:
    return [
        {"role": "system", "content": GRAPH_SYSTEM_PROMPT},
        {"role": "user", "content": GRAPH_USER_TEMPLATE.format(
            question=optimize_question_to_seconds(question)
        )},
    ]


# ── Parse response ───────────────────────────────────────────────────────

def parse_graph_response(response: str) -> Optional[List[GraphStep]]:
    """Parse LLM response into a list of GraphStep objects.

    Returns None if parsing fails or the graph is invalid.
    """
    if not response:
        return None

    # Extract JSON from markdown code fence if present
    fence_match = re.search(r"```(?:json)?\s*(\{.*?)\s*```", response, re.DOTALL)
    if fence_match:
        response = fence_match.group(1).strip()
    else:
        brace_idx = response.find("{")
        if brace_idx != -1:
            response = response[brace_idx:]

    response = response.replace("\\\n", "")

    try:
        data, _ = json.JSONDecoder().raw_decode(response)
        graph_resp = GraphResponse(**data)
        if not graph_resp.responses:
            return None
        steps = graph_resp.responses[0].steps
        if not steps:
            return None

        # Normalize all names to snake_case (handles kebab-case, camelCase, spaces)
        def _to_snake(name: str) -> str:
            # kebab-case → snake_case
            name = name.replace("-", "_").replace(" ", "_")
            # camelCase / PascalCase → snake_case
            name = re.sub(r"([A-Z]+)([A-Z][a-z])", r"\1_\2", name)
            name = re.sub(r"([a-z\d])([A-Z])", r"\1_\2", name)
            return name.lower()

        for step in steps:
            step.name = _to_snake(step.name)
        for step in steps:
            step.depends_on = [_to_snake(d) for d in step.depends_on]

        # After normalization, validate all depends_on names exist
        known = {s.name for s in steps}
        for step in steps:
            step.depends_on = [d for d in step.depends_on if d in known]

        return steps
    except (json.JSONDecodeError, ValueError, KeyError):
        return None


# ── Graph → PDDL ────────────────────────────────────────────────────────

def graph_to_pddl(steps: List[GraphStep]) -> tuple[str, str]:
    """Mechanically generate syntactically-correct PDDL from a dependency graph.

    Uses the parameterless encoding:
      - Each step gets  (X_pending) and (X_done) predicates.
      - (X_done) encodes both "step finished" and "successor precondition".
      - Goal requires all (X_done) predicates.
    """
    predicates: list[str] = []
    actions: list[str] = []
    init_facts: list[str] = []
    goal_facts: list[str] = []

    for step in steps:
        n = step.name
        predicates += [f"({n}_pending)", f"({n}_done)"]
        init_facts.append(f"({n}_pending)")
        goal_facts.append(f"({n}_done)")

        conds = [f"(at start ({n}_pending))"]
        for dep in step.depends_on:
            conds.append(f"(at start ({dep}_done))")
        cond_str = conds[0] if len(conds) == 1 else "(and " + " ".join(conds) + ")"

        actions.append(
            f"  (:durative-action {n}\n"
            f"    :parameters ()\n"
            f"    :duration (= ?duration {step.duration})\n"
            f"    :condition {cond_str}\n"
            f"    :effect (and (at start (not ({n}_pending))) (at end ({n}_done))))"
        )

    domain = (
        "(define (domain async-planning)\n"
        "  (:requirements :durative-actions)\n"
        "  (:predicates\n"
        "    " + "\n    ".join(predicates) + ")\n\n"
        + "\n".join(actions) + ")"
    )

    problem = (
        "(define (problem async-problem)\n"
        "  (:domain async-planning)\n"
        "  (:init\n"
        "    " + "\n    ".join(init_facts) + ")\n"
        "  (:goal (and\n"
        "    " + "\n    ".join(goal_facts) + ")))"
    )

    return domain, problem
