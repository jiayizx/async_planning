#!/usr/bin/env python3
"""Official audit for the GPT-5.6 Sol strong-model experiment (AsyncPlan-XXL).

Extends the same methodology as scripts/recompute_plan_accuracy.py (independent
re-derivation of plan_accuracy from raw plan/llm_response + gold graph, via the
still-committed check_plan_validity validator) to the GPT-5.6 Sol runs, and adds
a matching audit for the Planner "code execution" three-way failure
decomposition (format_fail / extraction_fail / arithmetic_fail / correct),
which has no prior official audit.

Coverage:
  - CP-SAT Formalizer:   12 sizes (N=5..100)
  - PDDL2.1 Formalizer:  12 sizes
  - Planner (code-exec):  12 sizes

Usage:
    python3 scripts/audit_strong_model.py
"""
from __future__ import annotations

import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

from src.evaluation.plan_validity import check_plan_validity  # noqa: E402
from src.method.nl_to_pddl import parse_pddl_response  # noqa: E402

SIZES = [5, 10, 15, 20, 30, 40, 50, 60, 70, 80, 90, 100]
DATA_TEMPLATE = "data/async_planning/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash.json"

CPSAT_DIR = "results/gen-data/cpsat_formalizer/openai_gpt-5.6-sol/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash"
PDDL_DIR = "results/gen-data/formalizer-rerun/formalizer/openai_gpt-5.6-sol/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash"
PLANNER_DIR = "results/gen-data-modified/baselines/openai_gpt-5.6-sol/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash/cot_structured"


def load_multi(path: Path) -> list[dict]:
    decoder = json.JSONDecoder()
    content = path.read_text(encoding="utf-8")
    idx, n = 0, len(content)
    recs = []
    while idx < n:
        while idx < n and content[idx] in " \n\t":
            idx += 1
        if idx >= n:
            break
        obj, end = decoder.raw_decode(content, idx)
        recs.append(obj)
        idx = end
    return recs


_GRAPH_CACHE: dict[int, dict[str, dict]] = {}


def graph_by_question(n_steps: int) -> dict[str, dict]:
    if n_steps not in _GRAPH_CACHE:
        data = json.loads((ROOT / DATA_TEMPLATE.format(n=n_steps)).read_text(encoding="utf-8"))
        _GRAPH_CACHE[n_steps] = {ex["question"]: ex["graph"] for ex in data}
    return _GRAPH_CACHE[n_steps]


def _cpsat_step_actions(question: str) -> list[str]:
    import re
    nums = [int(m.group(1)) for m in re.finditer(r"\bStep\s+(\d+)\b", question, flags=re.I)]
    n_steps = max(nums)
    return [f"step{k}" for k in range(1, n_steps + 1)]


def audit_solver_target(dir_template: str, step_actions_fn) -> dict:
    """CP-SAT / PDDL: recompute plan_accuracy, diff vs stored summary."""
    per_size = {}
    n_mismatch = 0
    for n in SIZES:
        base = ROOT / dir_template.format(n=n)
        jsonl_path = base / "full_results.jsonl"
        summ_path = base / "summary_results.json"
        if not jsonl_path.exists():
            continue
        records = load_multi(jsonl_path)
        graphs = graph_by_question(n)
        n_total = len(records)
        n_plan_correct = 0
        n_makespan_correct = 0
        for r in records:
            correct = bool(r.get("correct"))
            if correct:
                n_makespan_correct += 1
            plan = r.get("plan")
            graph = graphs.get(r.get("question"))
            if not (correct and plan and graph):
                continue
            if step_actions_fn is _cpsat_step_actions:
                step_actions = _cpsat_step_actions(r["question"])
            else:
                parsed = parse_pddl_response(r.get("llm_response"))
                step_actions = parsed[2] if parsed else None
            try:
                valid, _ = check_plan_validity(plan, graph, step_actions=step_actions)
            except Exception:
                valid = False
            if valid:
                n_plan_correct += 1

        recomputed_plan_acc = n_plan_correct / n_total if n_total else 0.0
        recomputed_makespan_acc = n_makespan_correct / n_total if n_total else 0.0

        existing = json.loads(summ_path.read_text()) if summ_path.exists() else {}
        exist_makespan_acc = existing.get("accuracy")
        match = exist_makespan_acc is not None and abs(exist_makespan_acc - recomputed_makespan_acc) < 1e-6
        if not match:
            n_mismatch += 1
        per_size[n] = {
            "n_total": n_total,
            "recomputed_plan_accuracy": round(recomputed_plan_acc, 4),
            "recomputed_makespan_accuracy": round(recomputed_makespan_acc, 4),
            "existing_accuracy_field": exist_makespan_acc,
            "makespan_match": match,
        }
    return {"per_size": per_size, "n_mismatch": n_mismatch}


def critical_path_makespan(actions, dependencies):
    if not actions:
        return None
    dur = {}
    for a in actions:
        try:
            dur[a["id"]] = int(round(float(a["duration"])))
        except (KeyError, TypeError, ValueError):
            return None
    pred = {aid: [] for aid in dur}
    for d in dependencies or []:
        before, after = d.get("before"), d.get("after")
        if before not in dur or after not in dur:
            continue
        pred[after].append(before)
    succ = {aid: [] for aid in dur}
    for aid, ps in pred.items():
        for p in ps:
            succ[p].append(aid)
    indeg = {aid: len(pred[aid]) for aid in dur}
    order = [aid for aid in dur if indeg[aid] == 0]
    finish = {}
    i = 0
    while i < len(order):
        u = order[i]
        i += 1
        finish[u] = max((finish[p] for p in pred[u]), default=0) + dur[u]
        for v in succ[u]:
            indeg[v] -= 1
            if indeg[v] == 0:
                order.append(v)
    if len(finish) != len(dur):
        return None
    return max(finish.values())


def audit_planner_code_exec() -> dict:
    per_size = {}
    for n in SIZES:
        base = ROOT / PLANNER_DIR.format(n=n)
        jsonl_path = base / "full_results.jsonl"
        summ_path = base / "summary_results.json"
        if not jsonl_path.exists():
            continue
        records = load_multi(jsonl_path)
        n_total = len(records)
        n_format_fail = n_extraction_fail = n_arithmetic_fail = n_correct = 0
        for r in records:
            gold = r.get("gold_seconds")
            pj = r.get("planner_json")
            if not pj:
                n_format_fail += 1
                continue
            code_answer = critical_path_makespan(pj.get("actions", []), pj.get("dependencies", []))
            if code_answer is None or gold is None or code_answer != gold:
                n_extraction_fail += 1
                continue
            if r.get("correct"):
                n_correct += 1
            else:
                n_arithmetic_fail += 1

        existing = json.loads(summ_path.read_text()) if summ_path.exists() else {}
        exist_acc = existing.get("accuracy")
        recomputed_llm_acc = n_correct / n_total if n_total else 0.0
        # sanity check: our recomputed "correct" pass-through must match the stored accuracy exactly
        match = exist_acc is not None and abs(exist_acc - recomputed_llm_acc) < 1e-6

        per_size[n] = {
            "n_total": n_total,
            "correct": round(recomputed_llm_acc, 4),
            "format_fail": round(n_format_fail / n_total, 4) if n_total else 0.0,
            "extraction_fail": round(n_extraction_fail / n_total, 4) if n_total else 0.0,
            "arithmetic_fail": round(n_arithmetic_fail / n_total, 4) if n_total else 0.0,
            "code_execution_accuracy": round((n_total - n_format_fail - n_extraction_fail) / n_total, 4) if n_total else 0.0,
            "existing_accuracy_field": exist_acc,
            "llm_acc_matches_stored": match,
        }
    return {"per_size": per_size}


def main() -> None:
    report = {}

    print("=== CP-SAT Formalizer (GPT-5.6 Sol) ===")
    cpsat = audit_solver_target(CPSAT_DIR, _cpsat_step_actions)
    report["cpsat"] = cpsat
    for n, v in cpsat["per_size"].items():
        print(f"  N={n:4d}: plan_acc={v['recomputed_plan_accuracy']:.2f}  "
              f"makespan_acc={v['recomputed_makespan_accuracy']:.2f}  "
              f"existing_accuracy={v['existing_accuracy_field']}  match={v['makespan_match']}")
    print(f"  mismatches: {cpsat['n_mismatch']}")

    print("\n=== PDDL2.1 Formalizer (GPT-5.6 Sol) ===")
    pddl = audit_solver_target(PDDL_DIR, None)
    report["pddl"] = pddl
    for n, v in pddl["per_size"].items():
        print(f"  N={n:4d}: plan_acc={v['recomputed_plan_accuracy']:.2f}  "
              f"makespan_acc={v['recomputed_makespan_accuracy']:.2f}  "
              f"existing_accuracy={v['existing_accuracy_field']}  match={v['makespan_match']}")
    print(f"  mismatches: {pddl['n_mismatch']}")

    print("\n=== Planner + code execution (GPT-5.6 Sol) ===")
    planner = audit_planner_code_exec()
    report["planner_code_exec"] = planner
    n_mismatch_planner = 0
    for n, v in planner["per_size"].items():
        if not v["llm_acc_matches_stored"]:
            n_mismatch_planner += 1
        print(f"  N={n:4d}: correct={v['correct']:.2f}  format_fail={v['format_fail']:.2f}  "
              f"extraction_fail={v['extraction_fail']:.2f}  arithmetic_fail={v['arithmetic_fail']:.2f}  "
              f"code_exec_acc={v['code_execution_accuracy']:.2f}  "
              f"stored_match={v['llm_acc_matches_stored']}")
    print(f"  mismatches (sanity check vs stored accuracy): {n_mismatch_planner}")

    out_path = ROOT / "results/gen-data/gpt5.6sol_audit.json"
    out_path.write_text(json.dumps(report, indent=2))
    print(f"\nSaved full audit to {out_path}")


if __name__ == "__main__":
    main()
