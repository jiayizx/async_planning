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
)
from src.method.pddl_solver import solve, batch_solve, SolverResult
from src.evaluation.robotouille.eval import evaluate_record, summarize_eval


_TRANSIENT_SOLVER_RETRIES = 5  # Apptainer container errors are transient; give server time to recover
SOLVER_TIMEOUT = 120
DEFAULT_SOLVER = "lama-first"  # faster than OPTIC for classical STRIPS domains
# Fallback planners tried when lama-first returns empty output (search timeout on complex problems)
_LAMA_FALLBACKS = ["lama", "fd-ms"]


# ── PDDL problem pruning ─────────────────────────────────────────────────

import re as _re

def _prune_irrelevant_items(problem_pddl: str) -> str:
    """Remove items not in the goal and redundant stoves/boards from the problem.

    In GENERATE_DOMAIN mode the LLM includes every item and station present in
    the scenario, even those not needed for the goal.  Each extra item/stove
    multiplies the grounding of pick-up/place/cook/stack actions and can push
    OPTIC over the timeout.

    Algorithm:
      1. Collect all object names that appear in :goal.
      2. Remove item-typed objects absent from the goal.
      3. After removing irrelevant items, stoves/boards that now have no items
         on them and are not mentioned in the goal are redundant.  Keep only
         one stove (if cooking is needed) and one board (if cutting is needed);
         remove the rest.
      4. Strip every :init fact that mentions a removed object.
    """
    pat_obj = r'\b([a-z][a-z_]*_\d+)\b'

    # ── 1. Collect goal objects ──────────────────────────────────────────
    goal_m = _re.search(r'\(:goal\b(.*)', problem_pddl, _re.DOTALL)
    if not goal_m:
        return problem_pddl
    goal_text = goal_m.group(1)
    goal_objects: set[str] = set(_re.findall(pat_obj, goal_text))

    # ── 2. Parse typed :objects section ──────────────────────────────────
    obj_m = _re.search(r'\(:objects(.*?)\)', problem_pddl, _re.DOTALL)
    if not obj_m:
        return problem_pddl

    groups: list[tuple[list[str], str]] = []  # (names, type)
    segments = _re.split(r'\s*-\s*(\w+)', obj_m.group(1))
    for names_raw, type_name in zip(segments[0::2], segments[1::2]):
        names = names_raw.split()
        if names:
            groups.append((names, type_name.strip()))

    # ── 3. Remove irrelevant items ────────────────────────────────────────
    removed: set[str] = set()
    new_groups: list[tuple[list[str], str]] = []
    for names, type_name in groups:
        if type_name == "item":
            kept = [n for n in names if n in goal_objects]
            removed.update(n for n in names if n not in goal_objects)
            if kept:
                new_groups.append((kept, type_name))
        else:
            new_groups.append((names, type_name))

    # ── 4. Find which stoves/boards still have an item on them ────────────
    # Work with the current init (before station pruning) to decide which
    # stoves/boards remain occupied after item removal.
    init_m0 = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    init_text0 = init_m0.group(1) if init_m0 else ""

    def _stations_with_items(init_text: str, removed_items: set[str]) -> set[str]:
        """Return station names that still have at least one (remaining) item."""
        occupied: set[str] = set()
        for fact in _re.findall(r'\([^()]+\)', init_text):
            tokens = _re.findall(pat_obj, fact)
            if len(tokens) < 2:
                continue
            if tokens[0] in removed_items:
                continue  # this item was removed
            # Predicate like (at item station) — last token is likely the station
            occupied.add(tokens[-1])
        return occupied

    occupied_stations = _stations_with_items(init_text0, removed)

    # Determine which stations are stoves vs boards from init
    all_stoves: list[str] = []
    all_boards: list[str] = []
    for fact in _re.findall(r'\([^()]+\)', init_text0):
        m_s = _re.match(r'\(isstove\s+(\S+)\s*\)', fact)
        m_b = _re.match(r'\(isboard\s+(\S+)\s*\)', fact)
        if m_s:
            all_stoves.append(m_s.group(1))
        if m_b:
            all_boards.append(m_b.group(1))

    # For each type, keep stoves/boards that still have items;
    # if none do, keep one as a placeholder (cooking still needs a stove).
    def _choose_to_keep(candidates: list[str], occupied: set[str],
                        goal_objs: set[str]) -> tuple[set[str], set[str]]:
        """Return (keep_set, remove_set) for a list of candidate stations."""
        # Always keep stations explicitly in the goal
        in_goal = [s for s in candidates if s in goal_objs]
        # Prefer stations that still have items on them
        has_items = [s for s in candidates if s in occupied and s not in goal_objs]
        # We want at least 1 kept total
        keep: list[str] = in_goal[:]
        if not keep:
            if has_items:
                keep.append(has_items[0])
            elif candidates:
                keep.append(candidates[0])
        remove_set = set(candidates) - set(keep)
        return set(keep), remove_set

    removed_stoves: set[str] = set()
    removed_boards: set[str] = set()
    if len(all_stoves) > 1:
        _, removed_stoves = _choose_to_keep(all_stoves, occupied_stations, goal_objects)
    if len(all_boards) > 1:
        _, removed_boards = _choose_to_keep(all_boards, occupied_stations, goal_objects)

    removed_stations = removed_stoves | removed_boards

    # Remove pruned stoves/boards from :objects groups
    if removed_stations:
        pruned_groups: list[tuple[list[str], str]] = []
        for names, type_name in new_groups:
            if type_name == "station":
                kept_s = [n for n in names if n not in removed_stations]
                removed.update(n for n in names if n in removed_stations)
                if kept_s:
                    pruned_groups.append((kept_s, type_name))
            else:
                pruned_groups.append((names, type_name))
        new_groups = pruned_groups

    # ── 4b. Remove vacant tables not referenced by any remaining item ────────
    # A table that has no goal item on it (neither as source nor goal station)
    # and is not the robot's initial station is pure overhead for OPTIC's move
    # grounding.  We keep: robot start, tables with remaining items, goal tables.
    goal_stations = goal_objects  # already computed above
    robot_start: str | None = None
    for fact in _re.findall(r'\([^()]+\)', init_text0):
        m_loc = _re.match(r'\(loc\s+\S+\s+(\S+)\s*\)', fact)
        if m_loc:
            robot_start = m_loc.group(1)
            break

    # Tables with at least one remaining item on them
    tables_with_items: set[str] = set()
    for fact in _re.findall(r'\([^()]+\)', init_text0):
        tokens = _re.findall(pat_obj, fact)
        if len(tokens) < 2:
            continue
        item_tok = tokens[0]
        station_tok = tokens[-1]
        if item_tok in removed:
            continue  # item was removed
        # Check this token looks like a table (heuristic: not stove/board/sink)
        if station_tok.startswith("table"):
            tables_with_items.add(station_tok)

    # Collect all tables in :objects
    all_tables: list[str] = []
    for names, type_name in groups:
        if type_name == "station":
            for n in names:
                if n.startswith("table"):
                    all_tables.append(n)

    redundant_tables: set[str] = set()
    for t in all_tables:
        if t in goal_stations:
            continue
        if t == robot_start:
            continue
        if t in tables_with_items:
            continue
        # Truly vacant and unreferenced — safe to remove
        redundant_tables.add(t)

    if redundant_tables:
        pruned_groups2: list[tuple[list[str], str]] = []
        for names, type_name in new_groups:
            if type_name == "station":
                kept_t = [n for n in names if n not in redundant_tables]
                removed.update(n for n in names if n in redundant_tables)
                if kept_t:
                    pruned_groups2.append((kept_t, type_name))
            else:
                pruned_groups2.append((names, type_name))
        new_groups = pruned_groups2

    if not removed:
        return problem_pddl  # nothing to prune

    # ── 5. Rebuild :objects section ──────────────────────────────────────
    new_obj_body = " ".join(
        " ".join(names) + " - " + type_name
        for names, type_name in new_groups
    )
    new_obj_section = "(:objects " + new_obj_body + ")"
    problem_pddl = problem_pddl[:obj_m.start()] + new_obj_section + problem_pddl[obj_m.end():]

    # ── 6. Strip :init facts that mention a removed object ────────────────
    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl

    kept_facts: list[str] = []
    for fact in _re.findall(r'\([^()]+\)', init_m.group(1)):
        tokens = set(_re.findall(pat_obj, fact))
        if tokens & removed:
            continue
        kept_facts.append(fact)

    new_init_section = "(:init " + " ".join(kept_facts) + ")"
    problem_pddl = (
        problem_pddl[:init_m.start()]
        + new_init_section
        + problem_pddl[init_m.end():]
    )
    return problem_pddl


def _fix_domain_requirements(domain_pddl: str) -> str:
    """Simplify (or ...) in action conditions that OPTIC cannot handle.

    OPTIC does not support (or ...) in temporal ``at start`` conditions of
    durative actions — it treats them as statically-false even when
    :disjunctive-preconditions is declared.  When the pattern
    ``(or (isfryable ?i) ...)`` appears we replace the entire ``(or ...)``
    expression with just ``(isfryable ?i)``, because the second branch
    (isfryableifcut + iscut) is already covered by the ``fry_cut_item`` action.
    """
    if "(or " not in domain_pddl:
        return domain_pddl

    # Find and replace balanced (or (isfryable ?VAR) ...) with (isfryable ?VAR)
    result = list(domain_pddl)
    i = 0
    while i < len(domain_pddl):
        # Look for "(or (isfryable " pattern
        m = _re.search(r'\(or\s+\(isfryable\s+(\?\w+)\)', domain_pddl[i:])
        if not m:
            break
        start = i + m.start()
        var = m.group(1)
        # Find the matching closing paren by counting depth
        depth = 0
        end = start
        for j in range(start, len(domain_pddl)):
            if domain_pddl[j] == "(":
                depth += 1
            elif domain_pddl[j] == ")":
                depth -= 1
                if depth == 0:
                    end = j + 1
                    break
        replacement = f"(isfryable {var})"
        domain_pddl = domain_pddl[:start] + replacement + domain_pddl[end:]
        i = start + len(replacement)

    return domain_pddl


def _fix_empty_predicate(domain_pddl: str, problem_pddl: str) -> str:
    """Inject missing (empty station) facts for stations that have no items.

    The ``place`` action requires ``(empty ?s)`` but LLM-generated problems
    often forget to initialise this for stations that have no items (e.g. the
    stove, spare tables).  Without it the planner can never place items,
    making goals unreachable.

    Applies whenever the domain uses an ``empty`` predicate.
    """
    if "(empty " not in domain_pddl:
        return problem_pddl

    pat_obj = r'\b([a-z][a-z_]*_\d+)\b'

    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    # Collect all station names from :objects
    obj_m = _re.search(r'\(:objects(.*?)\)', problem_pddl, _re.DOTALL)
    if not obj_m:
        return problem_pddl
    stations: set[str] = set()
    segments = _re.split(r'\s*-\s*(\w+)', obj_m.group(1))
    for names_raw, type_name in zip(segments[0::2], segments[1::2]):
        if type_name.strip() == "station":
            stations.update(names_raw.split())

    # Stations that already have an item on them (via 'at' or 'on-surface')
    occupied: set[str] = set()
    for fact in facts:
        toks = _re.findall(pat_obj, fact)
        if len(toks) >= 2 and (fact.strip().startswith("(at ") or "on-surface" in fact):
            occupied.add(toks[-1])

    # Stations that already have (empty X) in init
    already_empty: set[str] = set()
    for fact in facts:
        m = _re.match(r'\(empty\s+(\S+)\s*\)', fact.strip())
        if m:
            already_empty.add(m.group(1))

    # Inject (empty station) for stations with no items and no existing empty fact
    to_inject = stations - occupied - already_empty
    if not to_inject:
        return problem_pddl

    new_facts = list(facts) + [f"(empty {s})" for s in sorted(to_inject)]
    new_init = "(:init " + " ".join(new_facts) + ")"
    return (
        problem_pddl[:init_m.start()]
        + new_init
        + problem_pddl[init_m.end():]
    )


def _fix_handempty(domain_pddl: str, problem_pddl: str) -> str:
    """Inject (handempty player) if pick-up requires it but it's missing from :init.

    LLM-generated problems sometimes omit ``(handempty robot_1)`` in :init.
    Without it the robot can never pick up anything, making all goals unreachable.
    """
    if "(handempty " not in domain_pddl:
        return problem_pddl

    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)

    # Already present — nothing to do
    if _re.search(r'\(handempty\s+\S+\)', init_text):
        return problem_pddl

    # Collect player names from :objects
    obj_m = _re.search(r'\(:objects(.*?)\)', problem_pddl, _re.DOTALL)
    if not obj_m:
        return problem_pddl
    players: list[str] = []
    segments = _re.split(r'\s*-\s*(\w+)', obj_m.group(1))
    for names_raw, type_name in zip(segments[0::2], segments[1::2]):
        if type_name.strip() == "player":
            players.extend(names_raw.split())
    if not players:
        return problem_pddl

    facts = _re.findall(r'\([^()]+\)', init_text)
    new_facts = list(facts) + [f"(handempty {p})" for p in players]
    new_init = "(:init " + " ".join(new_facts) + ")"
    return (
        problem_pddl[:init_m.start()]
        + new_init
        + problem_pddl[init_m.end():]
    )


def _fix_vacant(domain_pddl: str, problem_pddl: str) -> str:
    """Inject missing (vacant station) facts for stations that have no player.

    The ``move`` action requires ``(vacant ?to)`` at start.  LLM-generated
    problems sometimes forget to mark destination stations as vacant, making
    them unreachable.  We inject ``(vacant station)`` for every station that
    has no player on it and no existing ``(vacant station)`` fact.
    """
    if "(vacant " not in domain_pddl:
        return problem_pddl

    pat_obj = r'\b([a-z][a-z_]*_\d+)\b'

    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    # Collect all station names from :objects
    obj_m = _re.search(r'\(:objects(.*?)\)', problem_pddl, _re.DOTALL)
    if not obj_m:
        return problem_pddl
    stations: set[str] = set()
    segments = _re.split(r'\s*-\s*(\w+)', obj_m.group(1))
    for names_raw, type_name in zip(segments[0::2], segments[1::2]):
        if type_name.strip() == "station":
            stations.update(names_raw.split())

    # Stations occupied by a player (via 'loc')
    player_occupied: set[str] = set()
    for fact in facts:
        m = _re.match(r'\(loc\s+\S+\s+(\S+)\s*\)', fact.strip())
        if m:
            player_occupied.add(m.group(1))

    # Stations already declared vacant
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
    return (
        problem_pddl[:init_m.start()]
        + new_init
        + problem_pddl[init_m.end():]
    )


def _fix_holding_contradiction(domain_pddl: str, problem_pddl: str) -> str:
    """Convert (holding robot item) in :init to handempty + at item station.

    LLMs sometimes initialise the robot as already holding an item.  Without
    ``(handempty robot)`` the robot can never pick up anything else, making
    most goals unreachable.  We remove the holding fact and instead:
      - add ``(handempty player)``
      - add ``(at item station)`` / ``(on-surface item station)`` / ``(clear item)``
        placing the item at the player's starting station.
    """
    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    # Find (holding player item) facts
    holding: list[tuple[str, str, str]] = []  # (fact_str, player, item)
    for fact in facts:
        m = _re.match(r'\(holding\s+(\S+)\s+(\S+)\)', fact.strip())
        if m:
            holding.append((fact, m.group(1), m.group(2)))

    if not holding:
        return problem_pddl

    # Only fix if handempty is completely absent (genuine contradiction)
    if _re.search(r'\(handempty\s+\S+\)', init_text):
        return problem_pddl

    # Find each player's starting station from (loc player station)
    player_station: dict[str, str] = {}
    for fact in facts:
        m = _re.match(r'\(loc\s+(\S+)\s+(\S+)\)', fact.strip())
        if m:
            player_station[m.group(1)] = m.group(2)

    # Build new facts: remove holding, add handempty + relocate held items
    holding_strs = {hf for hf, _, _ in holding}
    new_facts = [f for f in facts if f not in holding_strs]

    players_fixed: set[str] = set()
    for _, player, item in holding:
        if player not in players_fixed:
            new_facts.append(f"(handempty {player})")
            players_fixed.add(player)
        station = player_station.get(player)
        if station:
            new_facts.append(f"(at {item} {station})")
            new_facts.append(f"(on-surface {item} {station})")
            if not any(_re.match(rf'\(clear\s+{_re.escape(item)}\s*\)', f.strip()) for f in new_facts):
                new_facts.append(f"(clear {item})")
            if "(item-free " in domain_pddl:
                if not any(_re.match(rf'\(item-free\s+{_re.escape(item)}\s*\)', f.strip()) for f in new_facts):
                    new_facts.append(f"(item-free {item})")

    new_init = "(:init " + " ".join(new_facts) + ")"
    return (
        problem_pddl[: init_m.start()]
        + new_init
        + problem_pddl[init_m.end():]
    )


def _fix_on_surface(domain_pddl: str, problem_pddl: str) -> str:
    """Inject missing (on-surface item station) for items that have (at item station) but lack (on-surface).

    LLMs sometimes write (at item station) without the accompanying (on-surface)
    fact.  Without (on-surface), pick-up cannot be applied (it requires on-surface),
    so the item is permanently inaccessible.
    """
    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    # Build at-locations and on-surface locations for items
    at_locs: dict[str, str] = {}
    on_surface_items: set[str] = set()
    for fact in facts:
        m = _re.match(r'\(at\s+(\S+)\s+(\S+)\)', fact.strip())
        if m:
            at_locs[m.group(1)] = m.group(2)
        m = _re.match(r'\(on-surface\s+(\S+)\s+', fact.strip())
        if m:
            on_surface_items.add(m.group(1))

    missing = [(item, station) for item, station in at_locs.items()
               if item not in on_surface_items]
    if not missing:
        return problem_pddl

    new_facts = list(facts) + [f"(on-surface {item} {station})" for item, station in missing]
    new_init = "(:init " + " ".join(new_facts) + ")"
    return (
        problem_pddl[: init_m.start()]
        + new_init
        + problem_pddl[init_m.end():]
    )


def _fix_fryable(domain_pddl: str, problem_pddl: str) -> str:
    """Inject (isfryable item) for items that the goal requires to be (isfried) but lack fryability.

    If the goal contains (isfried item) and the init lacks both (isfryable item)
    and (isfryableifcut item), the fry action can never fire.  We inject
    (isfryable item) as a structural fix so OPTIC can find a plan.
    """
    if "(isfryable " not in domain_pddl and "(isfried " not in domain_pddl:
        return problem_pddl

    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    goal_m = _re.search(r'\(:goal(.*)', problem_pddl, _re.DOTALL)
    if not init_m or not goal_m:
        return problem_pddl

    init_text = init_m.group(1)
    goal_text = goal_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    # Items that must be fried (in goal)
    goal_fried: set[str] = set()
    for m in _re.finditer(r'\(isfried\s+(\S+)\s*\)', goal_text):
        goal_fried.add(m.group(1))

    # Items already marked fryable
    already_fryable: set[str] = set()
    for fact in facts:
        m = _re.match(r'\((?:isfryable|isfryableifcut)\s+(\S+)\s*\)', fact.strip())
        if m:
            already_fryable.add(m.group(1))

    to_fix = goal_fried - already_fryable
    if not to_fix:
        return problem_pddl

    new_facts = list(facts) + [f"(isfryable {item})" for item in sorted(to_fix)]
    new_init = "(:init " + " ".join(new_facts) + ")"
    return (
        problem_pddl[: init_m.start()]
        + new_init
        + problem_pddl[init_m.end():]
    )


def _fix_item_locations(
    domain_pddl: str,
    problem_pddl: str,
    original_json: dict | None = None,
) -> str:
    """Inject (at/on-surface item station) for items that have no initial location.

    Uses ``original_json`` to determine each item's correct starting station:
      1. Match PDDL item name (e.g. ``chicken_1``) to the Nth game item of that
         type (sorted by x,y) to obtain its actual (x,y) position.
      2. Build a position→PDDL-station map by anchoring from the ``(at item
         station)`` facts already present in :init for other items.
      3. Inject ``(at/on-surface/clear/item-free item station)`` for each item
         whose station could be resolved.

    Items whose station cannot be resolved are left for the LLM retry.
    """
    init_m = _re.search(r'\(:init(.*?)\)(?=\s*\(:goal)', problem_pddl, _re.DOTALL)
    if not init_m:
        return problem_pddl
    init_text = init_m.group(1)
    facts = _re.findall(r'\([^()]+\)', init_text)

    # Parse items from :objects
    obj_m = _re.search(r'\(:objects(.*?)\)', problem_pddl, _re.DOTALL)
    if not obj_m:
        return problem_pddl
    obj_text = obj_m.group(1)
    # Collect all type names to avoid misidentifying them as object names
    # (the greedy regex can include "station"/"player" when the group spans type separators)
    _type_names = set(_re.findall(r'-\s*(\w[\w-]*)', obj_text))
    pddl_items: list[str] = []
    for seg in _re.finditer(r'((?:\w[\w-]*\s+)+)-\s*item', obj_text):
        pddl_items.extend(n for n in seg.group(1).split() if n not in _type_names)
    if not pddl_items:
        return problem_pddl

    # Parse station names from :objects grouped by type prefix
    # Used as fallback when the item's exact game station isn't in game_to_pddl
    from collections import defaultdict as _dd
    pddl_stations_by_type: dict[str, list[str]] = _dd(list)
    for seg in _re.finditer(r'((?:\w[\w-]*\s+)+)-\s*station', obj_text):
        for st in seg.group(1).split():
            if st not in _type_names:
                st_type = _re.sub(r"_\d+$", "", st).lower()
                pddl_stations_by_type[st_type].append(st)

    # Items that already have a location (at/on-surface or being held)
    items_with_loc: set[str] = set()
    for fact in facts:
        m = _re.match(r'\((at|on-surface)\s+(\S+)\s+\S+\)', fact.strip())
        if m:
            items_with_loc.add(m.group(2))
        m = _re.match(r'\(holding\s+\S+\s+(\S+)\)', fact.strip())
        if m:
            items_with_loc.add(m.group(1))

    missing_loc = [item for item in pddl_items if item not in items_with_loc]
    if not missing_loc or original_json is None:
        return problem_pddl

    # ── Build game item positions: base_type → [(x,y), ...] sorted by (x,y) ─
    game_items_by_type: dict[str, list[tuple[int, int]]] = _dd(list)
    for item in sorted(
        original_json.get("items", []),
        key=lambda i: (i["x"], i["y"], i.get("stack-level", 0)),
    ):
        game_items_by_type[item["name"].lower()].append((item["x"], item["y"]))

    # ── Build (x,y) → game station name (e.g. "table1") ─────────────────
    xy_to_game_station: dict[tuple[int, int], str] = {}
    _type_cnt: dict[str, int] = _dd(int)
    for s in sorted(original_json.get("stations", []), key=lambda s: (s["x"], s["y"])):
        _type_cnt[s["name"].lower()] += 1
        xy_to_game_station[(s["x"], s["y"])] = f"{s['name'].lower()}{_type_cnt[s['name'].lower()]}"

    # ── Anchor: game station name → PDDL station name ────────────────────
    # Use existing (at pddl_item pddl_station) facts to map game positions → PDDL names.
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

    # ── Inject facts for items without a location ─────────────────────────
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
            # Fallback: the LLM may have declared fewer stations than the game has.
            # Use any PDDL station of the same type (e.g., if game has board2 but PDDL
            # only declared board_1, place the item at board_1).
            game_st_type = _re.sub(r"\d+$", "", game_st)  # "board2" → "board"
            candidates = pddl_stations_by_type.get(game_st_type, [])
            if not candidates:
                continue
            pddl_station = candidates[0]

        esc = _re.escape(pddl_item)
        if not any(_re.match(rf'\(at\s+{esc}\s+', f.strip()) for f in facts):
            new_facts_to_add.append(f"(at {pddl_item} {pddl_station})")
        if not any(_re.match(rf'\(on-surface\s+{esc}\s+', f.strip()) for f in facts):
            new_facts_to_add.append(f"(on-surface {pddl_item} {pddl_station})")
        if not any(_re.match(rf'\(clear\s+{esc}\s*\)', f.strip()) for f in facts):
            new_facts_to_add.append(f"(clear {pddl_item})")
        if "(item-free " in domain_pddl:
            if not any(_re.match(rf'\(item-free\s+{esc}\s*\)', f.strip()) for f in facts):
                new_facts_to_add.append(f"(item-free {pddl_item})")

    if not new_facts_to_add:
        return problem_pddl

    new_init = "(:init " + " ".join(list(facts) + new_facts_to_add) + ")"
    return (
        problem_pddl[: init_m.start()]
        + new_init
        + problem_pddl[init_m.end():]
    )


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
        if len(toks) >= 2 and (fact.strip().startswith("(at ") or "on-surface" in fact):
            if toks[0] in items:
                items_with_loc.add(toks[0])
    missing_loc = items - items_with_loc
    if missing_loc:
        issues.append(
            f"Items missing initial location (no (at item station) in :init): "
            f"{sorted(missing_loc)}.  Every item must have an (at item_N station_N) "
            f"and (on-surface item_N station_N) fact."
        )

    # Check for holding contradiction (robot holds item but no handempty)
    holding_facts = [f for f in facts if _re.match(r'\(holding\s+\S+\s+\S+\)', f.strip())]
    has_handempty_f = any(_re.match(r'\(handempty\s+\S+\)', f.strip()) for f in facts)
    if holding_facts and not has_handempty_f:
        held = [_re.match(r'\(holding\s+\S+\s+(\S+)\)', f.strip()).group(1)
                for f in holding_facts]
        issues.append(
            f"Robot is initialised as (holding player item) but has no (handempty player) — "
            f"this makes it impossible to pick up other items.  Remove the holding fact and "
            f"instead place the item at the robot's starting station: {held}."
        )

    # Check for missing handempty
    if "(handempty " in domain_pddl:
        has_handempty = any(_re.match(r'\(handempty\s+\S+\)', f.strip()) for f in facts)
        if not has_handempty and not holding_facts:
            issues.append(
                f"Robot has no (handempty player_N) in :init — the robot cannot "
                f"pick up any item until this is set."
            )

    # Check for stations missing empty
    if "(empty " in domain_pddl:
        occupied: set[str] = set()
        for fact in facts:
            toks = _re.findall(pat_obj, fact)
            if len(toks) >= 2 and (fact.strip().startswith("(at ") or "on-surface" in fact):
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
        "(handempty robot_N), stations that should be empty have (empty station_N), "
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


def _expand_with_seeds(records: list[dict], seeds: list[int]) -> list[dict]:
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
            new_rec["natural_language"] = convert_task(new_rec["original_json"])
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
        gold_data.append({
            "id": rec.get("id", "?"),
            "original_json": rec.get("original_json"),
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
            build_robotouille_temporal_messages(rec.get("original_json", {}), domain_pddl, effect_goal=args.effect_goal)
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
                    if args.solver == "optic":
                        p = _prune_irrelevant_items(p)
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
            for (i, _p), sr in zip(solvable, solve_outputs):
                solver_results[i] = sr
                if sr.error:
                    errors[i] = sr.error
                    error_types[i] = "syntax_error"
                    if "unreachable" in sr.error.lower() and args.generate_domain:
                        # Apply structural fixes and immediately re-solve before LLM retry
                        d_orig = domains[i] or ""
                        d = _fix_domain_requirements(d_orig)
                        if d != d_orig:
                            domains[i] = d
                        p_fixed = problems[i] or ""
                        orig_json = gold_data[i].get("original_json")
                        p_fixed = _fix_holding_contradiction(d, p_fixed)
                        p_fixed = _fix_handempty(d, p_fixed)
                        p_fixed = _fix_empty_predicate(d, p_fixed)
                        p_fixed = _fix_vacant(d, p_fixed)
                        p_fixed = _fix_item_locations(d, p_fixed, original_json=orig_json)
                        p_fixed = _fix_on_surface(d, p_fixed)
                        p_fixed = _fix_fryable(d, p_fixed)
                        if p_fixed != problems[i] or d != d_orig:
                            # Re-solve with fixed problem; use fallbacks for classical solvers
                            sr2 = solve(
                                d, p_fixed, solver=args.solver, timeout=SOLVER_TIMEOUT,
                                max_retries=_TRANSIENT_SOLVER_RETRIES,
                                fallback_solvers=_LAMA_FALLBACKS if args.solver != "optic" else None,
                            )
                            if not sr2.error:
                                solver_results[i] = sr2
                                problems[i] = p_fixed
                                errors[i] = ""
                                error_types[i] = ""
                                continue
                        # Structural fix didn't help — give LLM targeted diagnostics
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
    for retry in range(args.llm_retries):
        n_syntax = sum(1 for t in error_types if t == "syntax_error")
        failed = [i for i in range(n) if errors[i]]
        if not failed:
            break
        print(f"\nRetry {retry + 1}/{args.llm_retries}: {len(failed)} failed ({n_syntax} syntax)")
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

    eval_summary = summarize_eval(eval_results)

    metrics = {
        "benchmark": "robotouille",
        "model_name": args.model_name,
        "generate_domain": args.generate_domain,
        "effect_goal": args.effect_goal,
        "num_examples": n,
        "num_syntax_errors": n_syntax,
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
    print(f"Accuracy (done)       : {acc:.4f} ({n_done}/{n})")
    print(f"Syntax errors         : {n_syntax}/{n}")
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
    return parser.parse_args()


def main() -> None:
    args = parse_args()

    data_path = Path(args.data_path)
    if not data_path.is_absolute():
        data_path = _PROJECT_ROOT / data_path

    records = _load_records(data_path)
    print(f"Loaded {len(records)} records from {data_path}")

    if args.seeds:
        records = _expand_with_seeds(records, args.seeds)
        print(f"Expanded to {len(records)} records with seeds {args.seeds}")

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