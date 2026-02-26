"""NL → PDDL 2.1 conversion for async planning problems.

The LLM directly translates the natural language planning problem into
PDDL 2.1 domain and problem files with :durative-actions.

Uses structured output (pydantic schema) to guarantee valid JSON from the LLM.

Prompt design inspired by:
  https://github.com/CassieHuang22/llm-as-pddl-formalizer
"""
from __future__ import annotations

import json
import re
from typing import List, Optional

from pydantic import BaseModel

from src.llms.prompts import (
    PDDL_SYSTEM_PROMPT,
    PDDL_USER_TEMPLATE,
    PDDL_FEW_SHOT_EXAMPLES,
)


# ── Pydantic schema for structured output ──────────────────────────────


class PDDLResult(BaseModel):
    domain_pddl: str
    problem_pddl: str


class PDDLResponse(BaseModel):
    responses: List[PDDLResult]


# ── Build messages ──────────────────────────────────────────────────────

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

    for ex in PDDL_FEW_SHOT_EXAMPLES[:num_shots]:
        assistant_response = json.dumps({
            "responses": [{"domain_pddl": ex["domain_pddl"], "problem_pddl": ex["problem_pddl"]}]
        })
        messages.append({"role": "user", "content": PDDL_USER_TEMPLATE.format(question=optimize_question_to_seconds(ex["question"]))})
        messages.append({"role": "assistant", "content": assistant_response})

    messages.append({"role": "user", "content": PDDL_USER_TEMPLATE.format(question=optimize_question_to_seconds(question))})
    return messages



# ── PDDL sanitization ─────────────────────────────────────────────────


def _sanitize_pddl(domain: str, problem: str) -> tuple[str, str]:
    """Fix common LLM-generated PDDL bugs before sending to the solver.

    Fixes applied:
      1. Trailing '}' → ')' (LLM confuses JSON brace with PDDL paren)
      2. Missing ':parameters (?s - step)' in durative-actions
         (LLM hardcodes step names instead of using a variable)
    """
    # Fix 1: trailing } → )
    domain = _fix_trailing_brace(domain)
    problem = _fix_trailing_brace(problem)

    return domain, problem


def _fix_trailing_brace(pddl: str) -> str:
    """Replace a trailing '}' with ')' in PDDL text."""
    stripped = pddl.rstrip()
    if stripped.endswith("}"):
        return stripped[:-1] + ")"
    return pddl

# ── Parse structured response ──────────────────────────────────────────


def parse_pddl_response(response: str) -> Optional[tuple[str, str]]:
    """Parse the structured JSON response into (domain_pddl, problem_pddl).

    Expects a JSON string matching the PDDLResponse schema.
    Returns None if parsing fails. Applies sanitization fixes to the PDDL.
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
            domain, problem = _sanitize_pddl(r.domain_pddl, r.problem_pddl)
            return domain, problem
    except (json.JSONDecodeError, ValueError, KeyError):
        pass

    return None
