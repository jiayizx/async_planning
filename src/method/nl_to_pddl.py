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
    PDDL_SYSTEM_PROMPT_OLD,
    PDDL_USER_TEMPLATE,
    PDDL_FEW_SHOT_EXAMPLES,
    DEP_ANALYSIS_SYSTEM_PROMPT,
    DEP_ANALYSIS_USER_TEMPLATE,
)


# ── Pydantic schema for structured output ──────────────────────────────


class DepAnalysis(BaseModel):
    analysis: str


class PDDLResult(BaseModel):
    domain_pddl: str
    problem_pddl: str
    step_actions: List[str] = []  # action names in step order: step_actions[i] = action for Step i+1


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


def build_pddl_messages(
    question: str,
    num_shots: int = 0,
    dep_analysis: str | None = None,
    effect_goal: bool = False,
) -> list[dict[str, str]]:
    """Return the chat messages for one NL→PDDL translation call.

    effect_goal=False → PDDL_SYSTEM_PROMPT_OLD  (old parameterized encoding, Formalizer)
    effect_goal=True  → PDDL_SYSTEM_PROMPT       (parameterless encoding, Formalizer+)
    """
    system_prompt = PDDL_SYSTEM_PROMPT if effect_goal else PDDL_SYSTEM_PROMPT_OLD
    messages = [{"role": "system", "content": system_prompt}]

    for ex in PDDL_FEW_SHOT_EXAMPLES[:num_shots]:
        assistant_response = json.dumps({
            "responses": [{"domain_pddl": ex["domain_pddl"], "problem_pddl": ex["problem_pddl"], "step_actions": ex["step_actions"]}]
        })
        messages.append({"role": "user", "content": PDDL_USER_TEMPLATE.format(question=optimize_question_to_seconds(ex["question"]))})
        messages.append({"role": "assistant", "content": assistant_response})

    user_content = PDDL_USER_TEMPLATE.format(question=optimize_question_to_seconds(question))
    if dep_analysis:
        user_content += (
            "\n\nDEPENDENCY ANALYSIS (pre-computed — use this to set correct preconditions):\n"
            + dep_analysis
        )
    messages.append({"role": "user", "content": user_content})
    return messages


def build_dep_analysis_messages(question: str) -> list[dict[str, str]]:
    """Return messages for the Phase-1 dependency analysis call."""
    return [
        {"role": "system", "content": DEP_ANALYSIS_SYSTEM_PROMPT},
        {"role": "user", "content": DEP_ANALYSIS_USER_TEMPLATE.format(question=question)},
    ]


def parse_dep_analysis_response(resp: str) -> str | None:
    """Extract the analysis string from a DepAnalysis JSON response."""
    if not resp:
        return None
    try:
        brace_idx = resp.find("{")
        if brace_idx != -1:
            resp = resp[brace_idx:]
        data, _ = json.JSONDecoder().raw_decode(resp)
        return data.get("analysis", "").strip() or None
    except Exception:
        # Fallback: use raw response as plain text
        return resp.strip() or None


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


def parse_pddl_response(response: str) -> Optional[tuple[str, str, List[str]]]:
    """Parse the structured JSON response into (domain_pddl, problem_pddl, step_actions).

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
            return domain, problem, r.step_actions
    except (json.JSONDecodeError, ValueError, KeyError):
        pass

    return None
