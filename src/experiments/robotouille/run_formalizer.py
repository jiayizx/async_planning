"""
Run LLM-as-Formalizer pipeline on Robotouille.

Pipeline per example:
  1. Load record from data/robotouille_single_agent_async.json
  2. Build NL from record's 'nl' field
  3. LLM translates NL + domain → problem PDDL (Robotouille STRIPS)
  4. Solve with OPTIC via solver.planning.domains

Retry strategy — two history modes (--history-mode):
  cumulative (default):
    Full chat history grows across retries; the LLM sees ALL prior attempts.
  single-turn:
    Only the immediately preceding assistant response + error are kept.

Evaluation (inspired by baselines/robotouille/main.py):
  - solve_rate: fraction of problems where OPTIC finds a valid plan
  - plan_steps: average number of actions in the LLM-generated plans
"""
from __future__ import annotations

import argparse
import json
import os
import sys
from pathlib import Path

from tqdm import tqdm


from dotenv import load_dotenv
load_dotenv()

_PROJECT_ROOT = Path(__file__).resolve().parent.parent.parent.parent
_ROBOTOUILLE_ROOT = _PROJECT_ROOT / "baselines" / "robotouille"
_DOMAIN_PDDL_PATH = _ROBOTOUILLE_ROOT / "environments" / "robotouille_async.pddl"
_DOMAIN_PDDL_NOTYPING_PATH = _ROBOTOUILLE_ROOT / "environments" / "robotouille_async_notyping.pddl"
_DEFAULT_DATA_PATH = _PROJECT_ROOT / "data" / "robotouille_single_agent_async.json"

for p in (_PROJECT_ROOT, _ROBOTOUILLE_ROOT):
    if str(p) not in sys.path:
        sys.path.insert(0, str(p))

from src.experiments.utils import build_llm_client
from src.llms.base import BaseLLM
from src.llms.prompts import SYNTAX_RETRY_TEMPLATE
from src.method.nl_to_pddl import (
    PDDLResponse,
    RobotouillePDDL,
    build_pddl_messages,
    build_robotouille_problem_messages,
    build_robotouille_temporal_messages,
    parse_pddl_response,
    parse_robotouille_problem_response,
    normalize_robotouille_problem_to_domain,
    _truncate_solver_error,
    _annotate_robotouille_json,
)
from src.method.pddl_solver import solve, batch_solve, SolverResult
from src.evaluation.robotouille.eval import evaluate_record, summarize_eval


_TRANSIENT_SOLVER_RETRIES = 5  # Apptainer container errors are transient; give server time to recover
SOLVER_TIMEOUT = 300
DEFAULT_SOLVER = "lama-first"  # faster than OPTIC for classical STRIPS domains
# Fallback planners tried when lama-first returns empty output (search timeout on complex problems)
_LAMA_FALLBACKS = ["lama", "fd-ms"]


import re as _re


def _normalize_predicate_names(domain_pddl: str, problem_pddl: str) -> tuple[str, str]:
    """Rewrite LLM predicate aliases to match the reference domain vocabulary.

    The LLM often generates synonymous predicate names that differ from what
    the game engine's reference domain uses, causing env simulation failures:

      LLM name        →  reference domain name
      ─────────────────────────────────────────
      handempty       →  nothing
      holding         →  has
      on-surface      →  on
      fry-cut-item    →  fry (alias used in plan_action_types but not game engine)

    This rewrite is applied to both the domain and problem PDDL so the OPTIC
    planner still sees a consistent pair, and the linearized plan will contain
    the correct action/predicate names for the game engine.

    Only rewrites when the LLM predicate is present AND the reference name is
    absent (avoids double-rewriting a domain that already uses correct names).
    """
    rewrites = [
        # (llm_name, ref_name) — word-boundary safe substitution
        ("handempty", "nothing"),
        ("holding",   "has"),
        ("on-surface", "on"),
        # fry-cut-item / fry_cut_item → fry (hallucinated combined action; game engine uses separate fry/cut)
        ("fry-cut-item", "fry"),
        ("fry_cut_item", "fry"),
    ]
    for llm_name, ref_name in rewrites:
        # Skip if the reference name already appears in the domain (already correct)
        if ref_name in domain_pddl and llm_name not in domain_pddl:
            continue
        if llm_name not in domain_pddl and llm_name not in problem_pddl:
            continue
        # Replace in both — use word-boundary-like pattern to avoid partial matches
        pat = _re.compile(r'\b' + _re.escape(llm_name) + r'\b')
        domain_pddl = pat.sub(ref_name, domain_pddl)
        problem_pddl = pat.sub(ref_name, problem_pddl)
    return domain_pddl, problem_pddl


def _fix_nothing_contradiction(problem_pddl: str) -> str:
    """Remove (nothing ?p) from :init when (has ?p ?i) is also present.

    (nothing ?p) and (has ?p ?i) are mutually exclusive — a player holding an
    item cannot also have an empty hand.  LLMs frequently emit both when the
    robot starts holding an item, which gives OPTIC a trivial shortcut (it can
    skip the pick-up and use nothing-hand actions directly) or makes goals
    unreachable.  Drop the (nothing ...) fact for any player that also appears
    in a (has ...) fact.
    """
    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)

    # Find all players that are holding something
    holding_players = set(_re.findall(r'\(has\s+(\S+)\s+\S+\)', init_text))
    if not holding_players:
        return problem_pddl

    # Remove (nothing <player>) for those players
    def _remove_nothing(m):
        player = m.group(1)
        if player in holding_players:
            return ""
        return m.group(0)

    new_init = _re.sub(r'\(nothing\s+(\S+)\)', _remove_nothing, init_text)
    return problem_pddl[:init_m.start(1)] + new_init + problem_pddl[init_m.end(1):]


def _fix_missing_capability_predicates(problem_pddl: str) -> str:
    """Inject missing capability predicates inferred from the goal.

    LLMs often forget to add (isfryable X) / (iscookable X) / (iscuttable X)
    to :init even when the goal requires (isfried X) / (iscooked X) / (iscut X).
    Without these the corresponding action can never fire and the problem is unsolvable.
    """
    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    goal_m = _re.search(r'\(:goal(.*)', problem_pddl, _re.DOTALL)
    if not init_m or not goal_m:
        return problem_pddl

    init_text = init_m.group(1)
    goal_text = goal_m.group(1)

    # Map goal state predicate → required capability predicate
    capability_map = [
        ("isfried", "isfryable"),
        ("iscooked", "iscookable"),
        ("iscut", "iscuttable"),
    ]

    to_add = []
    for goal_pred, cap_pred in capability_map:
        # Find all items that appear as (isfried item) / (iscooked item) / (iscut item) in goal
        for item in _re.findall(r'\(' + goal_pred + r'\s+(\S+)\)', goal_text):
            cap_fact = f"({cap_pred} {item})"
            if cap_fact not in init_text:
                to_add.append(cap_fact)

    if not to_add:
        return problem_pddl

    # Inject before closing paren of :init
    new_init = init_text.rstrip() + " " + " ".join(to_add)
    return problem_pddl[:init_m.start(1)] + new_init + problem_pddl[init_m.end(1):]


def _fix_stacked_clear_contradiction(problem_pddl: str) -> str:
    """Remove (clear X) from :init when (atop Y X) is also present.

    (atop Y X) means item Y is on top of item X, so X is NOT clear.
    LLMs frequently emit both, giving OPTIC a false shortcut and causing
    'preconditions not met: (clear X)' failures in the env simulator.
    """
    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)

    # Items that have something on top of them
    covered_items = set(_re.findall(r'\(atop\s+\S+\s+(\S+)\)', init_text))
    if not covered_items:
        return problem_pddl

    def _remove_clear(m):
        item = m.group(1)
        if item in covered_items:
            return ""
        return m.group(0)

    new_init = _re.sub(r'\(clear\s+(\S+)\)', _remove_clear, init_text)
    return problem_pddl[:init_m.start(1)] + new_init + problem_pddl[init_m.end(1):]


def _fix_empty_predicate(domain_pddl: str, problem_pddl: str) -> str:
    """Inject missing (empty station) facts for stations that have no items.

    The ``place`` action requires ``(empty ?s)`` but LLM-generated problems
    often forget to initialise this for stations that have no items (e.g. the
    stove, spare tables).  Without it the planner can never place items,
    making goals unreachable.
    """
    if "(empty " not in domain_pddl:
        return problem_pddl

    pat_obj = r'\b([a-z][a-z_]*_\d+)\b'

    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    obj_m = _re.search(r'\(:objects(.*?)\)', problem_pddl, _re.DOTALL)
    if not obj_m:
        return problem_pddl
    stations: set[str] = set()
    segments = _re.split(r'\s*-\s*(\w+)', obj_m.group(1))
    for names_raw, type_name in zip(segments[0::2], segments[1::2]):
        if type_name.strip() == "station":
            stations.update(names_raw.split())

    occupied: set[str] = set()
    for fact in facts:
        toks = _re.findall(pat_obj, fact)
        stripped = fact.strip()
        if len(toks) >= 2 and (stripped.startswith("(at ") or "on-surface" in stripped or stripped.startswith("(on ") or stripped.startswith("(container_at ")):
            occupied.add(toks[-1])

    already_empty: set[str] = set()
    for fact in facts:
        m = _re.match(r'\(empty\s+(\S+)\s*\)', fact.strip())
        if m:
            already_empty.add(m.group(1))

    to_inject = stations - occupied - already_empty
    if not to_inject:
        return problem_pddl

    new_facts = list(facts) + [f"(empty {s})" for s in sorted(to_inject)]
    new_init = "(:init " + " ".join(new_facts) + ")"
    return problem_pddl[:init_m.start()] + new_init + problem_pddl[init_m.end():]


def _fix_container_empty_conflict(problem_pddl: str) -> str:
    """Remove (empty station) facts that conflict with (container_at container station).

    The game engine treats container placement as occupying a station (station_empty=False),
    so a station cannot simultaneously have container_at AND be empty for items.
    LLMs frequently initialise both, which makes planning impossible: the planner
    thinks the station is free for items while the game engine rejects the action.

    Fix: for every (container_at ?c ?s) in :init, remove (empty ?s) from :init.
    """
    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)

    # Collect stations occupied by containers
    container_stations: set[str] = set()
    for m in _re.finditer(r'\(container_at\s+\S+\s+(\S+)\s*\)', init_text):
        container_stations.add(m.group(1))

    if not container_stations:
        return problem_pddl

    # Remove (empty station) for those stations
    def _remove_empty(text: str, stations: set[str]) -> str:
        for s in stations:
            text = _re.sub(r'\(\s*empty\s+' + _re.escape(s) + r'\s*\)', '', text)
        return text

    new_init_text = _remove_empty(init_text, container_stations)
    if new_init_text == init_text:
        return problem_pddl

    new_init = "(:init" + new_init_text + ")"
    return problem_pddl[:init_m.start()] + new_init + problem_pddl[init_m.end():]


def _fix_vacant_predicate(domain_pddl: str, problem_pddl: str) -> str:
    """Inject missing (vacant station) facts for stations not occupied by a player.

    The ``move`` action requires ``(vacant ?to)`` but LLM-generated problems
    frequently omit this for most stations, making the robot unable to move
    anywhere and causing 'Goals unreachable'.
    """
    if "(vacant " not in domain_pddl:
        return problem_pddl

    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    obj_m = _re.search(r'\(:objects(.*?)\)', problem_pddl, _re.DOTALL)
    if not obj_m:
        return problem_pddl
    stations: set[str] = set()
    segments = _re.split(r'\s*-\s*(\w+)', obj_m.group(1))
    for names_raw, type_name in zip(segments[0::2], segments[1::2]):
        if type_name.strip() == "station":
            stations.update(names_raw.split())

    # Stations occupied by a player (via loc or at-start location facts)
    player_occupied: set[str] = set()
    for fact in facts:
        m = _re.match(r'\(loc\s+\S+\s+(\S+)\s*\)', fact.strip())
        if m:
            player_occupied.add(m.group(1))

    already_vacant: set[str] = set()
    for fact in facts:
        m = _re.match(r'\(vacant\s+(\S+)\s*\)', fact.strip())
        if m:
            already_vacant.add(m.group(1))

    to_inject = stations - player_occupied - already_vacant
    if not to_inject:
        return problem_pddl

    new_facts = list(facts) + [f"(vacant {s})" for s in sorted(to_inject)]
    new_init = "(:init " + " ".join(new_facts) + ")"
    return problem_pddl[:init_m.start()] + new_init + problem_pddl[init_m.end():]


def _strip_undeclared_init_facts(domain_pddl: str, problem_pddl: str) -> str:
    """Remove :init facts whose predicate name is not declared in the domain.

    LLMs sometimes embed natural language comments as PDDL facts, e.g.
    ``(robot starts empty-handed)`` or ``(no items placed there)``.
    These cause OPTIC to abort with "Undeclared symbol" errors.
    This function removes any fact whose first token is not a known
    predicate name from the domain's :predicates block.
    """
    # Extract declared predicate names from domain (handle nested parens correctly)
    pred_start = domain_pddl.find("(:predicates")
    if pred_start == -1:
        return problem_pddl
    depth = 0
    pred_end = pred_start
    for idx, ch in enumerate(domain_pddl[pred_start:], pred_start):
        if ch == '(':
            depth += 1
        elif ch == ')':
            depth -= 1
            if depth == 0:
                pred_end = idx
                break
    pred_block = domain_pddl[pred_start:pred_end + 1]
    # Build predicate → arity map from the predicates block
    # Each entry: (predname ?arg1 - type1 ?arg2 - type2 ...) or (predname) for nullary
    pred_arity: dict[str, int] = {}
    for decl in _re.findall(r'\(([^()]+)\)', pred_block):
        tokens = decl.split()
        if not tokens:
            continue
        pred_name = tokens[0]
        # Count args (tokens starting with ?) — type annotations don't count
        arity = sum(1 for t in tokens[1:] if t.startswith('?'))
        pred_arity[pred_name] = arity

    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    # Keep only facts whose predicate name is declared AND arg count matches arity
    clean = []
    for fact in facts:
        stripped = fact.strip().lstrip('(').rstrip(')')
        tokens = stripped.split()
        if not tokens:
            continue
        pred_name = tokens[0]
        n_args = len(tokens) - 1
        # Accept _pending predicates (parameterless/nullary, parameterless mode)
        if pred_name.endswith('_pending'):
            clean.append(fact)
            continue
        if pred_name not in pred_arity:
            continue  # undeclared predicate → strip NL fact
        if n_args != pred_arity[pred_name]:
            continue  # wrong arity → strip NL fact like "(nothing stacked on top...)"
        clean.append(fact)

    if len(clean) == len(facts):
        return problem_pddl
    new_init = "(:init " + " ".join(clean) + ")"
    return problem_pddl[:init_m.start()] + new_init + problem_pddl[init_m.end():]


def _fix_move_effects(domain_pddl: str) -> str:
    """Convert move action from all-at-start effects to at-start(neg) + at-end(pos).

    LLMs often generate:
        :effect (and (at start (not (loc ?p ?from))) (at start (loc ?p ?to))
                     (at start (vacant ?from)) (at start (not (vacant ?to))))

    This is semantically wrong: the robot arrives at the destination AFTER travel.
    All-at-start effects also cause very low compression-safe percentage in OPTIC
    (typically 12-16%), causing search explosion on larger problems.

    Correct temporal semantics:
        :effect (and (at start (not (loc ?p ?from))) (at start (not (vacant ?to)))
                     (at end   (loc ?p ?to))         (at end   (vacant ?from)))
    """
    # Find the move durative-action block
    mv_m = _re.search(
        r'(:durative-action\s+move\b.*?)(?=\s*:durative-action|\s*\)\s*$)',
        domain_pddl, _re.DOTALL | _re.IGNORECASE,
    )
    if not mv_m:
        return domain_pddl
    block = mv_m.group(1)
    # Already using at-end additions? Leave it.
    if _re.search(r'at\s+end\s+\(loc\b', block) or _re.search(r'at\s+end\s+\(vacant\b', block):
        return domain_pddl
    # Find :effect section by locating it after :condition ends
    eff_start = block.find(':effect')
    if eff_start == -1:
        return domain_pddl
    eff_text = block[eff_start:]
    # Convert positive additions from at-start to at-end (leave negations at start)
    def _promote_to_end(m: _re.Match) -> str:
        inner = m.group(1)  # e.g. "(loc ?p ?to)" or "(vacant ?from)"
        if inner.strip().startswith('not'):
            return m.group(0)
        return f'(at end {inner})'
    fixed_eff = _re.sub(r'\(at\s+start\s+(\([^()]+\))\)', _promote_to_end, eff_text)
    if fixed_eff == eff_text:
        return domain_pddl
    fixed_block = block[:eff_start] + fixed_eff
    return domain_pddl[:mv_m.start(1)] + fixed_block + domain_pddl[mv_m.end(1):]


def _fix_nothing_predicate(domain_pddl: str, problem_pddl: str) -> str:
    """Inject missing (nothing robot_N) in :init when robot starts empty-handed.

    The ``pick-up`` action requires ``(nothing ?p)`` (or ``handempty ?p``) but LLMs
    sometimes forget to add it when the player starts with an empty hand.
    Without it, the robot can never pick up any item → Goals unreachable.
    """
    # Detect which hand-empty predicate the domain uses
    hand_pred = None
    if _re.search(r'\(nothing\b', domain_pddl):
        hand_pred = 'nothing'
    elif _re.search(r'\(handempty\b', domain_pddl):
        hand_pred = 'handempty'
    if not hand_pred:
        return problem_pddl

    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    # Already has hand-empty fact?
    if any(_re.match(rf'\({hand_pred}\s+\S+\)', f.strip()) for f in facts):
        return problem_pddl
    # Any holding / has fact means robot is not empty-handed — leave it
    if any(_re.match(r'\((holding|has)\s+\S+\s+\S+\)', f.strip()) for f in facts):
        return problem_pddl

    # Find player name from (:objects ...)
    obj_m = _re.search(r'\(:objects(.*?)\)', problem_pddl, _re.DOTALL)
    if not obj_m:
        return problem_pddl
    players: list[str] = []
    for seg in _re.finditer(r'((?:\w[\w-]*\s+)+)-\s*player', obj_m.group(1)):
        players.extend(seg.group(1).split())
    if not players:
        return problem_pddl

    new_facts = list(facts) + [f'({hand_pred} {p})' for p in players]
    new_init = '(:init ' + ' '.join(new_facts) + ')'
    return problem_pddl[:init_m.start()] + new_init + problem_pddl[init_m.end():]


def _fix_unstack_empty_effect(domain_pddl: str) -> str:
    """Remove incorrect (empty ?s) / (at end (empty ...)) from unstack action effects.

    LLMs consistently add ``(at end (empty ?s))`` to ``unstack``, but this is
    semantically wrong: the bottom item is still on the station after unstacking.
    The bug causes the planner to think a station is free and plan a ``place``
    there, which the game engine then rejects with 'station_empty' not met.
    """
    # Find the unstack durative-action block
    un_m = _re.search(
        r'(:durative-action\s+unstack\b.*?)(?=\s*:durative-action|\s*\)\s*$)',
        domain_pddl, _re.DOTALL | _re.IGNORECASE,
    )
    if not un_m:
        return domain_pddl
    unstack_block = un_m.group(1)
    # Remove any "(at end (empty ...))" or "(empty ...)" inside the :effect of unstack
    fixed = _re.sub(r'\(at\s+end\s+\(empty\s+[^)]+\)\s*\)', '', unstack_block)
    fixed = _re.sub(r'\(empty\s+[^)]+\)', '', fixed)  # bare (empty x) too
    if fixed == unstack_block:
        return domain_pddl
    return domain_pddl[:un_m.start(1)] + fixed + domain_pddl[un_m.end(1):]


def _fix_duration1_to_atstart(domain_pddl: str) -> str:
    """Convert all (at end ...) effects of duration-1 actions to (at start ...).

    Duration-1 actions (move, pick-up, place, stack, unstack) that have mixed
    at-start/at-end effects are almost never compression-safe in OPTIC: their
    at-end ADD effects produce facts that the NEXT action needs at-start, so OPTIC
    can't compress them together and the search space explodes.

    Converting to all-at-start makes these actions semantically instantaneous —
    which is correct for the game engine (linearizer serializes everything anyway).
    Only duration>1 actions (cook, fry, cut) keep the at-start/at-end split.
    """
    import re as _re2
    result = domain_pddl

    # Find all durative-action blocks with their spans
    action_pat = _re2.compile(
        r'(:durative-action\b.*?)(?=\s*:durative-action\b|\s*\)\s*$)',
        _re2.DOTALL | _re2.IGNORECASE,
    )

    # Process actions in reverse order to preserve string offsets
    matches = list(action_pat.finditer(result))
    for m in reversed(matches):
        block = m.group(1)
        # Check duration
        dur_m = _re2.search(r':duration\s*\(=\s*\?duration\s+(\d+)', block)
        if not dur_m or int(dur_m.group(1)) != 1:
            continue
        # Find :effect section
        eff_idx = block.find(':effect')
        if eff_idx == -1:
            continue
        eff_section = block[eff_idx:]
        # Replace (at end ...) with (at start ...) in the effect section
        fixed_eff = _re2.sub(r'\(at\s+end\s+', '(at start ', eff_section)
        if fixed_eff == eff_section:
            continue
        fixed_block = block[:eff_idx] + fixed_eff
        result = result[:m.start(1)] + fixed_block + result[m.end(1):]

    return result


def _fix_cook_fry_effects(domain_pddl: str) -> str:
    """Remove robot-position lock/restore pattern from cook and fry actions.

    LLMs follow the (incorrect) pattern:
      at start: (not (loc ?p ?s)), (not (nothing ?p))
      at end:   (loc ?p ?s), (nothing ?p)
    This makes cook/fry non-compression-safe and causes OPTIC search explosion.
    The correct semantics (matching robotouille_async.pddl): robot leaves immediately
    after initiating cook/fry — only (item-free ?i), (iscooked ?i), (isfried ?i) change.
    """
    result = domain_pddl
    for action_name in ("cook", "fry"):
        pat = _re.compile(
            r'(:durative-action\s+' + action_name + r'\b.*?)(?=\s*:durative-action|\s*\)\s*$)',
            _re.DOTALL | _re.IGNORECASE,
        )
        m = pat.search(result)
        if not m:
            continue
        block = m.group(1)
        # Remove (at start (not (loc ...))) and (at start (not (nothing ...)))
        fixed = _re.sub(r'\(at\s+start\s+\(not\s+\(loc\s+[^)]+\)\s*\)\s*\)', '', block)
        fixed = _re.sub(r'\(at\s+start\s+\(not\s+\(nothing\s+[^)]+\)\s*\)\s*\)', '', fixed)
        # Remove (at end (loc ...)) and (at end (nothing ...)) — bare positive restores
        fixed = _re.sub(r'\(at\s+end\s+\(loc\s+[^)]+\)\s*\)', '', fixed)
        fixed = _re.sub(r'\(at\s+end\s+\(nothing\s+[^)]+\)\s*\)', '', fixed)
        if fixed != block:
            result = result[:m.start(1)] + fixed + result[m.end(1):]
    return result


def _fix_clear_predicate(domain_pddl: str, problem_pddl: str) -> str:
    """Inject (clear item) for items on stations that are missing the clear fact.

    LLMs occasionally omit (clear ?i) for items that are directly on a station
    (not stacked on another item).  Without this, pick-up/cook/cut/fry all have
    unreachable at-start conditions, causing OPTIC to declare the problem unsolvable.
    """
    if "(clear " not in domain_pddl:
        return problem_pddl
    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    # Items that already have (clear item) in init
    items_with_clear: set[str] = set()
    for fact in facts:
        m = _re.match(r'\(clear\s+(\S+)\s*\)', fact.strip())
        if m:
            items_with_clear.add(m.group(1))

    # Items that are on a station at ground level (have 'on' fact, not 'atop')
    items_on_station: set[str] = set()
    for fact in facts:
        m = _re.match(r'\(on\s+(\S+)\s+\S+\)', fact.strip())
        if not m:
            m = _re.match(r'\(on-surface\s+(\S+)\s+\S+\)', fact.strip())
        if m:
            items_on_station.add(m.group(1))

    # Items that have something on top of them (via atop) are NOT clear.
    items_covered: set[str] = set()
    for fact in facts:
        m = _re.match(r'\(atop\s+\S+\s+(\S+)\s*\)', fact.strip())
        if m:
            items_covered.add(m.group(1))

    # Only inject (clear) for items that are on a station, not already clear,
    # and not covered by another item via atop.
    to_inject = items_on_station - items_with_clear - items_covered
    if not to_inject:
        return problem_pddl

    new_facts = list(facts) + [f"(clear {item})" for item in sorted(to_inject)]
    new_init = "(:init " + " ".join(new_facts) + ")"
    return problem_pddl[:init_m.start()] + new_init + problem_pddl[init_m.end():]


def _fix_holding_contradiction(domain_pddl: str, problem_pddl: str) -> str:
    """Remove (nothing robot) and (item-free item) that contradict (has robot item) in :init.

    When the robot starts holding an item, (has robot item) is in :init but LLMs
    sometimes also add (nothing robot) and (item-free item), creating a contradiction.
    OPTIC ignores it and plans incorrectly; the game engine correctly treats (has ...) as
    the robot holding the item so (nothing) is false at step 0.
    """
    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    # Find which robots are holding something
    holding_robots: set[str] = set()
    held_items: set[str] = set()
    for fact in facts:
        m = _re.match(r'\((?:has|holding)\s+(\S+)\s+(\S+)\)', fact.strip())
        if m:
            holding_robots.add(m.group(1))
            held_items.add(m.group(2))

    if not holding_robots:
        return problem_pddl

    clean = []
    for fact in facts:
        stripped = fact.strip()
        # Remove (nothing robot) for robots that are holding something
        m_nothing = _re.match(r'\(nothing\s+(\S+)\)', stripped)
        if m_nothing and m_nothing.group(1) in holding_robots:
            continue
        # Remove (item-free item) for items being held
        m_free = _re.match(r'\(item-free\s+(\S+)\)', stripped)
        if m_free and m_free.group(1) in held_items:
            continue
        clean.append(fact)

    if len(clean) == len(facts):
        return problem_pddl
    new_init = "(:init " + " ".join(clean) + ")"
    return problem_pddl[:init_m.start()] + new_init + problem_pddl[init_m.end():]


def _fix_robot_held_items(
    domain_pddl: str,
    problem_pddl: str,
    original_json: dict | None = None,
) -> str:
    """Fix :init when items are co-located with the robot in original_json.

    The game engine treats items at the same (x,y) as a player as being held
    (predicate ``has_item``), so ``(nothing robot)`` is false at step 0.
    The LLM typically places such items on a station in the PDDL init, making
    the plan fail at step 1 because the robot is already holding the item.

    This fixer:
    1. Finds items whose (x,y) matches the robot's (x,y) in original_json.
    2. For each such item, removes the ``(on/at item station)`` fact and adds
       ``(has robot item)`` (removing the conflicting ``(nothing robot)``).
    3. Uses the type-based PDDL naming convention: item type_N, player type_1.
    """
    if not original_json:
        return problem_pddl

    players = original_json.get("players", [])
    items = original_json.get("items", [])
    if not players or not items:
        return problem_pddl

    # Find items co-located with any player
    from collections import defaultdict as _dd
    held: list[tuple[str, str]] = []  # (player_pddl_name, item_pddl_name)

    # Build PDDL names using the same convention as _annotate_robotouille_json
    type_count: dict[str, int] = _dd(int)
    sorted_stations = sorted(original_json.get("stations", []), key=lambda s: (s["x"], s["y"]))
    for s in sorted_stations:
        type_count[s["name"]] += 1

    type_count2: dict[str, int] = _dd(int)
    item_pddl: dict[int, str] = {}  # index → pddl_name
    sorted_items = sorted(items, key=lambda i: (i["x"], i["y"], i.get("stack-level", 0)))
    for idx, it in enumerate(sorted_items):
        type_count2[it["name"]] += 1
        item_pddl[idx] = f"{it['name']}_{type_count2[it['name']]}".lower()

    type_count3: dict[str, int] = _dd(int)
    player_pddl: dict[int, str] = {}
    for idx, pl in enumerate(players):
        type_count3[pl["name"]] += 1
        player_pddl[idx] = f"{pl['name']}_{type_count3[pl['name']]}".lower()

    for pidx, pl in enumerate(players):
        for iidx, it in enumerate(sorted_items):
            if pl["x"] == it["x"] and pl["y"] == it["y"]:
                held.append((player_pddl[pidx], item_pddl[iidx]))
                break  # each player holds at most one item

    if not held:
        return problem_pddl

    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    # Determine which hand/holding predicate this domain uses
    has_pred = "has" if _re.search(r'\(has\b', domain_pddl) else None
    if not has_pred:
        return problem_pddl  # domain doesn't use (has ...) — skip

    # Only fix pairs where (has player item) is not already in the PDDL.
    # If (has) already exists but (nothing) also exists, that's a different contradiction
    # handled elsewhere — removing (nothing) alone breaks TFD parsing.
    already_has: set[str] = set()
    for fact in facts:
        m = _re.match(r'\((?:has|holding)\s+(\S+)\s+(\S+)\)', fact.strip())
        if m:
            already_has.add(f"{m.group(1)}_{m.group(2)}")

    held = [(player, item) for player, item in held if f"{player}_{item}" not in already_has]
    if not held:
        return problem_pddl

    new_facts = []
    held_items = {item for _, item in held}
    holding_players = {player for player, _ in held}
    added_has: set[str] = set()
    freed_stations: set[str] = set()  # stations that become empty after removing held items

    for fact in facts:
        stripped = fact.strip()
        # Remove (nothing player) for players that should be holding something
        m = _re.match(r'\(nothing\s+(\S+)\)', stripped)
        if m and m.group(1) in holding_players:
            continue
        # Remove (item-free item) for held items
        m = _re.match(r'\(item-free\s+(\S+)\)', stripped)
        if m and m.group(1) in held_items:
            continue
        # Remove (on/at item station) for held items — they're in the robot's hand
        toks = _re.findall(r'\b(\S+)\b', stripped.strip('()'))
        if len(toks) >= 3 and toks[0].lower() in ('on', 'at', 'on-surface') and toks[1] in held_items:
            freed_stations.add(toks[2])  # this station is now empty
            continue
        new_facts.append(fact)

    # Add (has player item) for each newly-held pair
    for player, item in held:
        key = f"{player}_{item}"
        if key not in added_has:
            new_facts.append(f"({has_pred} {player} {item})")
            added_has.add(key)

    # Add (empty station) for stations freed by removing held items
    # (only if no other item remains on the station)
    items_on_station: set[str] = set()
    for fact in new_facts:
        toks = _re.findall(r'\b(\S+)\b', fact.strip('()'))
        if len(toks) >= 3 and toks[0].lower() in ('on', 'at', 'on-surface'):
            items_on_station.add(toks[2])
    if "empty " in domain_pddl:
        for st in freed_stations:
            if st not in items_on_station:
                # Only add if (empty st) not already present
                already_empty = any(_re.match(rf'\(empty\s+{_re.escape(st)}\)', f.strip()) for f in new_facts)
                if not already_empty:
                    new_facts.append(f"(empty {st})")

    if new_facts == facts:
        return problem_pddl

    new_init = "(:init " + " ".join(new_facts) + ")"
    return problem_pddl[:init_m.start()] + new_init + problem_pddl[init_m.end():]


def _fix_empty_contradiction(domain_pddl: str, problem_pddl: str) -> str:
    """Remove (empty station) facts that contradict (at item station) in :init."""
    if "(empty " not in domain_pddl:
        return problem_pddl
    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)
    occupied: set[str] = set()
    for fact in facts:
        stripped = fact.strip()
        if not any(stripped.startswith(p) for p in ("(at ", "(on ", "(on-surface ")):
            continue
        toks = _re.findall(r'\b([a-z][a-z_]*_\d+)\b', stripped)
        if len(toks) >= 2:
            occupied.add(toks[-1])
    clean = [f for f in facts if not _re.match(r'\(empty\s+(\S+?)\)', f.strip())
             or _re.match(r'\(empty\s+(\S+?)\)', f.strip()).group(1) not in occupied]
    if len(clean) == len(facts):
        return problem_pddl
    new_init = "(:init " + " ".join(clean) + ")"
    return problem_pddl[:init_m.start()] + new_init + problem_pddl[init_m.end():]


def _fix_item_locations(
    domain_pddl: str,
    problem_pddl: str,
    original_json: dict | None = None,
) -> str:
    """Inject (at/on item station) for items that have no initial location.

    Uses ``original_json`` to determine each item's correct starting station.
    Items whose station cannot be resolved are left for the LLM retry.
    """
    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    obj_m = _re.search(r'\(:objects(.*?)\)', problem_pddl, _re.DOTALL)
    if not obj_m:
        return problem_pddl
    obj_text = obj_m.group(1)
    _type_names = set(_re.findall(r'-\s*(\w[\w-]*)', obj_text))
    pddl_items: list[str] = []
    for seg in _re.finditer(r'((?:\w[\w-]*\s+)+)-\s*item', obj_text):
        pddl_items.extend(n for n in seg.group(1).split() if n not in _type_names)
    if not pddl_items:
        return problem_pddl

    from collections import defaultdict as _dd
    pddl_stations_by_type: dict[str, list[str]] = _dd(list)
    for seg in _re.finditer(r'((?:\w[\w-]*\s+)+)-\s*station', obj_text):
        for st in seg.group(1).split():
            if st not in _type_names:
                st_type = _re.sub(r"_\d+$", "", st).lower()
                pddl_stations_by_type[st_type].append(st)

    items_with_loc: set[str] = set()
    for fact in facts:
        m = _re.match(r'\((at|on-surface|on)\s+(\S+)\s+\S+\)', fact.strip())
        if m:
            items_with_loc.add(m.group(2))
        m = _re.match(r'\((holding|has)\s+\S+\s+(\S+)\)', fact.strip())
        if m:
            items_with_loc.add(m.group(2))

    missing_loc = [item for item in pddl_items if item not in items_with_loc]
    if not missing_loc or original_json is None:
        return problem_pddl

    game_items_by_type: dict[str, list[tuple[int, int]]] = _dd(list)
    for item in sorted(
        original_json.get("items", []),
        key=lambda i: (i["x"], i["y"], i.get("stack-level", 0)),
    ):
        game_items_by_type[item["name"].lower()].append((item["x"], item["y"]))

    xy_to_game_station: dict[tuple[int, int], str] = {}
    _type_cnt: dict[str, int] = _dd(int)
    for s in sorted(original_json.get("stations", []), key=lambda s: (s["x"], s["y"])):
        _type_cnt[s["name"].lower()] += 1
        xy_to_game_station[(s["x"], s["y"])] = f"{s['name'].lower()}{_type_cnt[s['name'].lower()]}"

    pddl_item_set = set(pddl_items)
    game_to_pddl: dict[str, str] = {}
    for fact in facts:
        m = _re.match(r'\(at\s+(\S+)\s+(\S+)\)', fact.strip())
        if not m:
            continue
        pddl_item, pddl_station = m.group(1), m.group(2)
        if pddl_item not in pddl_item_set:
            continue
        item_base = _re.sub(r"_\d+$", "", pddl_item).lower()
        num_m = _re.search(r"(\d+)$", pddl_item)
        if not num_m:
            continue
        idx = int(num_m.group()) - 1
        positions = game_items_by_type.get(item_base, [])
        if idx >= len(positions):
            continue
        xy = positions[idx]
        game_st = xy_to_game_station.get(xy)
        if game_st and game_st not in game_to_pddl:
            game_to_pddl[game_st] = pddl_station

    new_facts_to_add: list[str] = []
    for pddl_item in missing_loc:
        item_base = _re.sub(r"_\d+$", "", pddl_item).lower()
        num_m = _re.search(r"(\d+)$", pddl_item)
        if not num_m:
            continue
        idx = int(num_m.group()) - 1
        positions = game_items_by_type.get(item_base, [])
        if idx >= len(positions):
            continue
        xy = positions[idx]
        game_st = xy_to_game_station.get(xy)
        if not game_st:
            continue
        pddl_station = game_to_pddl.get(game_st)
        if not pddl_station:
            game_st_type = _re.sub(r"\d+$", "", game_st)
            candidates = pddl_stations_by_type.get(game_st_type, [])
            if not candidates:
                continue
            pddl_station = candidates[0]

        esc = _re.escape(pddl_item)
        if not any(_re.match(rf'\(at\s+{esc}\s+', f.strip()) for f in facts):
            new_facts_to_add.append(f"(at {pddl_item} {pddl_station})")
        uses_on_surface = "(on-surface " in domain_pddl
        on_pred = "on-surface" if uses_on_surface else "on"
        if not any(_re.match(rf'\(({on_pred}|on)\s+{esc}\s+', f.strip()) for f in facts):
            new_facts_to_add.append(f"({on_pred} {pddl_item} {pddl_station})")
        if not any(_re.match(rf'\(clear\s+{esc}\s*\)', f.strip()) for f in facts):
            new_facts_to_add.append(f"(clear {pddl_item})")
        if "(item-free " in domain_pddl:
            if not any(_re.match(rf'\(item-free\s+{esc}\s*\)', f.strip()) for f in facts):
                new_facts_to_add.append(f"(item-free {pddl_item})")

    if not new_facts_to_add:
        return problem_pddl

    new_init = "(:init " + " ".join(list(facts) + new_facts_to_add) + ")"
    return problem_pddl[:init_m.start()] + new_init + problem_pddl[init_m.end():]


def _apply_pddl_repairs(
    domain_pddl: str,
    problem_pddl: str,
    *,
    original_json: dict | None = None,
    enabled: bool,
) -> tuple[str, str]:
    """Apply Robotouille-specific PDDL repairs when enabled.

    These repairs are useful for a stronger PDDL+repair ablation, but should be
    disabled for raw formalizer comparisons against Planner and CP-SAT.
    """
    if not enabled:
        return domain_pddl, problem_pddl

    domain_pddl, problem_pddl = _normalize_predicate_names(domain_pddl, problem_pddl)
    domain_pddl = _fix_move_effects(domain_pddl)
    domain_pddl = _fix_unstack_empty_effect(domain_pddl)
    domain_pddl = _fix_cook_fry_effects(domain_pddl)
    problem_pddl = _strip_undeclared_init_facts(domain_pddl, problem_pddl)
    problem_pddl = _fix_nothing_contradiction(problem_pddl)
    problem_pddl = _fix_missing_capability_predicates(problem_pddl)
    problem_pddl = _fix_stacked_clear_contradiction(problem_pddl)
    problem_pddl = _fix_nothing_predicate(domain_pddl, problem_pddl)
    problem_pddl = _fix_item_locations(domain_pddl, problem_pddl, original_json=original_json)
    problem_pddl = _fix_empty_contradiction(domain_pddl, problem_pddl)
    problem_pddl = _fix_container_empty_conflict(problem_pddl)
    problem_pddl = _fix_empty_predicate(domain_pddl, problem_pddl)
    problem_pddl = _fix_vacant_predicate(domain_pddl, problem_pddl)
    problem_pddl = _fix_clear_predicate(domain_pddl, problem_pddl)
    return domain_pddl, problem_pddl


def _diagnose_unreachable(domain_pddl: str, problem_pddl: str) -> str:
    """Return a targeted hint for why OPTIC says 'Goals unreachable'.

    Checks for the most common LLM omissions and returns a human-readable
    message to feed back to the LLM as a retry prompt.
    """
    issues: list[str] = []
    pat_obj = r'\b([a-z][a-z_]*_\d+)\b'

    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    init_text = init_m.group(1) if init_m else ""
    facts = _re.findall(r'\([^()]+\)', init_text)

    obj_m = _re.search(r'\(:objects(.*?)\)', problem_pddl, _re.DOTALL)
    items: set[str] = set()
    stations: set[str] = set()
    players: list[str] = []
    if obj_m:
        segs = _re.split(r'\s*-\s*(\w+)', obj_m.group(1))
        for names_raw, tname in zip(segs[0::2], segs[1::2]):
            t = tname.strip()
            names = names_raw.split()
            if t == "item":
                items.update(names)
            elif t == "station":
                stations.update(names)
            elif t == "player":
                players.extend(names)

    # Check for items missing location
    items_with_loc: set[str] = set()
    for fact in facts:
        toks = _re.findall(pat_obj, fact)
        stripped = fact.strip()
        if len(toks) >= 2 and (stripped.startswith("(at ") or "on-surface" in stripped or stripped.startswith("(on ")):
            if toks[0] in items:
                items_with_loc.add(toks[0])
    missing_loc = items - items_with_loc
    if missing_loc:
        issues.append(
            f"Items missing initial location (no (at item station) in :init): "
            f"{sorted(missing_loc)}.  Every item must have an (at item_N station_N) "
            f"and (on item_N station_N) fact."
        )

    # Check for holding/has contradiction (robot holds item but no nothing/handempty)
    holding_facts = [f for f in facts if _re.match(r'\((holding|has)\s+\S+\s+\S+\)', f.strip())]
    hand_empty_preds = ["nothing", "handempty"]
    has_handempty_f = any(
        any(_re.match(rf'\({p}\s+\S+\)', f.strip()) for p in hand_empty_preds)
        for f in facts
    )
    if holding_facts and not has_handempty_f:
        held = [_re.match(r'\((holding|has)\s+\S+\s+(\S+)\)', f.strip()).group(2)
                for f in holding_facts]
        issues.append(
            f"Robot is initialised as (has/holding player item) but has no (nothing/handempty player) — "
            f"this makes it impossible to pick up other items.  Remove the holding fact and "
            f"instead place the item at the robot's starting station: {held}."
        )

    # Check for missing nothing/handempty
    has_nothing_pred = any(p in domain_pddl for p in ["(nothing ", "(handempty "])
    if has_nothing_pred:
        has_handempty = any(
            any(_re.match(rf'\({p}\s+\S+\)', f.strip()) for p in hand_empty_preds)
            for f in facts
        )
        if not has_handempty and not holding_facts:
            issues.append(
                f"Robot has no (nothing robot_N) or (handempty robot_N) in :init — "
                f"the robot cannot pick up any item until this is set."
            )

    # Check for stations missing empty
    if "(empty " in domain_pddl:
        occupied: set[str] = set()
        for fact in facts:
            toks = _re.findall(pat_obj, fact)
            stripped = fact.strip()
            if len(toks) >= 2 and (stripped.startswith("(at ") or "on-surface" in stripped or stripped.startswith("(on ")):
                occupied.add(toks[-1])
        already_empty = {
            _re.match(r'\(empty\s+(\S+)\s*\)', f.strip()).group(1)
            for f in facts if _re.match(r'\(empty\s+(\S+)\s*\)', f.strip())
        }
        missing_empty = (stations - occupied) - already_empty
        if missing_empty:
            issues.append(
                f"Stations with no items are missing (empty station_N) in :init: "
                f"{sorted(missing_empty)}.  The place action requires (empty ?s)."
            )

    # Check for stations missing vacant
    if "(vacant " in domain_pddl:
        player_occupied: set[str] = set()
        for fact in facts:
            m = _re.match(r'\(loc\s+\S+\s+(\S+)\s*\)', fact.strip())
            if m:
                player_occupied.add(m.group(1))
        already_vacant = {
            _re.match(r'\(vacant\s+(\S+)\s*\)', f.strip()).group(1)
            for f in facts if _re.match(r'\(vacant\s+(\S+)\s*\)', f.strip())
        }
        missing_vacant = (stations - player_occupied) - already_vacant
        if missing_vacant:
            issues.append(
                f"Stations with no player are missing (vacant station_N) in :init: "
                f"{sorted(missing_vacant)}.  The move action requires (vacant ?to)."
            )

    if issues:
        return (
            "The PDDL planner reports 'Goals unreachable from the initial state'. "
            "The following issues were detected in your :init section:\n"
            + "\n".join(f"  - {issue}" for issue in issues)
            + "\nPlease fix these and regenerate the domain and problem PDDL."
        )
    return (
        "The PDDL planner reports 'Goals unreachable from the initial state'. "
        "Check that all items have initial locations, the robot starts with "
        "(nothing robot_N), stations that should be empty have (empty station_N), "
        "and reachable stations have (vacant station_N) in :init."
    )


# ── Data loading ─────────────────────────────────────────────────────────


def _load_records(data_path: Path) -> list[dict]:
    if not data_path.exists():
        raise FileNotFoundError(f"Data file not found: {data_path}")
    records = json.loads(data_path.read_text(encoding="utf-8"))
    if not isinstance(records, list):
        raise ValueError(f"Expected JSON array, got {type(records).__name__}")
    return records


def _expand_with_seeds(
    records: list[dict],
    seeds: list[int],
    *,
    include_coordinates: bool = True,
) -> list[dict]:
    """Expand records by applying each seed, rebuilding natural_language."""
    if not seeds:
        return records
    try:
        from environments.env_generator.procedural_generator import randomize_environment
    except ImportError as e:
        raise ImportError(f"Cannot import randomize_environment: {e}")
    from src.gen_data.robotouille.data_transform_regex import convert_task
    import copy

    expanded: list[dict] = []
    for rec in records:
        for seed in seeds:
            new_rec = copy.deepcopy(rec)
            new_rec["original_json"] = randomize_environment(
                copy.deepcopy(rec["original_json"]), seed, noisy_randomization=False
            )
            new_rec["seed"] = seed
            new_rec["id"] = f"{rec['id']}_seed{seed}"
            new_rec["natural_language"] = convert_task(
                new_rec["original_json"], include_coordinates=include_coordinates
            )
            expanded.append(new_rec)
    return expanded


def _format_nl(nl_dict: dict) -> str:
    """Build NL string from a record's 'nl' field."""
    if "prompt" in nl_dict:
        return nl_dict["prompt"]
    lines: list[str] = []
    lines.append("## Task\n")
    lines.append(nl_dict.get("task", ""))
    lines.append("\n## Environment\n")
    lines.append(nl_dict.get("environment", ""))
    lines.append("\n## Goal Predicates\n")
    for g in nl_dict.get("goal_predicates", []):
        args_str = ", ".join(g["args"])
        lines.append(f"  - {g['predicate']}({args_str})")
    return "\n".join(lines)


# ── Core experiment logic ───────────────────────────────────────────────


def run_task(llm_client: BaseLLM, records: list[dict], args: argparse.Namespace):
    if args.effect_goal:
        domain_pddl = Path(_DOMAIN_PDDL_NOTYPING_PATH).read_text(encoding="utf-8")
    else:
        domain_pddl = Path(_DOMAIN_PDDL_PATH).read_text(encoding="utf-8")

    n = len(records) if args.max_examples < 0 else min(len(records), args.max_examples)
    records = records[:n]

    gold_data: list[dict] = []

    for rec in records:
        orig = rec.get("original_json")
        # annotated_json = original_json with pddl_name/station/atop/held_by/facing_station
        # fields pre-computed by _annotate_robotouille_json (same as what JSON-mode sends to LLM)
        gold_data.append({
            "id": rec.get("id", "?"),
            "original_json": orig,
            "annotated_json": _annotate_robotouille_json(orig) if orig else None,
            "natural_language": rec.get("natural_language"),
        })

    # Per-example mutable state
    # For generate_domain mode the LLM generates the domain; initialize to None and fill after parsing.
    # For problem-only mode the domain is fixed for all examples.
    domains: list[str | None] = [None if args.generate_domain else domain_pddl] * n
    problems: list[str | None] = [None] * n
    solver_results: list[SolverResult | None] = [None] * n
    raw_responses: list[str | None] = [None] * n
    errors: list[str] = ["not_started"] * n
    error_types: list[str] = ["not_started"] * n

    if args.generate_domain:
        # PDDL 2.1 temporal path: LLM generates domain+problem with durative actions → OPTIC
        histories: list[list[dict]] = [
            build_robotouille_temporal_messages(
                rec.get("original_json", {}), domain_pddl,
                effect_goal=args.effect_goal,
                input_mode=args.input_mode,
                natural_language=rec.get("natural_language", ""),
            )
            for rec in records
        ]
        schema = PDDLResponse
    else:
        # problem-only mode: pass original_json directly (no NL conversion)
        histories: list[list[dict]] = [
            build_robotouille_problem_messages(
                rec.get("original_json", {}), domain_pddl,
                effect_goal=args.effect_goal, num_shots=args.num_shots,
            )
            for rec in records
        ]
        schema = RobotouillePDDL
        

    _base_len: int = len(histories[0]) if histories else 0

    def _attempt(indices: list[int], desc: str) -> None:
        if args.history_mode == "single-turn":
            for i in indices:
                h = histories[i]
                if len(h) > _base_len + 2:
                    histories[i] = h[:_base_len] + h[-2:]

        msgs = [histories[i] for i in indices]
        responses = llm_client.batch_chat(msgs, schema=schema, desc=desc)

        for i, resp in zip(indices, responses):
            raw_responses[i] = resp
            if resp:
                histories[i].append({"role": "assistant", "content": resp})

        solvable: list[tuple[int, str]] = []

        if args.generate_domain:
            for i, resp in zip(indices, responses):
                pair = parse_pddl_response(resp or "")
                if pair is None:
                    errors[i] = "PDDL parse failed"
                    error_types[i] = "syntax_error"
                    histories[i].append({
                        "role": "user",
                        "content": SYNTAX_RETRY_TEMPLATE.format(
                            error="Your response could not be parsed as valid PDDL JSON. "
                                  "Please output only the JSON object matching the schema."
                        ),
                    })
                else:
                    d, p, _sa = pair
                    d, p = _apply_pddl_repairs(
                        d,
                        p,
                        original_json=gold_data[i].get("original_json"),
                        enabled=args.pddl_repairs,
                    )
                    domains[i] = d
                    problems[i] = p
                    solvable.append((i, p))
        else:
            for i, resp in zip(indices, responses):
                problem_pddl = parse_robotouille_problem_response(resp or "")
                if not problem_pddl:
                    errors[i] = "PDDL parse failed"
                    error_types[i] = "syntax_error"
                    histories[i].append({
                        "role": "user",
                        "content": SYNTAX_RETRY_TEMPLATE.format(
                            error="Your response could not be parsed as valid PDDL JSON. "
                                  "Please output only the JSON object matching the schema: "
                                  '{"problem_pddl": "<full problem PDDL string>"}'
                        ),
                    })
                else:
                    problem_pddl = normalize_robotouille_problem_to_domain(problem_pddl)
                    problems[i] = problem_pddl
                    solvable.append((i, problem_pddl))

        if solvable:
            solve_outputs = batch_solve(
                [(domains[i], p) for i, p in solvable],
                num_workers=args.batch,
                max_retries=_TRANSIENT_SOLVER_RETRIES,
                timeout=SOLVER_TIMEOUT,
                desc="Solving PDDL",
                solver=args.solver,
                fallback_solvers=_LAMA_FALLBACKS if args.solver != "optic" else None,
            )
            needs_refix: list[tuple[int, str, str]] = []
            for (i, _p), sr in zip(solvable, solve_outputs):
                solver_results[i] = sr
                if sr.error:
                    errors[i] = sr.error
                    _e = sr.error.lower()
                    _is_timeout = (
                        "timeout" in _e or "timed out" in _e or "empty solver" in _e
                        # OPTIC search-progress output truncated = timeout (no "Solution Found")
                        # "b (" appears in beam-search progress lines; if present without a solution
                        # the planner timed out mid-search. Takes priority over "unreachable" which
                        # also appears in "Post filtering unreachable actions" during normal search.
                        or ("solution found" not in _e and "b (" in sr.error)
                    )
                    if _is_timeout:
                        error_types[i] = "solver_error"
                    elif "unreachable" in _e or "unsolvable" in _e:
                        error_types[i] = "planning_failure"
                    else:
                        error_types[i] = "syntax_error"
                    if "unreachable" in sr.error.lower() and args.generate_domain:
                        d = domains[i] or ""
                        p_fixed = problems[i] or ""
                        d, p_fixed = _apply_pddl_repairs(
                            d,
                            p_fixed,
                            original_json=gold_data[i].get("original_json"),
                            enabled=args.pddl_repairs,
                        )
                        if p_fixed != problems[i]:
                            needs_refix.append((i, d, p_fixed))
                        else:
                            hint = _diagnose_unreachable(d, p_fixed)
                            histories[i].append({"role": "user", "content": hint})
                    else:
                        histories[i].append({
                            "role": "user",
                            "content": SYNTAX_RETRY_TEMPLATE.format(
                                error=_truncate_solver_error(sr.error)
                            ),
                        })
                else:
                    errors[i] = ""
                    error_types[i] = ""

            if needs_refix:
                refix_outputs = batch_solve(
                    [(d, p) for _, d, p in needs_refix],
                    num_workers=args.batch,
                    max_retries=_TRANSIENT_SOLVER_RETRIES,
                    timeout=SOLVER_TIMEOUT,
                    desc="Re-solving fixed PDDL",
                    solver=args.solver,
                    fallback_solvers=_LAMA_FALLBACKS if args.solver != "optic" else None,
                )
                for (i, d, p_fixed), sr2 in zip(needs_refix, refix_outputs):
                    if not sr2.error:
                        solver_results[i] = sr2
                        problems[i] = p_fixed
                        errors[i] = ""
                        error_types[i] = ""
                    else:
                        hint = _diagnose_unreachable(d, p_fixed)
                        histories[i].append({"role": "user", "content": hint})

        # ── TFD fallback for OPTIC planning failures AND solver errors ────────
        # OPTIC times out on complex temporal problems (low compression-safe %).
        # TFD (Temporal Fast Downward) uses different search algorithms and
        # can solve many cases that OPTIC cannot within the time limit.
        # Also covers solver_error (OPTIC timeout / empty output) since TFD
        # uses a different search strategy that may succeed where OPTIC ran out of time.
        if args.solver == "optic" and args.generate_domain:
            tfd_candidates = [
                i for i in range(n)
                if error_types[i] in ("planning_failure", "solver_error")
                and domains[i] and problems[i]
            ]
            if tfd_candidates:
                # Apply clear fix before submitting to TFD
                tfd_pairs: list[tuple[str, str]] = []
                for i in tfd_candidates:
                    p_tfd = (
                        _fix_clear_predicate(domains[i], problems[i])
                        if args.pddl_repairs
                        else problems[i]
                    )
                    tfd_pairs.append((domains[i], p_tfd))
                tfd_outputs = batch_solve(
                    tfd_pairs,
                    num_workers=args.batch,
                    max_retries=_TRANSIENT_SOLVER_RETRIES,
                    timeout=SOLVER_TIMEOUT,
                    desc="TFD fallback for planning failures",
                    solver="tfd",
                )
                for idx, (i, sr_tfd) in enumerate(zip(tfd_candidates, tfd_outputs)):
                    if not sr_tfd.error:
                        solver_results[i] = sr_tfd
                        problems[i] = tfd_pairs[idx][1]
                        errors[i] = ""
                        error_types[i] = ""


    # ── formalizer+ pre-pass: get planning analysis, then ask for PDDL ─
    if args.generate_domain and args.effect_goal:
        print("Running planning analysis pre-pass (formalizer+ mode)...")
        analysis_responses = llm_client.batch_chat(
            [histories[i] for i in range(n)], schema=None,
            desc="Planning analysis"
        )
        for i, resp in enumerate(analysis_responses):
            if resp:
                histories[i].append({"role": "assistant", "content": resp})
                histories[i].append({
                    "role": "user",
                    "content": (
                        "Good. Now based on your analysis, generate the PDDL 2.1 temporal "
                        "(durative actions) domain and problem PDDL.\n"
                        'Return JSON: {"domain_pddl": "...", "problem_pddl": "..."}'
                    ),
                })

    # ── Initial pass ────────────────────────────────────────────────
    _attempt(list(range(n)), desc="LLM translation (NL→PDDL)")

    # ── Retry loop ──────────────────────────────────────────────────
    # Only retry syntax_error (LLM output unparseable) — planning_failure and
    # solver_error are handled by the TFD fallback below, not by re-asking the LLM.
    for retry in range(args.llm_retries):
        n_syntax = sum(1 for t in error_types if t == "syntax_error")
        n_pf = sum(1 for t in error_types if t == "planning_failure")
        failed = [i for i in range(n) if error_types[i] == "syntax_error"]
        if not failed:
            break
        print(f"\nRetry {retry + 1}/{args.llm_retries}: {len(failed)} syntax errors (planning_failures={n_pf} handled by TFD)")
        _attempt(failed, desc=f"LLM retry {retry + 1}")

    # ── Assemble records & save ─────────────────────────────────────
    from src.method.linearize_optic_plan import linearize_optic_plan
    from concurrent.futures import ThreadPoolExecutor, as_completed

    save_path = Path(args.save_path)
    pddl_dir = save_path / "pddl"
    pddl_dir.mkdir(parents=True, exist_ok=True)
    jsonl_path = save_path / "full_results.jsonl"

    def _eval_one(i: int, gold: dict):
        sr = solver_results[i]
        plan = [(s, a, d) for s, a, d in sr.plan] if sr and not sr.error else None
        if plan and args.solver == "optic" and args.generate_domain:
            plan = linearize_optic_plan(plan, gold.get("original_json") or {})
        ev = evaluate_record(
            problem_pddl=problems[i],
            plan=plan,
            original_json=gold.get("original_json"),
            error=errors[i] if errors[i] else None,
            domain_pddl=domains[i],
            record_id=gold["id"],
        )
        rec = {
            "id": gold["id"],
            "original_json": gold.get("original_json"),
            "annotated_json": gold.get("annotated_json"),
            "natural_language": gold.get("natural_language"),
            "error_type": error_types[i],
            "error": errors[i] if errors[i] else None,
            "plan": plan,
            "plan_length": len(plan) if plan else None,
            "solved": plan is not None,
            "eval": ev,
            "domain_pddl": domains[i] if args.generate_domain else None,
            "problem_pddl": problems[i],
            "llm_response": raw_responses[i],
            "raw_solver_output": sr.raw_output if sr else None,
        }
        return i, ev, rec

    result_records: list[dict | None] = [None] * n
    eval_results: list[dict | None] = [None] * n

    num_eval_workers = min(args.num_workers, n)
    with ThreadPoolExecutor(max_workers=num_eval_workers) as pool:
        futures = {pool.submit(_eval_one, i, gold): i for i, gold in enumerate(gold_data)}
        with tqdm(total=n, desc="Evaluating", unit="rec") as pbar:
            for fut in as_completed(futures):
                i, ev, rec = fut.result()
                result_records[i] = rec
                eval_results[i] = ev
                pbar.update(1)

    with jsonl_path.open("w", encoding="utf-8") as jsonl_f:
        for i, rec in tqdm(enumerate(result_records), total=n, desc="Saving results", unit="rec"):
            _save_example(pddl_dir, i, rec)
            # raw_solver_output is saved separately in _save_example to keep jsonl compact
            rec_slim = {k: v for k, v in rec.items() if k != "raw_solver_output"}
            jsonl_f.write(json.dumps(rec_slim, indent=2, ensure_ascii=False) + "\n")

    # ── Summary ─────────────────────────────────────────────────────
    _save_summary(result_records, eval_results, args)
    return result_records


def _save_example(pddl_dir: Path, idx: int, rec: dict) -> None:
    example_dir = pddl_dir / f"example_{idx:04d}"
    example_dir.mkdir(exist_ok=True)
    if rec.get("domain_pddl"):
        (example_dir / "domain.pddl").write_text(rec["domain_pddl"])
    if rec.get("problem_pddl"):
        (example_dir / "problem.pddl").write_text(rec["problem_pddl"])
    if rec.get("plan"):
        with (example_dir / "plan.txt").open("w") as f:
            for start, action, dur in rec["plan"]:
                f.write(f"{start:.3f}: ({action}) [{dur:.3f}]\n")
    if rec.get("chat_history"):
        with (example_dir / "chat_history.json").open("w", encoding="utf-8") as f:
            json.dump(rec["chat_history"], f, indent=2, ensure_ascii=False)
    if rec.get("raw_solver_output"):
        (example_dir / "solver_output.txt").write_text(rec["raw_solver_output"])


def _save_summary(
    records: list[dict],
    eval_results: list[dict],
    args: argparse.Namespace,
) -> None:
    save_path = Path(args.save_path)
    n = len(records)

    n_syntax = sum(1 for r in records if r.get("error_type") == "syntax_error")
    n_planning_failure = sum(1 for r in records if r.get("error_type") == "planning_failure")
    n_solver_error = sum(1 for r in records if r.get("error_type") == "solver_error")

    eval_summary = summarize_eval(eval_results)

    metrics = {
        "benchmark": "robotouille",
        "model_name": args.model_name,
        "generate_domain": args.generate_domain,
        "effect_goal": args.effect_goal,
        "pddl_repairs": args.pddl_repairs,
        "num_examples": n,
        "num_syntax_errors": n_syntax,
        "num_planning_failures": n_planning_failure,
        "num_solver_errors": n_solver_error,
        **eval_summary,
    }
    with (save_path / "summary_results.json").open("w", encoding="utf-8") as f:
        json.dump(metrics, f, indent=2)

    acc = eval_summary.get("accuracy", 0.0)
    n_done = eval_summary.get("num_done", 0)
    avg_steps = eval_summary.get("average_steps", 0.0)
    avg_recall = eval_summary.get("avg_goal_predicate_recall")
    goal_match = eval_summary.get("goal_count_match_rate", 0.0)

    sim_rate = eval_summary.get("simulation_success_rate")
    n_sim_tested = eval_summary.get("num_simulation_tested", 0)
    n_sim_ok = eval_summary.get("num_simulation_success", 0)
    env_sim_rate = eval_summary.get("env_simulation_success_rate")
    n_env_tested = eval_summary.get("num_env_simulation_tested", 0)
    n_env_ok = eval_summary.get("num_env_simulation_success", 0)
    avg_ratio = eval_summary.get("avg_steps_ratio")

    mode = "domain+problem" if args.generate_domain else "problem-only"
    print(f"\nResults saved to {save_path}  (mode: {mode})")
    print(f"PDDL repairs          : {args.pddl_repairs}")
    print(f"Accuracy (done)       : {acc:.4f} ({n_done}/{n})")
    print(f"Syntax errors         : {n_syntax}/{n}")
    print(f"Planning failures     : {n_planning_failure}/{n}")
    print(f"Solver errors         : {n_solver_error}/{n}")
    print(f"Average steps (done)  : {avg_steps:.1f}")
    if avg_ratio is not None:
        print(f"Avg steps ratio       : {avg_ratio:.2f}x optimal")
    if sim_rate is not None:
        print(f"PDDL simulation       : {sim_rate:.4f} ({n_sim_ok}/{n_sim_tested})")
    if env_sim_rate is not None:
        print(f"Env simulation        : {env_sim_rate:.4f} ({n_env_ok}/{n_env_tested})")
    if avg_recall is not None:
        print(f"Avg goal pred recall  : {avg_recall:.4f}")
    print(f"Goal count match rate : {goal_match:.4f}")
    action_totals = eval_summary.get("plan_action_type_totals", {})
    if action_totals:
        print(f"Plan action totals    : {action_totals}")


# ── CLI ──────────────────────────────────────────────────────────────────


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Robotouille LLM-as-Formalizer: NL → PDDL → OPTIC solver"
    )
    parser.add_argument("--model-name", required=True)
    parser.add_argument("--temperature", type=float, default=0.0)
    parser.add_argument("--max-tokens", type=int, default=4096)
    parser.add_argument("--save-path", required=True)
    parser.add_argument("--data-path", default=str(_DEFAULT_DATA_PATH),
                        help="Path to robotouille_single_agent_async.json")
    parser.add_argument("--batch", type=int, default=8)
    parser.add_argument("--max-examples", type=int, default=999)
    parser.add_argument("--num-workers", type=int, default=4)
    parser.add_argument("--llm-retries", type=int, default=2)
    parser.add_argument(
        "--history-mode",
        default="cumulative",
        choices=["cumulative", "single-turn"],
        dest="history_mode",
    )
    parser.add_argument(
        "--generate-domain",
        action="store_true",
        default=False,
        dest="generate_domain",
        help="LLM generates both domain+problem PDDL (default: problem-only with fixed domain).",
    )
    parser.add_argument(
        "--effect-goal",
        action="store_true",
        default=False,
        dest="effect_goal",
        help="(Only with --generate-domain) Use parameterless encoding with all at-end effects in :goal.",
    )
    parser.add_argument(
        "--seeds", type=int, nargs="*", default=[],
        help="Seeds for procedural randomization. If omitted, use base layout only.",
    )
    parser.add_argument(
        "--no-coordinates",
        action="store_true",
        help="When using --seeds, omit grid (x, y) from regenerated natural_language.",
    )
    parser.add_argument(
        "--exclude-envs", type=str, nargs="*", default=[],
        dest="exclude_envs",
        help="Env ID prefixes to exclude (e.g. '5_potato_soup 6_onion_soup'). "
             "Any record whose id starts with one of these prefixes is skipped.",
    )
    parser.add_argument(
        "--num-shots",
        type=int,
        default=0,
        dest="num_shots",
        help="Number of few-shot examples to append to the system prompt (problem-only mode only).",
    )
    parser.add_argument(
        "--solver",
        default=DEFAULT_SOLVER,
        choices=["optic", "lama-first"],
        help="PDDL solver to use. 'lama-first' is faster for classical STRIPS domains (default).",
    )
    parser.add_argument(
        "--input-mode",
        default="json",
        choices=["json", "nl", "robo"],
        help=(
            "Input representation: 'json' passes the annotated environment JSON + domain PDDL reference; "
            "'nl' passes the natural_language field + domain PDDL reference; "
            "'robo' replaces the domain PDDL with the Robotouille io-cot prompt + annotated JSON."
        ),
    )
    parser.add_argument(
        "--pddl-repairs",
        action="store_true",
        default=False,
        dest="pddl_repairs",
        help=(
            "Enable Robotouille-specific PDDL repairs. Leave disabled for raw "
            "formalizer comparisons against Planner and CP-SAT."
        ),
    )
    return parser.parse_args()


def main() -> None:
    args = parse_args()

    data_path = Path(args.data_path)
    if not data_path.is_absolute():
        data_path = _PROJECT_ROOT / data_path

    records = _load_records(data_path)
    print(f"Loaded {len(records)} records from {data_path}")

    if args.seeds:
        records = _expand_with_seeds(
            records,
            args.seeds,
            include_coordinates=not args.no_coordinates,
        )
        print(f"Expanded to {len(records)} records with seeds {args.seeds}")

    if args.exclude_envs:
        before = len(records)
        records = [r for r in records if not any(r["id"].startswith(p) for p in args.exclude_envs)]
        print(f"Excluded {before - len(records)} records matching prefixes {args.exclude_envs} ({len(records)} remaining)")

    if args.generate_domain:
        print("Mode: LLM generates domain + problem PDDL")
    else:
        print("Mode: Fixed domain PDDL, LLM generates problem PDDL only")

    os.makedirs(args.save_path, exist_ok=True)

    llm_client = build_llm_client(
        args.model_name, args.temperature, args.max_tokens,
        num_workers=args.num_workers, strict_json=True,
    )
    run_task(llm_client, records, args)


if __name__ == "__main__":
    main()
