#!/usr/bin/env python3
"""Official recompute of plan_accuracy / makespan_accuracy for the Table 16
(common-IR controlled analysis) pipelines on AsyncPlan-XXL.

Why this script exists
-----------------------
The scripts that originally produced results/gen-data/{cpsat_formalizer,
pddl_formalizer,common_ir_control} (and their `plan_accuracy` /
`makespan_accuracy` / `num_plan_correct` summary fields) are not recoverable
from git history: no commit of run_formalizer.py, run_cpsat_formalizer.py, or
run_common_ir_control.py ever produced that summary schema, yet the on-disk
summary_results.json files already contain it. This script independently
re-derives plan validity from the raw per-instance `plan` field (and, for the
PDDL Direct pipelines, the raw `llm_response`) stored in each full_results.jsonl,
using the still-committed `check_plan_validity` validator, so that every number
in Table 16 can be regenerated from source without depending on lost code.

Coverage: 4 rows (Direct 0-retry, Direct 3-retry [= main Table 7 pipeline],
NL IR, Gold IR) x 2 targets (CP-SAT, PDDL2.1) x 4 models x 5 sizes
(N in {10,30,50,70,100}) = 8 rows, 160 (model, size) cells total.

Usage:
    python3 scripts/recompute_plan_accuracy.py
"""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

from src.evaluation.plan_validity import check_plan_validity  # noqa: E402
from src.method.nl_to_pddl import parse_pddl_response  # noqa: E402

MODELS = {
    "Gemini": "openrouter_gemini-3-flash",
    "GPT-5-mini": "openai_gpt-5-mini",
    "DeepSeek": "deepseek_deepseek-v4-flash",
    "Qwen": "qwen3.6-35b-a3b",
}
SIZES = [10, 30, 50, 70, 100]
TABLE7_SIZES = [5, 10, 15, 20, 30, 40, 50, 60, 70, 80, 90, 100]
DATA_TEMPLATE = "data/async_planning/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash.json"


def load_jsonl_multi(path: Path) -> list[dict]:
    """Parse a file of concatenated pretty-printed JSON objects (not true JSONL)."""
    content = path.read_text(encoding="utf-8")
    decoder = json.JSONDecoder()
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
        path = ROOT / DATA_TEMPLATE.format(n=n_steps)
        data = json.loads(path.read_text(encoding="utf-8"))
        _GRAPH_CACHE[n_steps] = {ex["question"]: ex["graph"] for ex in data}
    return _GRAPH_CACHE[n_steps]


def infer_n_steps(question: str) -> int:
    nums = [int(m.group(1)) for m in re.finditer(r"\bStep\s+(\d+)\b", question, flags=re.I)]
    return max(nums)


def _judge(records: list[dict], graphs: dict[str, dict], step_actions_fn) -> tuple[int, int, int]:
    """Return (n_total, n_makespan_correct, n_plan_correct)."""
    n_total = len(records)
    n_makespan_correct = 0
    n_plan_correct = 0
    for r in records:
        correct = bool(r.get("correct"))
        if correct:
            n_makespan_correct += 1
        plan = r.get("plan")
        graph = graphs.get(r.get("question"))
        if not (correct and plan and graph):
            continue
        # step_actions may be None/empty (e.g. the LLM omitted the mapping,
        # or parsing failed) — pass it through as-is so check_plan_validity
        # falls back to its legacy step-object-number matching rather than
        # silently dropping the instance from the denominator.
        step_actions = step_actions_fn(r, graph)
        try:
            valid, _ = check_plan_validity(plan, graph, step_actions=step_actions)
        except Exception:
            valid = False
        if valid:
            n_plan_correct += 1
    return n_total, n_makespan_correct, n_plan_correct


def _ir_step_actions(r: dict, graph: dict) -> list[str] | None:
    """NL IR / Gold IR: compiled action ids are literally step1..stepN."""
    ir = r.get("ir")
    n_steps = len(ir["actions"]) if ir else infer_n_steps(r["question"])
    return [f"step{k}" for k in range(1, n_steps + 1)]


def _cpsat_direct_step_actions(r: dict, graph: dict) -> list[str] | None:
    """Direct CP-SAT: schema enforces action ids step1..stepN (see schedule_json)."""
    n_steps = infer_n_steps(r["question"])
    return [f"step{k}" for k in range(1, n_steps + 1)]


def _pddl_direct_step_actions(r: dict, graph: dict) -> list[str] | None:
    """Direct PDDL: LLM picks its own semantic action names; the step->action
    mapping was returned by the LLM as `step_actions` but never persisted to
    full_results.jsonl. Re-parse the saved raw `llm_response` with the same
    (still-committed) parser used at generation time to recover it."""
    parsed = parse_pddl_response(r.get("llm_response"))
    if parsed is None:
        return None
    _, _, step_actions = parsed
    return step_actions or None


# Table 16 (controlled analysis, N in {10,30,50,70,100}): 8 rows.
ROWS: list[tuple[str, str, str, object]] = [
    ("Direct (0-retry)", "cpsat",
     "results/gen-data/common_ir_control/{model}/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash/direct/cpsat",
     _cpsat_direct_step_actions),
    ("Direct (0-retry)", "pddl",
     "results/gen-data/common_ir_control/{model}/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash/direct/pddl",
     _pddl_direct_step_actions),
    ("Direct (3-retry)", "cpsat",
     "results/gen-data/cpsat_formalizer/{model}/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash",
     _cpsat_direct_step_actions),
    ("Direct (3-retry)", "pddl",
     "results/gen-data/pddl_formalizer/{model}/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash",
     _pddl_direct_step_actions),
    ("NL IR", "cpsat",
     "results/gen-data/common_ir_control/{model}/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash/nl/cpsat",
     _ir_step_actions),
    ("NL IR", "pddl",
     "results/gen-data/common_ir_control/{model}/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash/nl/pddl",
     _ir_step_actions),
    ("Gold IR", "cpsat",
     "results/gen-data/common_ir_control/{model}/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash/gold/cpsat",
     _ir_step_actions),
    ("Gold IR", "pddl",
     "results/gen-data/common_ir_control/{model}/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash/gold/pddl",
     _ir_step_actions),
]

# Table 7 (main headline pipelines, all 12 scales): 2 rows, reusing the same
# Direct step_actions recovery logic as the Table 16 "Direct (3-retry)" rows
# (which point at these exact same result directories).
ROWS_TABLE7: list[tuple[str, str, str, object]] = [
    ("Table 7: CP-SAT Formalizer", "cpsat",
     "results/gen-data/cpsat_formalizer/{model}/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash",
     _cpsat_direct_step_actions),
    ("Table 7: PDDL2.1 Formalizer", "pddl",
     "results/gen-data/pddl_formalizer/{model}/nodes{n}_n50_s42_nlrewrite_openrouter-gemini-3-flash",
     _pddl_direct_step_actions),
]


def existing_plan_accuracy(summary: dict) -> float | None:
    if "plan_accuracy" in summary and summary["plan_accuracy"] is not None:
        return summary["plan_accuracy"]
    if summary.get("num_plan_correct") is not None and summary.get("num_data_points"):
        return summary["num_plan_correct"] / summary["num_data_points"]
    return None


def existing_makespan_accuracy(summary: dict) -> float | None:
    if "makespan_accuracy" in summary and summary["makespan_accuracy"] is not None:
        return summary["makespan_accuracy"]
    if "accuracy" in summary and summary["accuracy"] is not None:
        return summary["accuracy"]
    return None


def run_audit(rows, sizes) -> tuple[dict, int, int, list[str]]:
    report: dict[str, dict] = {}
    n_cells = 0
    n_mismatch = 0
    mismatches: list[str] = []

    for row_label, target, dir_template, step_actions_fn in rows:
        key = f"{row_label} -> {target}"
        report[key] = {}
        for model_label, model_dir in MODELS.items():
            per_size: dict[int, dict] = {}
            for n in sizes:
                base = ROOT / dir_template.format(model=model_dir, n=n)
                jsonl_path = base / "full_results.jsonl"
                summ_path = base / "summary_results.json"
                if not jsonl_path.exists():
                    continue

                records = load_jsonl_multi(jsonl_path)
                graphs = graph_by_question(n)
                n_total, n_makespan_correct, n_plan_correct = _judge(records, graphs, step_actions_fn)

                recomputed_plan_acc = n_plan_correct / n_total if n_total else 0.0
                recomputed_makespan_acc = n_makespan_correct / n_total if n_total else 0.0

                existing = json.loads(summ_path.read_text()) if summ_path.exists() else {}
                exist_plan_acc = existing_plan_accuracy(existing)
                exist_makespan_acc = existing_makespan_accuracy(existing)

                plan_match = exist_plan_acc is not None and abs(exist_plan_acc - recomputed_plan_acc) < 1e-6
                makespan_match = (
                    exist_makespan_acc is not None
                    and abs(exist_makespan_acc - recomputed_makespan_acc) < 1e-6
                )

                n_cells += 1
                if not (plan_match and makespan_match):
                    n_mismatch += 1
                    mismatches.append(
                        f"{key} | {model_label} | N={n}: "
                        f"plan_acc recomputed={recomputed_plan_acc:.4f} existing={exist_plan_acc} (match={plan_match})  "
                        f"makespan_acc recomputed={recomputed_makespan_acc:.4f} existing={exist_makespan_acc} (match={makespan_match})"
                    )

                per_size[n] = {
                    "n_total": n_total,
                    "recomputed_plan_accuracy": round(recomputed_plan_acc, 4),
                    "existing_plan_accuracy": exist_plan_acc,
                    "plan_match": plan_match,
                    "recomputed_makespan_accuracy": round(recomputed_makespan_acc, 4),
                    "existing_makespan_accuracy": exist_makespan_acc,
                    "makespan_match": makespan_match,
                }
            report[key][model_label] = per_size

    return report, n_cells, n_mismatch, mismatches


def _print_result(label: str, n_cells: int, n_mismatch: int, mismatches: list[str]) -> None:
    print(f"\n=== {label}: audited {n_cells} (row, model, size) cells ===")
    print(f"Mismatches: {n_mismatch}")
    if mismatches:
        for line in mismatches:
            print(line)
    else:
        print("Full match: every recomputed plan_accuracy and makespan_accuracy")
        print("agrees exactly with the value stored in summary_results.json.")


def main() -> None:
    report16, n_cells16, n_mismatch16, mismatches16 = run_audit(ROWS, SIZES)
    out16 = ROOT / "results/gen-data/table16_plan_accuracy_audit.json"
    out16.write_text(json.dumps(report16, indent=2))
    _print_result("Table 16 (controlled analysis, 8 rows)", n_cells16, n_mismatch16, mismatches16)
    print(f"Saved to {out16}")

    report7, n_cells7, n_mismatch7, mismatches7 = run_audit(ROWS_TABLE7, TABLE7_SIZES)
    out7 = ROOT / "results/gen-data/table7_plan_accuracy_audit.json"
    out7.write_text(json.dumps(report7, indent=2))
    _print_result("Table 7 (main headline pipelines, 2 rows x 12 scales)", n_cells7, n_mismatch7, mismatches7)
    print(f"Saved to {out7}")

    total_cells = n_cells16 + n_cells7
    total_mismatch = n_mismatch16 + n_mismatch7
    print(f"\n=== GRAND TOTAL: {total_cells} cells audited, {total_mismatch} mismatches ===")


if __name__ == "__main__":
    main()
