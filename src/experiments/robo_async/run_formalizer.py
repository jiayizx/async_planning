"""
Robo-Async Formalizer Pipeline
--------------------------------
Pipeline per task:
  1. Load task JSON → generate NL description
  2. LLM generates PDDL 2.1 (domain + problem) from NL
  3. OPTIC solves the PDDL → temporal plan
  4. Engine evaluates plan → success, makespan, makespan_ratio
  5. Save results to JSONL

Usage:
  python -m src.experiments.robo_async.run_formalizer \\
      --model gemini-3-flash \\
      --out results/robo_async/formalizer/gemini-3-flash
"""
from __future__ import annotations

import argparse
import json
import re
import sys
import threading
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

from dotenv import load_dotenv
from tqdm import tqdm
load_dotenv()

_ROOT = Path(__file__).resolve().parent.parent.parent.parent
if str(_ROOT) not in sys.path:
    sys.path.insert(0, str(_ROOT))

from src.experiments.utils import build_llm_client
from src.experiments.robo_async.tag_filter import (
    parse_tag_arg,
    summarize_by_tag,
    tag_filter_match,
)
from src.method.pddl_solver import solve, batch_solve, SolverResult
from src.method.nl_to_pddl import _truncate_solver_error
from src.envs.robo_async.engine import Task, evaluate_from_text
from src.envs.robo_async.nl_generator import task_to_nl
from src.envs.robo_async.tasks import load_all_tasks


# ── Prompt ────────────────────────────────────────────────────────────────────

SYSTEM_PROMPT = """\
You are an expert AI planner. Translate a natural language cooking task into \
PDDL 2.1 with durative actions for the OPTIC temporal planner.

DESIGN PATTERN — three key ideas:
A) Use a (stackable <item>) predicate per item to signal it is ready to be stacked.
B) Generate ONE separate durative action per item in the stack order (stack_<item>), \
   encoding ordering via predecessor constraints.
C) Encode station capacity with a <station>_free predicate: each processing action \
   requires the station to be free at start, takes it (not free) at start, \
   and releases it (free) at end.

INTERFACE CONTRACT — follow this exactly:
- The execution engine accepts ONLY these base action names:
  grill, cut, fry, boil, toast, marinate, mash, stack.
- Do NOT invent action names such as grill_raw, fry_raw, grill_generic, \
  fry_generic, cook, prepare, assemble, or place.
- If you need an item-specific ground action, its name must be exactly \
  <base_action>_<exact_item_name>, for example fry_potato1, grill_patty2, \
  marinate_chicken3, stack_bun_top. The prefix before the first underscore \
  must still be one of the allowed base actions.
- If the task lists robots, the final solver plan must use robot-aware actions:
  (grill ROBOT ITEM), (cut ROBOT ITEM), (fry ROBOT ITEM), (boil ROBOT ITEM), \
  (toast ROBOT ITEM), (marinate ROBOT ITEM), (mash ROBOT ITEM), or \
  (stack ROBOT ITEM), with ROBOT exactly from the task and ITEM exactly from \
  the task.
- Use item names EXACTLY as listed in the task. Never remove numeric suffixes, \
  never singularize/pluralize, never replace underscores with spaces, and never \
  shorten names such as patty1 to patty or portobello8 to portobello.
- If the task does NOT list robots, every action in the final solver plan must \
  normalize to one of:
  (grill ITEM), (cut ITEM), (fry ITEM), (boil ITEM), (toast ITEM), \
  (marinate ITEM), (mash ITEM), or (stack ITEM), with ITEM exactly from the task.

RULES:
1. Requirements: (:requirements :durative-actions :typing)
2. Types: declare item. If the task lists robots, also declare robot.
3. Predicates: (raw ?i - item), (stackable ?i - item), (stacked ?i - item), \
   (ready ?i - item), one result predicate per processing action used in the task \
   (grilled, cut, fried, boiled, toasted, marinated, mashed), AND one <station>_free \
   predicate per station mentioned in the task \
   (e.g. grill_free, cutting_board_free, fryer_free, marinator_free). \
   If the task lists robots, also declare (robot_free ?r - robot).
4. Processing actions (grill / cut / fry / boil / toast / marinate / mash) are \
   parameterized (?i - item) by default. If the task lists robots, parameterize \
   them as (?r - robot ?i - item). Each action consumes its input state and \
   produces its output state; the station is occupied at start and released at end. \
   If robots are present, the action must also require (robot_free ?r) at start, \
   set (not (robot_free ?r)) at start, and restore (robot_free ?r) at end:
   :condition (and (at start (<input_state> ?i)) (at start (<station>_free)) ...)
   :effect    (and (at start (not (<input_state> ?i)))
                   (at start (not (<station>_free)))
                   (at end   (<output_state> ?i))
                   (at end   (stackable ?i))
                   (at end   (<station>_free)))
   Input → output and station for each action:
     grill:    raw → grilled,         station: grill_free
     cut:      raw → cut,             station: cutting_board_free
     fry:      raw → fried,           station: fryer_free
     boil:     raw → boiled,          station: boiler_free
     toast:    raw → toasted,         station: toaster_free
     marinate: cut → marinated,       station: marinator_free
     mash:     boiled → mashed,       station: cutting_board_free
   EXCEPTION — multi-step chains change the input state: if the task says an item \
   "must be cut before frying", fry's input is "cut" — change BOTH the condition \
   AND the start-negation effect: (at start (cut ?i)) and (at start (not (cut ?i))). \
   NEVER use (not (raw ?i)) when the input state is not raw. \
   Similarly for grill with "must be marinated": use (marinated ?i) in both places.
   If different items need different input states for the same output action \
   (e.g. chicken is fryable from raw but potato is fryable after cut), create \
   separate item-specific ground actions such as fry_chicken1 and fry_potato1 \
   with :parameters () instead of one incorrect generic fry action. If robots are \
   present, use :parameters (?r - robot) instead so the plan still contains the \
   robot argument. The action name must be <allowed_base_action>_<exact_item_name>; \
   never use names like fry_raw, fry_cut, fry_generic, grill_raw, or grill_generic.
5. STACKING — one ground action per item in stack order:
   - Action name: stack_<item_name>
   - If no robots: :parameters ()
   - If robots are present: :parameters (?r - robot), and also require/release \
     (robot_free ?r) just like other actions.
   - :condition must include: (at start (stackable <item>))
   - If the item has a required goal state (e.g. grilled, cut, mashed), add: \
     (at start (<required_state> <item>))  — ensures it is fully processed before stacking.
   - If there is a previous item in the order, add: (at start (stacked <prev_item>))
   - :effect (and (at start (not (stackable <item>))) (at end (stacked <item>)))
6. TEMPORAL CONSTRAINTS — if the task says "after A finishes, wait at least W \
   seconds before starting B", encode that lag explicitly in PDDL. Use this pattern:
   - Add a dedicated completion predicate for A, such as (done_grill_patty01), \
     and make A set it at end.
   - Add a dedicated lag predicate for B, such as (lag_ready_stack_patty01).
   - Add a planner-only durative action named wait_<after_action>_<after_item> \
     with duration W, no station usage, and no robot usage. It should require \
     the completion predicate for A at start and set the lag predicate for B at end.
   - Add the lag predicate as an extra start condition on B.
   The solver MAY output wait_* actions; they are planning-only helpers and will \
   be ignored by the execution engine. Do not use wait_* for anything except \
   temporal lag constraints.
7. (:init): raw items → (raw X); ready items → (ready X) (stackable X); \
   all stations start free → (grill_free) (cutting_board_free) etc. \
   If robots are present, all robots start free → (robot_free robot1) ...
8. Goal: (and <all required processed-state predicates> \
   <(stacked X) for every item in stack order>).
9. NO negative preconditions inside :condition. NO (or ...). NO (when ...).
10. Use EXACT item names from the task. Every object in (:objects), every object \
   in action names, and every object in predicates must be copied verbatim from \
   the provided item list. If robots are present, also use EXACT robot names \
   from the task in (:objects), predicates, and action arguments.
11. Output ONLY valid JSON, no markdown fences:

{"domain_pddl": "<full domain PDDL>", "problem_pddl": "<full problem PDDL>"}

EXAMPLE — grilled patty + cut lettuce, stack bun_bot→patty→lettuce→bun_top, \
grill=10s, cut=3s, stack=1s, grill capacity=1, cutting_board capacity=1:

{"domain_pddl": "(define (domain cooking)\\n  (:requirements :durative-actions :typing)\\n  (:types item)\\n  (:predicates (raw ?i - item) (grilled ?i - item) (cut ?i - item) (stackable ?i - item) (stacked ?i - item) (ready ?i - item) (grill_free) (cutting_board_free))\\n  (:durative-action grill\\n    :parameters (?i - item) :duration (= ?duration 10)\\n    :condition (and (at start (raw ?i)) (at start (grill_free)))\\n    :effect (and (at start (not (raw ?i))) (at start (not (grill_free))) (at end (grilled ?i)) (at end (stackable ?i)) (at end (grill_free))))\\n  (:durative-action cut\\n    :parameters (?i - item) :duration (= ?duration 3)\\n    :condition (and (at start (raw ?i)) (at start (cutting_board_free)))\\n    :effect (and (at start (not (raw ?i))) (at start (not (cutting_board_free))) (at end (cut ?i)) (at end (stackable ?i)) (at end (cutting_board_free))))\\n  (:durative-action stack_bun_bot\\n    :parameters () :duration (= ?duration 1)\\n    :condition (and (at start (stackable bun_bot)))\\n    :effect (and (at start (not (stackable bun_bot))) (at end (stacked bun_bot))))\\n  (:durative-action stack_patty\\n    :parameters () :duration (= ?duration 1)\\n    :condition (and (at start (stackable patty)) (at start (stacked bun_bot)))\\n    :effect (and (at start (not (stackable patty))) (at end (stacked patty))))\\n  (:durative-action stack_lettuce\\n    :parameters () :duration (= ?duration 1)\\n    :condition (and (at start (stackable lettuce)) (at start (stacked patty)))\\n    :effect (and (at start (not (stackable lettuce))) (at end (stacked lettuce))))\\n  (:durative-action stack_bun_top\\n    :parameters () :duration (= ?duration 1)\\n    :condition (and (at start (stackable bun_top)) (at start (stacked lettuce)))\\n    :effect (and (at start (not (stackable bun_top))) (at end (stacked bun_top))))\\n)",
 "problem_pddl": "(define (problem burger)\\n  (:domain cooking)\\n  (:objects patty lettuce bun_bot bun_top - item)\\n  (:init (raw patty) (raw lettuce) (stackable bun_bot) (ready bun_bot) (stackable bun_top) (ready bun_top) (grill_free) (cutting_board_free))\\n  (:goal (and (grilled patty) (cut lettuce) (stacked bun_bot) (stacked patty) (stacked lettuce) (stacked bun_top))))"}
"""

USER_TEMPLATE = """\
Translate the following cooking task into PDDL 2.1.

{nl}

IMPORTANT — use these EXACT item names (with underscores, no spaces) in all \
PDDL identifiers (action names, predicates, objects):
{item_names}

If the task lists robots, use these EXACT robot names in all PDDL identifiers \
and action parameters:
{robot_names}

CRITICAL interface constraints:
- Allowed base actions are ONLY: grill, cut, fry, boil, toast, marinate, mash, stack.
- Do NOT create action names like grill_raw, fry_raw, grill_generic, fry_generic, \
  prepare, cook, assemble, or place.
- Item-specific action names, if needed, must be exactly <base_action>_<exact_item_name>.
  Examples: fry_potato1, grill_patty2, marinate_chicken3, stack_bun_top.
- If robots are listed, executable actions must carry the robot argument in the \
  final solver plan. Generic actions should therefore use (?r - robot ?i - item), \
  and item-specific grounded actions should use (?r - robot).
- Do not shorten item names. If the item is patty1, use patty1 everywhere, never patty.
- NEVER insert a new underscore before numeric suffixes. For example:
  cassava03 is valid, cassava_03 is invalid.
  patty01 is valid, patty_01 is invalid.
  tempeh12 is valid, tempeh_12 is invalid.
- If the task has Temporal Constraints with "wait at least W seconds", encode \
  them explicitly using planner-only wait_* durative actions plus completion/lag \
  predicates so the actual executable action starts late enough.

Output JSON with keys "domain_pddl" and "problem_pddl".
"""

SYNTAX_REPAIR_TEMPLATE = """\
Your previous PDDL failed in OPTIC.

Natural-language task:
{nl}

Exact item names you MUST preserve:
{item_names}

Exact robot names you MUST preserve:
{robot_names}

Previous domain PDDL:
{domain_pddl}

Previous problem PDDL:
{problem_pddl}

OPTIC error:
{solver_error}

Repair instructions:
- Fix all syntax, typing, and action-schema issues.
- Preserve the same task semantics and item/robot names.
- The allowed item names are EXACTLY the task item names. Never rename `foo03` to `foo_03`.
- Never insert underscores before numeric suffixes, and never remove existing underscores like `bun_bot`.
- If a grounded item-specific action uses a robot parameter, every effect and condition must use the declared parameter variables correctly.
- Never use bare `i` when you mean `?i`.
- If a predicate/effect is item-specific, use either the exact grounded object consistently or a declared variable consistently.
- Return ONLY valid JSON with keys "domain_pddl" and "problem_pddl".
"""

EVAL_REPAIR_TEMPLATE = """\
Your previous PDDL was solvable, but the resulting plan failed execution.

Natural-language task:
{nl}

Exact item names you MUST preserve:
{item_names}

Exact robot names you MUST preserve:
{robot_names}

Previous domain PDDL:
{domain_pddl}

Previous problem PDDL:
{problem_pddl}

Solver plan:
{solver_plan}

Execution error:
{eval_error}

Repair instructions:
- Fix the PDDL semantics so OPTIC cannot produce this invalid plan.
- Pay special attention to item-specific prerequisites, robot usage, station capacity, and temporal wait constraints.
- If a temporal lag applies to a specific action-instance, make sure the completion predicate and wait action are tied to that exact instance, not a generic action.
- Preserve the exact task item names. Never rename `foo03` to `foo_03`, and never change `bun_bot`.
- Return ONLY valid JSON with keys "domain_pddl" and "problem_pddl".
"""


def _format_robot_names(robots: list[str]) -> str:
    if not robots:
        return "- <no robots listed in this task>"
    return "\n".join(f"- {name}" for name in robots)


def _build_user_prompt(nl: str, item_names: list[str], robots: list[str]) -> str:
    return USER_TEMPLATE.format(
        nl=nl,
        item_names="\n".join(f"- {n}" for n in item_names),
        robot_names=_format_robot_names(robots),
    )


def _inject_domain_constants(domain_pddl: str, task_dict: dict) -> str:
    """Add domain-level constants for task items/robots if missing.

    LLM outputs sometimes reference problem objects directly inside domain action
    schemas, e.g. ``(raw patty01)`` in a durative action body. OPTIC's type
    checker rejects those unless the symbols are declared as domain constants.
    """
    if "(:constants" in domain_pddl:
        return domain_pddl

    items = list(task_dict.get("items", {}).keys())
    robots = list(task_dict.get("robots", []))
    lines = []
    if items:
        lines.append("    " + " ".join(items) + " - item")
    if robots:
        lines.append("    " + " ".join(robots) + " - robot")
    if not lines:
        return domain_pddl

    constants_block = "  (:constants\n" + "\n".join(lines) + "\n  )\n"
    type_match = re.search(r"(^\s*\(:types\b[^\)]*\)\s*$)", domain_pddl, flags=re.MULTILINE)
    if type_match:
        insert_at = type_match.end()
        return domain_pddl[:insert_at] + "\n" + constants_block + domain_pddl[insert_at:]

    req_match = re.search(r"(^\s*\(:requirements\b[^\)]*\)\s*$)", domain_pddl, flags=re.MULTILINE)
    if req_match:
        insert_at = req_match.end()
        return domain_pddl[:insert_at] + "\n" + constants_block + domain_pddl[insert_at:]

    return domain_pddl


def _strip_problem_redeclared_objects(problem_pddl: str, task_dict: dict) -> str:
    """Remove problem-level object declarations that are duplicated as domain constants.

    Once task items/robots are injected as domain constants, OPTIC may reject
    the same symbols when they are also listed inside the problem's :objects
    block. We therefore keep them in the domain and drop the duplicate
    declarations from the problem file.
    """
    match = re.search(r"\(\:objects\b(.*?)\)\s*", problem_pddl, flags=re.S)
    if not match:
        return problem_pddl

    blocked = set(task_dict.get("items", {}).keys()) | set(task_dict.get("robots", []))
    content = match.group(1)
    kept_lines: list[str] = []
    removed_any = False

    for raw_line in content.splitlines():
        line = raw_line.rstrip()
        stripped = line.strip()
        if not stripped:
            continue
        if stripped.startswith(";"):
            kept_lines.append(raw_line)
            continue
        if "-" not in stripped:
            tokens = [tok for tok in stripped.split() if tok not in blocked]
            removed_any = removed_any or len(tokens) != len(stripped.split())
            if tokens:
                indent = re.match(r"^\s*", raw_line).group(0)
                kept_lines.append(indent + " ".join(tokens))
            continue

        left, right = stripped.split("-", 1)
        names = [tok for tok in left.split() if tok]
        kept_names = [tok for tok in names if tok not in blocked]
        removed_any = removed_any or len(kept_names) != len(names)
        if kept_names:
            indent = re.match(r"^\s*", raw_line).group(0)
            kept_lines.append(f"{indent}{' '.join(kept_names)} - {right.strip()}")

    if not removed_any:
        return problem_pddl

    if kept_lines:
        replacement = "(:objects\n" + "\n".join(kept_lines) + "\n  )\n"
    else:
        replacement = ""
    return problem_pddl[:match.start()] + replacement + problem_pddl[match.end():]


def _variant_name_forms(name: str) -> set[str]:
    variants = set()
    m = re.match(r"^(.*?)(\d+)$", name)
    if m:
        variants.add(f"{m.group(1)}_{m.group(2)}")
    return variants


def _validate_exact_names(domain_pddl: str, problem_pddl: str, task_dict: dict) -> str | None:
    """Reject PDDL that mutates exact item/robot names.

    This is intentionally a validator, not an aligner: we do not rewrite the
    output. We simply reject suspicious naming drift so the caller can retry.
    """
    blob = f"{domain_pddl}\n{problem_pddl}"
    names = list(task_dict.get("items", {}).keys()) + list(task_dict.get("robots", []))
    for name in names:
        for variant in _variant_name_forms(name):
            if variant in blob:
                return (
                    f"Invalid renamed symbol '{variant}'. Use the exact task name "
                    f"'{name}' verbatim; do not insert underscores before numeric suffixes."
                )
    return None


def _parse_pddl_json(text: str) -> tuple[str, str] | None:
    text = text.strip()
    if text.startswith("```"):
        text = text.split("```")[1]
        if text.startswith("json"):
            text = text[4:]
    try:
        parsed = json.loads(text.strip())
    except Exception:
        return None
    domain = parsed.get("domain_pddl", "")
    problem = parsed.get("problem_pddl", "")
    if domain and problem:
        return domain, problem
    return None


# ── LLM call + parse ──────────────────────────────────────────────────────────

def _call_llm(
    llm,
    task_dict: dict,
    nl: str,
    item_names: list[str],
    robots: list[str],
    max_retries: int = 3,
) -> tuple[str, str] | None:
    """Call LLM and parse domain + problem PDDL. Returns (domain, problem) or None."""
    messages = [
        {"role": "system", "content": SYSTEM_PROMPT},
        {"role": "user",   "content": _build_user_prompt(nl, item_names, robots)},
    ]

    for attempt in range(max_retries):
        try:
            response = llm.chat(messages)
            text = response if isinstance(response, str) else response.content
            # Strip markdown fences if present
            text = text.strip()
            if text.startswith("```"):
                text = text.split("```")[1]
                if text.startswith("json"):
                    text = text[4:]
            parsed = json.loads(text.strip())
            domain  = parsed.get("domain_pddl", "")
            problem = parsed.get("problem_pddl", "")
            if domain and problem:
                name_error = _validate_exact_names(domain, problem, task_dict)
                if name_error:
                    continue
                return domain, problem
        except Exception as e:
            if attempt == max_retries - 1:
                return None
    return None


def _repair_pddl(
    llm,
    task_dict: dict,
    nl: str,
    domain_pddl: str,
    problem_pddl: str,
    *,
    solver_error: str | None = None,
    eval_error: str | None = None,
    solver_plan: str | None = None,
    max_retries: int = 2,
) -> tuple[str, str] | None:
    extra_warning = ""
    for attempt in range(max_retries):
        if solver_error:
            prompt = SYNTAX_REPAIR_TEMPLATE.format(
                nl=nl,
                item_names="\n".join(f"- {n}" for n in task_dict.get("items", {}).keys()),
                robot_names=_format_robot_names(list(task_dict.get("robots", []))),
                domain_pddl=domain_pddl,
                problem_pddl=problem_pddl,
                solver_error=_truncate_solver_error(solver_error),
            )
        elif eval_error:
            prompt = EVAL_REPAIR_TEMPLATE.format(
                nl=nl,
                item_names="\n".join(f"- {n}" for n in task_dict.get("items", {}).keys()),
                robot_names=_format_robot_names(list(task_dict.get("robots", []))),
                domain_pddl=domain_pddl,
                problem_pddl=problem_pddl,
                solver_plan=solver_plan or "",
                eval_error=eval_error,
            )
        else:
            return None

        if extra_warning:
            prompt += "\n\nAdditional validation failure from the previous repair attempt:\n" + extra_warning

        response = llm.chat([
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user", "content": prompt},
        ])
        text = response if isinstance(response, str) else response.content
        parsed = _parse_pddl_json(text or "")
        if parsed is None:
            continue
        d, p = parsed
        name_error = _validate_exact_names(d, p, task_dict)
        if name_error:
            extra_warning = name_error
            continue
        d = _inject_domain_constants(d, task_dict)
        p = _strip_problem_redeclared_objects(p, task_dict)
        return d, p
    return None


# ── Pipeline ──────────────────────────────────────────────────────────────────

def run_task(task: Task, task_dict: dict, llm, solver_timeout: float) -> dict:
    nl = task_to_nl(task_dict)

    result = {
        "id":                  task.id,
        "difficulty":          task_dict.get("difficulty"),
        "speedup_ratio":       task_dict.get("speedup_ratio"),
        "optimal_makespan":    task.optimal_makespan,
        "sequential_makespan": task.sequential_makespan,
        "nl":                  nl,
        "domain_pddl":         None,
        "problem_pddl":        None,
        "solver_plan":         None,
        "error_type":          None,
        "error":               "",
        "success":             False,
        "makespan":            None,
        "makespan_ratio":      None,
    }

    # Step 1: LLM → PDDL
    pddl = _call_llm(llm, task_dict, nl, list(task_dict["items"].keys()), list(task_dict.get("robots", [])))
    if pddl is None:
        result["error_type"] = "llm_error"
        result["error"] = "LLM failed to return valid JSON"
        return result

    domain_pddl, problem_pddl = pddl
    domain_pddl = _inject_domain_constants(domain_pddl, task_dict)
    problem_pddl = _strip_problem_redeclared_objects(problem_pddl, task_dict)
    result["domain_pddl"]  = domain_pddl
    result["problem_pddl"] = problem_pddl

    # Step 2: OPTIC → plan
    solver_result: SolverResult = solve(
        domain_pddl, problem_pddl,
        solver="optic",
        timeout=solver_timeout,
        max_retries=2,
    )

    if solver_result is None or solver_result.error:
        result["error_type"] = "solver_error"
        result["error"] = solver_result.error if solver_result else "solver returned None"
        return result

    # Reconstruct plan text in OPTIC format for the engine
    plan_lines = [
        f"{t:.3f}: ({action})  [{dur:.3f}]"
        for t, action, dur in solver_result.plan
    ]
    plan_text = "\n".join(plan_lines)
    result["solver_plan"] = plan_text

    # Step 3: Engine evaluation
    eval_result = evaluate_from_text(plan_text, task)

    result["success"]        = eval_result.success
    result["makespan"]       = eval_result.makespan
    result["makespan_ratio"] = round(eval_result.makespan_ratio, 4)
    if not eval_result.success:
        result["error_type"] = "eval_error"
        result["error"]      = eval_result.error

    return result


def run(model_name: str, out_dir: str, task_dir: str,
        solver_timeout: float, max_tasks: int | None,
        num_workers: int = 8, batch: int = 8, implicit: bool = False,
        repair_rounds: int = 1, repair_workers: int = 8,
        include_tags: set[str] | None = None,
        exclude_tags: set[str] | None = None):

    out_path = Path(out_dir)
    out_path.mkdir(parents=True, exist_ok=True)

    # Load tasks
    task_dicts = [
        json.loads(p.read_text())
        for p in sorted(Path(task_dir).glob("*.json"))
    ]
    if include_tags or exclude_tags:
        task_dicts = [
            td for td in task_dicts
            if tag_filter_match(td, include_tags or set(), exclude_tags or set())
        ]
    if max_tasks:
        task_dicts = task_dicts[:max_tasks]

    n = len(task_dicts)
    llm = build_llm_client(
        model_name=model_name,
        temperature=0.0,
        max_tokens=4096,
        num_workers=num_workers,
    )
    repair_llm = build_llm_client(
        model_name=model_name,
        temperature=0.0,
        max_tokens=4096,
        num_workers=repair_workers,
    ) if repair_rounds > 0 else None

    # ── Stage 1: LLM → PDDL (batched) ────────────────────────────────────────
    print(f"Stage 1/3  LLM → PDDL  ({n} tasks, {num_workers} workers) …")
    nls = [task_to_nl(td, implicit=implicit) for td in task_dicts]
    messages_batch = [
        [
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user",   "content": _build_user_prompt(
                nl,
                list(td["items"].keys()),
                list(td.get("robots", [])),
            )},
        ]
        for nl, td in zip(nls, task_dicts)
    ]
    raw_responses = llm.batch_chat(messages_batch)

    pddl_results: list[tuple[str, str] | None] = []
    for resp in raw_responses:
        text = resp if isinstance(resp, str) else (resp.content if resp else "")
        text = text.strip()
        if text.startswith("```"):
            text = text.split("```")[1]
            if text.startswith("json"):
                text = text[4:]
        parsed = _parse_pddl_json(text or "")
        if parsed is None:
            pddl_results.append(None)
        else:
            d, p = parsed
            td = task_dicts[len(pddl_results)]
            name_error = _validate_exact_names(d, p, td)
            if name_error:
                pddl_results.append(None)
            else:
                d = _inject_domain_constants(d, td)
                p = _strip_problem_redeclared_objects(p, td)
                pddl_results.append((d, p))

    # ── Stage 2: batch_solve (OPTIC) ──────────────────────────────────────────
    print(f"Stage 2/3  OPTIC solver ({batch} parallel) …")
    valid_indices = [i for i, p in enumerate(pddl_results) if p is not None]
    solver_problems = [pddl_results[i] for i in valid_indices]

    solver_outputs: list[SolverResult | None] = [None] * n
    if solver_problems:
        solved = batch_solve(
            solver_problems,
            num_workers=batch,
            timeout=solver_timeout,
            max_retries=2,
            solver="optic",
            desc="OPTIC",
        )
        for idx, sr in zip(valid_indices, solved):
            solver_outputs[idx] = sr

    # ── Stage 3: engine evaluation ────────────────────────────────────────────
    print(f"Stage 3/3  Engine evaluation …\n")
    jsonl_path = out_path / "full_results.jsonl"
    jsonl_path.unlink(missing_ok=True)
    results = []

    for i, td in enumerate(task_dicts):
        task = Task.from_dict(td)
        pddl  = pddl_results[i]
        sr    = solver_outputs[i]

        r = {
            "id":                  task.id,
            "difficulty":          td.get("difficulty"),
            "speedup_ratio":       td.get("speedup_ratio"),
            "optimal_makespan":    task.optimal_makespan,
            "sequential_makespan": task.sequential_makespan,
            "nl":                  nls[i],
            "domain_pddl":         pddl[0] if pddl else None,
            "problem_pddl":        pddl[1] if pddl else None,
            "solver_plan":         None,
            "error_type":          None,
            "error":               "",
            "success":             False,
            "makespan":            None,
            "makespan_ratio":      None,
        }

        if pddl is None:
            r["error_type"] = "llm_error"
            r["error"]      = "LLM failed to return valid JSON"
        elif sr is None or sr.error:
            r["error_type"] = "solver_error"
            r["error"]      = sr.error if sr else "solver returned None"
        else:
            plan_lines = [f"{t:.3f}: ({a})  [{d:.3f}]" for t, a, d in sr.plan]
            plan_text  = "\n".join(plan_lines)
            r["solver_plan"] = plan_text
            eval_result = evaluate_from_text(plan_text, task)
            r["success"]        = eval_result.success
            r["makespan"]       = eval_result.makespan
            r["makespan_ratio"] = round(eval_result.makespan_ratio, 4)
            if not eval_result.success:
                r["error_type"] = "eval_error"
                r["error"]      = eval_result.error

        status = "✓" if r["success"] else f"✗ ({r['error_type']})"
        ratio  = f"ratio={r['makespan_ratio']:.3f}" if r["makespan_ratio"] else ""
        print(f"  [{td['difficulty']:6s}] {task.id} ... {status}  {ratio}")

        results.append(r)
        with open(jsonl_path, "a") as f:
            f.write(json.dumps(r) + "\n")

    # ── Stage 4: targeted repair loop for solver/eval failures ──────────────
    if repair_rounds > 0:
        print(
            f"\nStage 4/4  Repair loop ({repair_rounds} round{'s' if repair_rounds != 1 else ''}, "
            f"{repair_workers} workers) …"
        )
    for repair_round in range(repair_rounds):
        changed = False
        candidates = [
            (i, r) for i, r in enumerate(results)
            if (not r["success"])
            and r["error_type"] in {"solver_error", "eval_error"}
            and r.get("domain_pddl")
            and r.get("problem_pddl")
        ]
        if not candidates:
            break

        def _repair_candidate(i: int, r: dict) -> tuple[int, dict] | None:
            td = task_dicts[i]
            task = Task.from_dict(td)
            repaired = _repair_pddl(
                repair_llm,
                td,
                nls[i],
                r["domain_pddl"],
                r["problem_pddl"],
                solver_error=r["error"] if r["error_type"] == "solver_error" else None,
                eval_error=r["error"] if r["error_type"] == "eval_error" else None,
                solver_plan=r.get("solver_plan"),
            )
            if repaired is None:
                return None

            domain_pddl, problem_pddl = repaired
            sr = solve(
                domain_pddl,
                problem_pddl,
                solver="optic",
                timeout=solver_timeout,
                max_retries=2,
            )

            new_r = dict(r)
            new_r["domain_pddl"] = domain_pddl
            new_r["problem_pddl"] = problem_pddl
            new_r["solver_plan"] = None
            new_r["success"] = False
            new_r["makespan"] = None
            new_r["makespan_ratio"] = None

            if sr is None or sr.error:
                new_r["error_type"] = "solver_error"
                new_r["error"] = sr.error if sr else "solver returned None"
            else:
                plan_lines = [f"{t:.3f}: ({a})  [{d:.3f}]" for t, a, d in sr.plan]
                plan_text = "\n".join(plan_lines)
                new_r["solver_plan"] = plan_text
                eval_result = evaluate_from_text(plan_text, task)
                new_r["success"] = eval_result.success
                new_r["makespan"] = eval_result.makespan
                new_r["makespan_ratio"] = round(eval_result.makespan_ratio, 4)
                if not eval_result.success:
                    new_r["error_type"] = "eval_error"
                    new_r["error"] = eval_result.error
                else:
                    new_r["error_type"] = None
                    new_r["error"] = ""
            return i, new_r

        progress = tqdm(total=len(candidates), desc=f"Repair {repair_round + 1}/{repair_rounds}", unit="task")
        with ThreadPoolExecutor(max_workers=repair_workers) as executor:
            future_map = {
                executor.submit(_repair_candidate, i, r): (i, r["id"], r["error_type"])
                for i, r in candidates
            }
            for future in as_completed(future_map):
                i, task_id, error_type = future_map[future]
                progress.set_postfix_str(f"{task_id} [{error_type}]")
                try:
                    repaired_result = future.result()
                except Exception as e:
                    tqdm.write(f"  [repair {repair_round + 1}] {task_id} ... exception: {e}")
                    progress.update(1)
                    continue
                if repaired_result is None:
                    progress.update(1)
                    continue

                idx, new_r = repaired_result
                old_r = results[idx]
                if (
                    new_r["success"] and not old_r["success"]
                ) or (
                    new_r["error_type"] != old_r["error_type"] or new_r["error"] != old_r["error"]
                ):
                    changed = True
                    results[idx] = new_r
                    status = "✓" if new_r["success"] else f"✗ ({new_r['error_type']})"
                    tqdm.write(f"  [repair {repair_round + 1}] {task_id} ... {status}")
                progress.update(1)
        progress.close()
        if not changed:
            break

    # Rewrite JSONL with repaired results if needed.
    jsonl_path.unlink(missing_ok=True)
    with open(jsonl_path, "a") as f:
        for r in results:
            f.write(json.dumps(r) + "\n")

    # Summary
    n = len(results)
    n_success = sum(1 for r in results if r["success"])
    ratios = [
        r["makespan_ratio"]
        for r in results
        if r["success"] and r["makespan_ratio"] is not None
    ]
    avg_ratio = sum(ratios) / len(ratios) if ratios else 0.0

    summary = {
        "model":            model_name,
        "n_tasks":          n,
        "n_success":        n_success,
        "success_rate":     round(n_success / n, 4) if n else 0,
        "avg_makespan_ratio": round(avg_ratio, 4),
        "n_llm_error":      sum(1 for r in results if r["error_type"] == "llm_error"),
        "n_solver_error":   sum(1 for r in results if r["error_type"] == "solver_error"),
        "n_eval_error":     sum(1 for r in results if r["error_type"] == "eval_error"),
        "by_tag": summarize_by_tag(task_dicts, results),
    }
    (out_path / "summary.json").write_text(json.dumps(summary, indent=2))

    print(f"\n{'='*50}")
    print(f"Success rate:       {n_success}/{n} ({summary['success_rate']:.1%})")
    print(f"Avg makespan ratio: {avg_ratio:.3f}  (1.000 = optimal)")
    print(f"By tag:             {summary['by_tag']}")
    print(f"Results saved →     {out_path}/")


# ── CLI ───────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--model",       required=True, help="e.g. gemini-3-flash, openai/gpt-5-mini")
    parser.add_argument("--out",         default="results/robo_async/formalizer/{model}/{mode}")
    parser.add_argument("--tasks",       default="data/robo_async/tasks")
    parser.add_argument("--timeout",     type=float, default=120.0)
    parser.add_argument("--max",         type=int,   default=None, help="limit number of tasks (for testing)")
    parser.add_argument("--num-workers", type=int,   default=8,    help="parallel LLM workers (batch_chat)")
    parser.add_argument("--batch",       type=int,   default=8,    help="parallel OPTIC solver workers")
    parser.add_argument("--implicit",    action="store_true", help="hide dependency hints in NL (implicit mode)")
    parser.add_argument("--repair-rounds", type=int, default=1, help="LLM repair rounds after solver/eval failures")
    parser.add_argument("--repair-workers", type=int, default=8, help="parallel workers for repair loop")
    parser.add_argument("--include-tags", default="", help="comma-separated challenge tags to include")
    parser.add_argument("--exclude-tags", default="", help="comma-separated challenge tags to exclude")
    args = parser.parse_args()

    mode = "implicit" if args.implicit else "explicit"
    out_dir = args.out.format(model=args.model.replace("/", "_"), mode=mode)
    print(f"Model:       {args.model}")
    print(f"Mode:        {mode}")
    print(f"Tasks:       {args.tasks}")
    print(f"Out:         {out_dir}")
    print(f"Timeout:     {args.timeout}s")
    print(f"LLM workers: {args.num_workers}")
    print(f"Batch:       {args.batch}")
    print(f"Repair:      {args.repair_rounds}")
    print(f"Repair jobs: {args.repair_workers}")
    if args.include_tags:
        print(f"Include tags:{args.include_tags}")
    if args.exclude_tags:
        print(f"Exclude tags:{args.exclude_tags}")
    print()

    run(
        model_name=args.model,
        out_dir=out_dir,
        task_dir=args.tasks,
        solver_timeout=args.timeout,
        max_tasks=args.max,
        num_workers=args.num_workers,
        batch=args.batch,
        implicit=args.implicit,
        repair_rounds=args.repair_rounds,
        repair_workers=args.repair_workers,
        include_tags=parse_tag_arg(args.include_tags),
        exclude_tags=parse_tag_arg(args.exclude_tags),
    )


if __name__ == "__main__":
    main()
