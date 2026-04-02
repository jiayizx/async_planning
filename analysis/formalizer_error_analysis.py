"""
Error analysis for LLM-as-Async-Formalizer (PDDL 2.1 temporal planning).

Classifies every formalizer result into a fine-grained error category
grounded in PDDL 2.1 semantics (Fox & Long, JAIR 2003), then produces:

  1. Console summary tables (overall, per-model, per-#steps)
  2. Stacked-bar chart: error distribution vs. #steps per model
  3. CSV export of per-record classifications

Error taxonomy
──────────────
  correct_valid_plan      Correct makespan AND topologically valid plan
  correct_invalid_plan    Correct makespan but plan violates dependency order
  ─── semantic errors ───
  semantic:wrong_makespan Plan found but computes wrong critical-path length
  ─── syntax / solver errors (PDDL 2.1 related) ───
  syntax:unsolvable_goal  Solver proves goal unreachable (missing effects in
                          durative-action definitions → PDDL 2.1 §3.2)
  syntax:pddl_structure   Domain/problem file has structural errors (bad
                          :requirements, type mismatches, etc.)
  syntax:solver_resource  Solver exceeds time/memory (combinatorial blowup
                          from large :durative-actions with many at-end effects)
  syntax:solver_infra     Solver container / infrastructure failure

Usage:
    python analysis/formalizer_error_analysis.py
    python analysis/formalizer_error_analysis.py --results-dir results/gen-data-modified/formalizer
    python analysis/formalizer_error_analysis.py --no-plot
    python analysis/formalizer_error_analysis.py --csv analysis/error_details.csv
"""
from __future__ import annotations

import argparse
import json
import re
from collections import Counter, defaultdict
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.ticker as mticker
import numpy as np
import pandas as pd

ROOT = Path(__file__).parent.parent
DEFAULT_RESULTS_DIR = ROOT / "results" / "gen-data-modified" / "formalizer"
DATA_DIR = ROOT / "data" / "async_planning"
OUTPUT_DIR = Path(__file__).parent / "figures"

NODE_SIZES = [5, 10, 15, 20, 30, 40, 50, 100]

# ── Colour scheme (colourblind-friendly, ordered bottom→top in stacked bar) ─
CATEGORY_META = [
    ("correct_valid_plan",      "#66C2A5", "Correct + valid plan"),
    ("correct_invalid_plan",    "#A6D854", "Correct + invalid plan"),
    ("semantic:wrong_makespan", "#FC8D62", "Wrong makespan"),
    ("syntax:unsolvable_goal",  "#8DA0CB", "Unsolvable goal"),
    ("syntax:pddl_structure",   "#E78AC3", "PDDL structure error"),
    ("syntax:solver_resource",  "#FFD92F", "Solver timeout / OOM"),
    ("syntax:solver_infra",     "#B3B3B3", "Solver infra error"),
]
CATEGORY_ORDER = [c for c, _, _ in CATEGORY_META]
CATEGORY_COLOR = {c: col for c, col, _ in CATEGORY_META}
CATEGORY_LABEL = {c: lab for c, _, lab in CATEGORY_META}


# ── Data loading ────────────────────────────────────────────────────────────

def _parse_concatenated_json(text: str) -> list[dict]:
    decoder = json.JSONDecoder()
    objects: list[dict] = []
    idx = 0
    text = text.strip()
    while idx < len(text):
        while idx < len(text) and text[idx].isspace():
            idx += 1
        if idx >= len(text):
            break
        obj, end_idx = decoder.raw_decode(text, idx)
        objects.append(obj)
        idx = end_idx
    return objects


def load_all_records(results_dir: Path) -> pd.DataFrame:
    rows: list[dict] = []
    for model_dir in sorted(results_dir.iterdir()):
        if not model_dir.is_dir():
            continue
        for tag_dir in sorted(model_dir.iterdir()):
            if not tag_dir.is_dir():
                continue
            f = tag_dir / "full_results.jsonl"
            if not f.exists():
                continue
            m = re.search(r"nodes(\d+)", tag_dir.name)
            if not m:
                continue
            n_steps = int(m.group(1))
            for r in _parse_concatenated_json(f.read_text()):
                rows.append({
                    "model": model_dir.name,
                    "n_steps": n_steps,
                    "correct": bool(r.get("correct", False)),
                    "plan_valid": r.get("plan_valid"),
                    "error_type": r.get("error_type", "") or "",
                    "error": str(r.get("error", "") or ""),
                    "pred_seconds": r.get("pred_seconds"),
                    "gold_seconds": r.get("gold_seconds"),
                    "has_durative": ":durative-action" in (r.get("domain_pddl") or ""),
                    "plan_len": len(r["plan"]) if r.get("plan") else 0,
                })
    return pd.DataFrame(rows)


# ── Error classification ────────────────────────────────────────────────────

def classify(row: pd.Series) -> str:
    """Map a single result record to one of the fine-grained error categories."""
    if row["correct"] and row["plan_valid"] is True:
        return "correct_valid_plan"
    if row["correct"] and row["plan_valid"] is not True:
        return "correct_invalid_plan"

    et = row["error_type"]
    err = row["error"]

    if et == "syntax_error":
        if "container creation failed" in err:
            return "syntax:solver_infra"
        if "Critical Errors" in err:
            return "syntax:pddl_structure"
        if "problem has been encountered" in err and "unsolvable" in err:
            return "syntax:unsolvable_goal"
        if "Number of literals" in err:
            return "syntax:solver_resource"
        return "syntax:pddl_structure"

    if et == "semantic_error":
        return "semantic:wrong_makespan"

    return "semantic:wrong_makespan"


# ── Console tables ──────────────────────────────────────────────────────────

def print_overall(df: pd.DataFrame) -> None:
    total = len(df)
    print("\n" + "=" * 72)
    print(f"Overall error distribution  (N={total})")
    print("=" * 72)
    counts = df["category"].value_counts()
    for cat in CATEGORY_ORDER:
        n = counts.get(cat, 0)
        pct = 100 * n / total if total else 0
        print(f"  {CATEGORY_LABEL[cat]:35s}  {n:>5}  ({pct:5.1f}%)")
    print("=" * 72)


def print_by_model(df: pd.DataFrame) -> None:
    models = sorted(df["model"].unique())
    print("\n" + "=" * 72)
    print("Error distribution by model")
    print("=" * 72)
    for model in models:
        sub = df[df["model"] == model]
        total = len(sub)
        counts = sub["category"].value_counts()
        print(f"\n  {model}  (N={total})")
        for cat in CATEGORY_ORDER:
            n = counts.get(cat, 0)
            pct = 100 * n / total if total else 0
            print(f"    {CATEGORY_LABEL[cat]:33s}  {n:>4}  ({pct:5.1f}%)")
    print("=" * 72)


def print_by_steps(df: pd.DataFrame) -> None:
    """Print a compact table: rows = #steps, columns = error categories."""
    steps = sorted(df["n_steps"].unique())
    col_w = 8
    header = f"{'#steps':>6}"
    for cat in CATEGORY_ORDER:
        short = CATEGORY_LABEL[cat][:col_w]
        header += f"  {short:>{col_w}}"
    header += f"  {'Total':>{col_w}}"

    print("\n" + "=" * len(header))
    print("Error distribution by #steps  (all models pooled)")
    print("=" * len(header))
    print(header)
    print("-" * len(header))

    for n in steps:
        sub = df[df["n_steps"] == n]
        total = len(sub)
        counts = sub["category"].value_counts()
        row = f"{n:>6}"
        for cat in CATEGORY_ORDER:
            cnt = counts.get(cat, 0)
            row += f"  {cnt:>{col_w}}"
        row += f"  {total:>{col_w}}"
        print(row)
    print("=" * len(header))


def print_semantic_detail(df: pd.DataFrame) -> None:
    """For wrong-makespan errors, show relative error magnitude."""
    sem = df[df["category"] == "semantic:wrong_makespan"].copy()
    if sem.empty:
        return
    sem["rel_error"] = (
        (sem["pred_seconds"].astype(float) - sem["gold_seconds"].astype(float))
        / sem["gold_seconds"].astype(float)
    )
    print("\n" + "=" * 60)
    print(f"Wrong-makespan detail  (N={len(sem)})")
    print("=" * 60)
    print(f"  Mean relative error : {sem['rel_error'].mean():+.3f}")
    print(f"  Median rel. error   : {sem['rel_error'].median():+.3f}")
    print(f"  Std dev rel. error  : {sem['rel_error'].std():.3f}")
    overestimate = (sem["rel_error"] > 0).sum()
    underestimate = (sem["rel_error"] < 0).sum()
    print(f"  Overestimates       : {overestimate}  ({100*overestimate/len(sem):.1f}%)")
    print(f"  Underestimates      : {underestimate}  ({100*underestimate/len(sem):.1f}%)")

    # Breakdown by model
    for model in sorted(sem["model"].unique()):
        msub = sem[sem["model"] == model]
        print(f"  {model:25s}: mean_rel_err={msub['rel_error'].mean():+.3f}  "
              f"n={len(msub)}")
    print("=" * 60)


# ── Plotting ────────────────────────────────────────────────────────────────

def plot_stacked_bars(df: pd.DataFrame, output_path: Path) -> None:
    """One subplot per model: stacked bar chart of error categories vs #steps."""
    models = sorted(df["model"].unique())
    n_models = len(models)
    fig, axes = plt.subplots(1, n_models, figsize=(5.5 * n_models, 5.5),
                             sharey=True, squeeze=False)
    axes = axes.flatten()

    steps = sorted(df["n_steps"].unique())
    x = np.arange(len(steps))
    bar_w = 0.6

    for ax, model in zip(axes, models):
        sub = df[df["model"] == model]
        bottoms = np.zeros(len(steps))

        for cat in CATEGORY_ORDER:
            heights = []
            for n in steps:
                total = len(sub[sub["n_steps"] == n])
                cnt = len(sub[(sub["n_steps"] == n) & (sub["category"] == cat)])
                heights.append(100 * cnt / total if total else 0)
            heights = np.array(heights)
            ax.bar(x, heights, bar_w, bottom=bottoms,
                   color=CATEGORY_COLOR[cat], label=CATEGORY_LABEL[cat],
                   edgecolor="white", linewidth=0.3)
            bottoms += heights

        ax.set_title(model, fontsize=12, fontweight="bold")
        ax.set_xticks(x)
        ax.set_xticklabels([str(s) for s in steps], fontsize=10)
        ax.set_xlabel("# Steps", fontsize=11)
        ax.yaxis.set_major_formatter(mticker.FuncFormatter(lambda y, _: f"{y:.0f}%"))
        ax.set_ylim(0, 105)
        ax.grid(axis="y", alpha=0.3)
        ax.spines["top"].set_visible(False)
        ax.spines["right"].set_visible(False)

        # Sample counts above each bar
        for i, n in enumerate(steps):
            cnt = len(sub[sub["n_steps"] == n])
            ax.text(i, 101, f"n={cnt}", ha="center", va="bottom",
                    fontsize=7, color="gray")

    axes[0].set_ylabel("Proportion (%)", fontsize=11)

    # Shared legend below
    handles, labels = axes[0].get_legend_handles_labels()
    fig.legend(handles, labels, loc="lower center",
               ncol=min(4, len(CATEGORY_ORDER)),
               fontsize=9, bbox_to_anchor=(0.5, -0.06),
               frameon=True, edgecolor="#cccccc")

    fig.suptitle("Formalizer+ Error Distribution (PDDL 2.1 Temporal Planning)",
                 fontsize=14, fontweight="bold", y=1.02)
    plt.tight_layout()

    output_path.parent.mkdir(parents=True, exist_ok=True)
    fig.savefig(output_path, dpi=180, bbox_inches="tight")
    print(f"\nSaved figure → {output_path}")
    plt.close()


def plot_error_rate_lines(df: pd.DataFrame, output_path: Path) -> None:
    """Line plot: overall error rate (1 - accuracy) vs #steps, one line per model."""
    models = sorted(df["model"].unique())
    palette = ["#e05252", "#2a9d8f", "#e8a838", "#5b8dd9"]
    markers = ["o", "s", "^", "D"]

    fig, ax = plt.subplots(figsize=(8, 5))
    steps = sorted(df["n_steps"].unique())

    for i, model in enumerate(models):
        sub = df[df["model"] == model]
        err_rates = []
        for n in steps:
            ns = sub[sub["n_steps"] == n]
            err_rates.append(100 * (1 - ns["correct"].mean()) if len(ns) else np.nan)
        ax.plot(steps, err_rates,
                marker=markers[i % len(markers)],
                color=palette[i % len(palette)],
                linewidth=2, markersize=7, label=model)

    ax.set_xlabel("# Steps", fontsize=12)
    ax.set_ylabel("Error Rate (%)", fontsize=12)
    ax.set_xticks(steps)
    ax.set_xticklabels([str(s) for s in steps])
    ax.set_ylim(-2, 105)
    ax.grid(True, alpha=0.3)
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)
    ax.legend(fontsize=10)
    ax.set_title("Formalizer+ Error Rate vs. Problem Size", fontsize=13, fontweight="bold")

    plt.tight_layout()
    output_path.parent.mkdir(parents=True, exist_ok=True)
    fig.savefig(output_path, dpi=180, bbox_inches="tight")
    print(f"Saved figure → {output_path}")
    plt.close()


# ── Entry point ─────────────────────────────────────────────────────────────

def main() -> None:
    parser = argparse.ArgumentParser(description="Formalizer error analysis")
    parser.add_argument("--results-dir", default=str(DEFAULT_RESULTS_DIR),
                        help="Root dir with model/tag subdirs")
    parser.add_argument("--no-plot", action="store_true")
    parser.add_argument("--csv", default=None,
                        help="Export per-record classifications to CSV")
    args = parser.parse_args()

    results_dir = Path(args.results_dir)
    if not results_dir.is_absolute():
        results_dir = ROOT / results_dir

    print(f"Loading from {results_dir} ...")
    df = load_all_records(results_dir)
    if df.empty:
        print("No records found.")
        return

    df["category"] = df.apply(classify, axis=1)
    print(f"Loaded {len(df)} records across {df['model'].nunique()} models, "
          f"{df['n_steps'].nunique()} step sizes")

    print_overall(df)
    print_by_model(df)
    print_by_steps(df)
    print_semantic_detail(df)

    if args.csv:
        csv_path = Path(args.csv)
        cols = ["model", "n_steps", "category", "correct", "plan_valid",
                "error_type", "pred_seconds", "gold_seconds", "plan_len"]
        df[cols].to_csv(csv_path, index=False)
        print(f"\nExported {len(df)} rows → {csv_path}")

    if not args.no_plot:
        plot_stacked_bars(df, OUTPUT_DIR / "formalizer_error_stacked.png")
        plot_error_rate_lines(df, OUTPUT_DIR / "formalizer_error_rate.png")


if __name__ == "__main__":
    main()
