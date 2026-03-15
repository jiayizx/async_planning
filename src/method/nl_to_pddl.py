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


# ── Robotouille problem-only generation ────────────────────────────────

from src.llms.prompts import (
    ROBOTOUILLE_SYSTEM_PROMPT,
    ROBOTOUILLE_SYSTEM_PROMPT_OLD,
    ROBOTOUILLE_USER_TEMPLATE,
    ROBOTOUILLE_USER_TEMPLATE_NL,
    ROBOTOUILLE_FREE_DOMAIN_SYSTEM_PROMPT,
    ROBOTOUILLE_FREE_DOMAIN_USER_TEMPLATE,
)


class RobotouillePDDL(BaseModel):
    """Schema for Robotouille problem-only generation (domain is fixed)."""
    problem_pddl: str


def _annotate_robotouille_json(env: dict) -> dict:
    """Pre-compute PDDL names and station assignments so the LLM doesn't need to.

    Adds to each station:   pddl_name  (e.g. "table_1")
    Adds to each item:      pddl_name, station (the station's pddl_name at same (x,y)),
                            atop (pddl_name of item one level lower at same (x,y), or null),
                            held_by (player pddl_name if item is at player's (x,y), or null)
    Adds to each player:    pddl_name, facing_station (station at player_pos + direction),
                            holding (list of item pddl_names at player's (x,y))
    """
    import copy
    from collections import defaultdict

    env = copy.deepcopy(env)

    # Assign PDDL names per type sorted by (x, y) — must match the game engine's
    # builder ordering so _build_name_map aligns LLM names to builder names correctly.
    type_count: dict[str, int] = defaultdict(int)
    coord_to_station: dict[tuple, str] = {}

    stations_sorted = sorted(env.get("stations", []), key=lambda s: (s["x"], s["y"]))
    for s in stations_sorted:
        type_count[s["name"]] += 1
        s["pddl_name"] = f"{s['name']}_{type_count[s['name']]}"
        coord_to_station[(s["x"], s["y"])] = s["pddl_name"]

    type_count.clear()
    # Assign item names sorted by (x, y, stack-level) to match builder ordering.
    coord_level_to_item: dict[tuple, str] = {}
    items_sorted = sorted(
        env.get("items", []),
        key=lambda i: (i["x"], i["y"], i.get("stack-level", 0))
    )
    for i in items_sorted:
        type_count[i["name"]] += 1
        i["pddl_name"] = f"{i['name']}_{type_count[i['name']]}"
        coord_level_to_item[(i["x"], i["y"], i.get("stack-level", 0))] = i["pddl_name"]

    # Track which station coordinates have items on their surface (stack-level=0)
    occupied_stations: set[tuple] = set()
    for i in env.get("items", []):
        if i.get("stack-level", 0) == 0:
            occupied_stations.add((i["x"], i["y"]))

    # Mark each station as initial_empty based on whether any items are on its surface
    for s in env.get("stations", []):
        s["initial_empty"] = (s["x"], s["y"]) not in occupied_stations

    for i in env.get("items", []):
        i["station"] = coord_to_station.get((i["x"], i["y"]), f"unknown_{i['x']}_{i['y']}")
        level = i.get("stack-level", 0)
        if level > 0:
            i["atop"] = coord_level_to_item.get((i["x"], i["y"], level - 1))
        else:
            i["atop"] = None
        i["held_by"] = None  # will be filled in player loop below

    # Build player PDDL names and detect held items
    type_count.clear()
    player_coord: dict[tuple, str] = {}  # (x,y) → player pddl_name
    for p in env.get("players", []):
        type_count[p["name"]] += 1
        p["pddl_name"] = f"{p['name']}_{type_count[p['name']]}"
        player_coord[(p["x"], p["y"])] = p["pddl_name"]

    # For each player, find items at player's position (= held items)
    for p in env.get("players", []):
        dx, dy = p.get("direction", [0, -1])
        fx, fy = p["x"] + dx, p["y"] + dy
        p["facing_station"] = coord_to_station.get((fx, fy), f"unknown_{fx}_{fy}")
        held = [
            i["pddl_name"]
            for i in env.get("items", [])
            if i["x"] == p["x"] and i["y"] == p["y"]
        ]
        p["holding"] = held  # list of item pddl_names the player is holding

    # Back-fill held_by on items
    for i in env.get("items", []):
        player_name = player_coord.get((i["x"], i["y"]))
        if player_name:
            i["held_by"] = player_name

    # Resolve goal ids → pddl_args so the LLM doesn't need to guess entity mapping.
    # The goal.ids are combination labels (not absolute entity IDs).
    # For each entity type referenced, sort the unique IDs numerically and map
    # the i-th ID to the i-th pddl entity of that type (sorted by pddl_name).
    _type_to_pddl: dict[str, list[str]] = {}
    for field, etype in (("stations", None), ("items", None), ("players", None)):
        for entity in env.get(field, []):
            name_base = re.sub(r"_\d+$", "", entity.get("pddl_name", ""))
            if name_base:
                _type_to_pddl.setdefault(name_base, []).append(entity["pddl_name"])

    # Collect unique IDs per arg-type across all goal predicates
    _type_ids: dict[str, set] = {}
    for g in env.get("goal", []):
        for arg, gid in zip(g.get("args", []), g.get("ids", [])):
            _type_ids.setdefault(arg, set()).add(gid)

    # Build: arg_type → {id_label: pddl_name}
    _id_to_pddl: dict[str, dict] = {}
    for arg_type, id_set in _type_ids.items():
        sorted_ids = sorted(id_set)  # sort numerically so assignment is stable
        pddl_names = sorted(_type_to_pddl.get(arg_type, []))
        mapping: dict = {}
        for i, gid in enumerate(sorted_ids):
            mapping[gid] = pddl_names[i] if i < len(pddl_names) else f"{arg_type}_{i + 1}"
        _id_to_pddl[arg_type] = mapping

    # Add pddl_args to each goal predicate
    for g in env.get("goal", []):
        pddl_args = []
        for arg, gid in zip(g.get("args", []), g.get("ids", [])):
            pddl_args.append(_id_to_pddl.get(arg, {}).get(gid, f"{arg}_{gid}"))
        g["pddl_args"] = pddl_args

    return env


def build_robotouille_problem_messages(
    question: str | dict,
    domain_pddl: str,
    effect_goal: bool = False,
) -> list[dict[str, str]]:
    """Build chat messages for Robotouille problem-only PDDL generation.

    question can be:
      - dict: raw original_json → annotated then sent as JSON (preferred)
      - str:  natural language description → uses NL template
    """
    system_prompt = ROBOTOUILLE_SYSTEM_PROMPT if effect_goal else ROBOTOUILLE_SYSTEM_PROMPT_OLD
    messages = [{"role": "system", "content": system_prompt}]
    if isinstance(question, dict):
        annotated = _annotate_robotouille_json(question)
        user_content = ROBOTOUILLE_USER_TEMPLATE.format(
            domain_pddl=domain_pddl,
            original_json=json.dumps(annotated, indent=2),
        )
    else:
        user_content = ROBOTOUILLE_USER_TEMPLATE_NL.format(
            domain_pddl=domain_pddl,
            question=question,
        )
    messages.append({"role": "user", "content": user_content})
    return messages


def build_robotouille_free_domain_messages(
    original_json: dict,
    effect_goal: bool = False,
) -> list[dict[str, str]]:
    """Build chat messages for Robotouille free-domain generation (domain+problem).

    effect_goal=False (formalizer):  single-turn, generate domain+problem directly.
    effect_goal=True  (formalizer+): prepend a planning analysis step asking the LLM
                                     to reason about action sequences before writing PDDL.
    """
    annotated = _annotate_robotouille_json(original_json)
    # Extract timing constants to surface in prompt
    config = original_json.get("config", {})
    cook_time = config.get("cook_time", {}).get("default", 3)
    num_cuts = config.get("num_cuts", {}).get("default", 3)
    annotated["_timing"] = {"cook_time": cook_time, "num_cuts": num_cuts}
    json_str = json.dumps(annotated, indent=2)
    messages = [{"role": "system", "content": ROBOTOUILLE_FREE_DOMAIN_SYSTEM_PROMPT}]

    if effect_goal:
        # formalizer+: first ask for planning analysis, then generate PDDL
        analysis_prompt = (
            "## Environment JSON\n\n```json\n" + json_str + "\n```\n\n"
            "Before writing PDDL, do a planning analysis:\n"
            "1. List each goal predicate and identify which action sequence achieves it.\n"
            "2. For each action, list what predicates must be true beforehand and what changes.\n"
            "3. Identify which predicates are needed in :init and :goal.\n"
            "Write your analysis in plain text (no PDDL yet)."
        )
        messages.append({"role": "user", "content": analysis_prompt})
    else:
        messages.append({"role": "user", "content": ROBOTOUILLE_FREE_DOMAIN_USER_TEMPLATE.format(
            original_json=json_str,
        )})

    return messages


def parse_robotouille_problem_response(response: str) -> Optional[str]:
    """Parse the LLM response to extract problem_pddl string.

    Returns the problem PDDL string, or None if parsing fails.
    """
    if not response:
        return None

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
        parsed = RobotouillePDDL(**data)
        problem = _fix_trailing_brace(parsed.problem_pddl)
        return problem
    except (json.JSONDecodeError, ValueError, KeyError):
        pass

    # Fallback: try to extract raw PDDL directly (model may skip JSON wrapper)
    pddl_match = re.search(r"(\(define\s*\(problem\b.*)", response, re.DOTALL)
    if pddl_match:
        return _fix_trailing_brace(pddl_match.group(1).strip())

    return None


def normalize_robotouille_problem_to_domain(problem_pddl: str) -> str:
    """Ensure the (:domain ...) reference in the problem matches our domain name.

    Some LLMs invent a different domain name; patch it to 'robotouille-async'.
    """
    return re.sub(
        r"\(:domain\s+[\w-]+\)",
        "(:domain robotouille)",
        problem_pddl,
        count=1,
    )
