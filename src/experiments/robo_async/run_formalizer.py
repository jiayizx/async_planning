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
import sys
import threading
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

from dotenv import load_dotenv
load_dotenv()

_ROOT = Path(__file__).resolve().parent.parent.parent.parent
if str(_ROOT) not in sys.path:
    sys.path.insert(0, str(_ROOT))

from src.experiments.utils import build_llm_client
from src.method.pddl_solver import solve, batch_solve, SolverResult
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
- Use item names EXACTLY as listed in the task. Never remove numeric suffixes, \
  never singularize/pluralize, never replace underscores with spaces, and never \
  shorten names such as patty1 to patty or portobello8 to portobello.
- In the final solver plan, every action must therefore normalize to one of:
  (grill ITEM), (cut ITEM), (fry ITEM), (boil ITEM), (toast ITEM), \
  (marinate ITEM), (mash ITEM), or (stack ITEM), with ITEM exactly from the task.

RULES:
1. Requirements: (:requirements :durative-actions :typing)
2. Types: (:types item)
3. Predicates: (raw ?i - item), (stackable ?i - item), (stacked ?i - item), \
   (ready ?i - item), one result predicate per processing action used in the task \
   (grilled, cut, fried, boiled, toasted, marinated, mashed), AND one <station>_free \
   predicate per station mentioned in the task \
   (e.g. grill_free, cutting_board_free, fryer_free, marinator_free).
4. Processing actions (grill / cut / fry / boil / toast / marinate / mash) are \
   parameterized (?i - item) by default. Each action consumes its input state and \
   produces its output state; the station is occupied at start and released at end:
   :condition (and (at start (<input_state> ?i)) (at start (<station>_free)))
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
   with :parameters () instead of one incorrect generic fry action. The action \
   name must be <allowed_base_action>_<exact_item_name>; never use names like \
   fry_raw, fry_cut, fry_generic, grill_raw, or grill_generic.
5. STACKING — one ground action per item in stack order:
   - Action name: stack_<item_name>, :parameters ()
   - :condition must include: (at start (stackable <item>))
   - If the item has a required goal state (e.g. grilled, cut, mashed), add: \
     (at start (<required_state> <item>))  — ensures it is fully processed before stacking.
   - If there is a previous item in the order, add: (at start (stacked <prev_item>))
   - :effect (and (at start (not (stackable <item>))) (at end (stacked <item>)))
6. (:init): raw items → (raw X); ready items → (ready X) (stackable X); \
   all stations start free → (grill_free) (cutting_board_free) etc.
7. Goal: (and <all required processed-state predicates> \
   <(stacked X) for every item in stack order>).
8. NO negative preconditions inside :condition. NO (or ...). NO (when ...).
9. Use EXACT item names from the task. Every object in (:objects), every object \
   in action names, and every object in predicates must be copied verbatim from \
   the provided item list.
10. Output ONLY valid JSON, no markdown fences:

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

CRITICAL interface constraints:
- Allowed base actions are ONLY: grill, cut, fry, boil, toast, marinate, mash, stack.
- Do NOT create action names like grill_raw, fry_raw, grill_generic, fry_generic, \
  prepare, cook, assemble, or place.
- Item-specific action names, if needed, must be exactly <base_action>_<exact_item_name>.
  Examples: fry_potato1, grill_patty2, marinate_chicken3, stack_bun_top.
- Do not shorten item names. If the item is patty1, use patty1 everywhere, never patty.

Output JSON with keys "domain_pddl" and "problem_pddl".
"""


# ── LLM call + parse ──────────────────────────────────────────────────────────

def _call_llm(llm, nl: str, item_names: list[str], max_retries: int = 3) -> tuple[str, str] | None:
    """Call LLM and parse domain + problem PDDL. Returns (domain, problem) or None."""
    messages = [
        {"role": "system", "content": SYSTEM_PROMPT},
        {"role": "user",   "content": USER_TEMPLATE.format(
            nl=nl,
            item_names="\n".join(f"- {n}" for n in item_names),
        )},
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
                return domain, problem
        except Exception as e:
            if attempt == max_retries - 1:
                return None
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
    pddl = _call_llm(llm, nl, list(task_dict["items"].keys()))
    if pddl is None:
        result["error_type"] = "llm_error"
        result["error"] = "LLM failed to return valid JSON"
        return result

    domain_pddl, problem_pddl = pddl
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
        num_workers: int = 8, batch: int = 8, implicit: bool = False):

    out_path = Path(out_dir)
    out_path.mkdir(parents=True, exist_ok=True)

    # Load tasks
    task_dicts = [
        json.loads(p.read_text())
        for p in sorted(Path(task_dir).glob("*.json"))
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

    # ── Stage 1: LLM → PDDL (batched) ────────────────────────────────────────
    print(f"Stage 1/3  LLM → PDDL  ({n} tasks, {num_workers} workers) …")
    nls = [task_to_nl(td, implicit=implicit) for td in task_dicts]
    messages_batch = [
        [
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user",   "content": USER_TEMPLATE.format(
                nl=nl,
                item_names="\n".join(f"- {n}" for n in td["items"].keys()),
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
        try:
            parsed = json.loads(text.strip())
            d, p = parsed.get("domain_pddl", ""), parsed.get("problem_pddl", "")
            pddl_results.append((d, p) if d and p else None)
        except Exception:
            pddl_results.append(None)

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
        "by_difficulty": {
            diff: {
                "n": sum(1 for r in results if r["difficulty"] == diff),
                "n_success": sum(1 for r in results if r["difficulty"] == diff and r["success"]),
            }
            for diff in ["easy", "medium", "hard"]
        },
    }
    (out_path / "summary.json").write_text(json.dumps(summary, indent=2))

    print(f"\n{'='*50}")
    print(f"Success rate:       {n_success}/{n} ({summary['success_rate']:.1%})")
    print(f"Avg makespan ratio: {avg_ratio:.3f}  (1.000 = optimal)")
    print(f"By difficulty:      {summary['by_difficulty']}")
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
    )


if __name__ == "__main__":
    main()
