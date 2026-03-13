"""
Line chart: accuracy vs. # steps on AsyncPlan-XL (gen-data-modified).
6 lines = 3 models × 2 methods (LLM-as-Planner / LLM-as-Async-Formalizer).
Solid lines = Formalizer, dashed lines = Planner.

Usage:
    python analysis/asyncplan_xl_line_plot.py

Output:
    analysis_results/asyncplan_xl_line.png
"""

import json
import re
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.lines as mlines
import numpy as np

# ── paths ──────────────────────────────────────────────────────────────────
ROOT       = Path(__file__).parent.parent / "results" / "gen-data-modified"
OUTPUT_DIR = Path(__file__).parent.parent / "analysis_results"
OUTPUT_DIR.mkdir(exist_ok=True)

# ── model config  (same ColorBrewer Set2 palette as asynchow_bar.png) ──────
MODELS = [
    ("gemini-3-flash",  "Gemini 3 Flash",   "#66C2A5"),   # Set2 teal
    ("openai_gpt-4.1",  "GPT-4.1",  "#8DA0CB"),   # Set2 periwinkle
    ("openai_gpt-5-mini","GPT-5-mini","#FC8D62"),   # Set2 salmon
]

NODES = [5, 10, 15, 20, 30, 40, 50, 100]

# ── data loading ───────────────────────────────────────────────────────────

def get_acc(method_dir: str, model_dir: str, n: int) -> float | None:
    pattern = f"nodes{n}_n50_s42_nlrewrite_gemini-3-flash"
    if method_dir == "baselines":
        p = ROOT / "baselines" / model_dir / pattern / "cot" / "summary_results.json"
    else:
        p = ROOT / "formalizer" / model_dir / pattern / "summary_results.json"
    if not p.exists():
        return None
    return json.loads(p.read_text())["accuracy"] * 100

# ── figure ─────────────────────────────────────────────────────────────────
fig, ax = plt.subplots(figsize=(8, 5.5))
fig.subplots_adjust(top=0.80)

MARKERS = ["o", "s", "^"]

for i, (model_dir, label, color) in enumerate(MODELS):
    marker = MARKERS[i]

    # ── Formalizer (solid) ──
    ys_f = [get_acc("formalizer", model_dir, n) for n in NODES]
    xs_f = [n for n, y in zip(NODES, ys_f) if y is not None]
    ys_f = [y for y in ys_f if y is not None]
    ax.plot(xs_f, ys_f,
            linestyle="-", marker=marker, color=color,
            linewidth=2.2, markersize=7, zorder=3)

    # ── Planner / CoT baseline (dashed, lighter) ──
    ys_b = [get_acc("baselines", model_dir, n) for n in NODES]
    xs_b = [n for n, y in zip(NODES, ys_b) if y is not None]
    ys_b = [y for y in ys_b if y is not None]
    ax.plot(xs_b, ys_b,
            linestyle="--", marker=marker, color=color,
            linewidth=1.8, markersize=6, alpha=0.65, zorder=3)

# ── axes formatting ────────────────────────────────────────────────────────
ax.set_xlabel("# Steps", fontsize=15)
ax.set_ylabel("Accuracy (%)", fontsize=15)
ax.set_xticks(NODES)
ax.set_xticklabels([str(n) for n in NODES], fontsize=13)
ax.tick_params(axis="y", labelsize=13)
ax.set_ylim(-2, 108)
ax.yaxis.grid(True, linestyle="--", alpha=0.45, zorder=0)
ax.set_axisbelow(True)
ax.spines["top"].set_visible(False)
ax.spines["right"].set_visible(False)
ax.set_title("AsyncPlan-XL", fontsize=16, fontweight="bold", pad=10)

# ── two-part legend above the plot ────────────────────────────────────────
# Part 1: model colors + markers
model_handles = [
    mlines.Line2D([], [], color=color, marker=MARKERS[i],
                  linewidth=2.0, markersize=7, label=label)
    for i, (_, label, color) in enumerate(MODELS)
]
# Part 2: method line styles (gray, neutral)
method_handles = [
    mlines.Line2D([], [], color="#888888", linestyle="-",
                  linewidth=2.2, markersize=0, label="LLM-as-Async-Formalizer"),
    mlines.Line2D([], [], color="#888888", linestyle="--",
                  linewidth=1.8, markersize=0, alpha=0.75, label="LLM-as-Planner"),
]

leg1 = fig.legend(handles=model_handles,
                  loc="upper center", ncol=len(MODELS),
                  bbox_to_anchor=(0.30, 1.0),
                  fontsize=12, framealpha=0.9, edgecolor="#cccccc",
                  columnspacing=1.0, handlelength=1.6,
                  title="Model", title_fontsize=11)
leg2 = fig.legend(handles=method_handles,
                  loc="upper center", ncol=1,
                  bbox_to_anchor=(0.78, 1.0),
                  fontsize=12, framealpha=0.9, edgecolor="#cccccc",
                  handlelength=2.0,
                  title="Method", title_fontsize=11)

out_path = OUTPUT_DIR / "asyncplan_xl_line.png"
fig.savefig(out_path, dpi=180, bbox_inches="tight")
print(f"Saved: {out_path}")

# ── console summary ────────────────────────────────────────────────────────
print(f"\n{'Method':12} {'Model':8}", "  ".join(f"n{n:>3}" for n in NODES))
print("-" * (22 + 8 * len(NODES)))
for method_dir, method_label in [("baselines", "Planner"), ("formalizer", "Formalizer")]:
    for model_dir, label, _ in MODELS:
        vals = [get_acc(method_dir, model_dir, n) for n in NODES]
        row = "  ".join(f"{v:>5.0f}" if v is not None else "   - " for v in vals)
        print(f"{method_label:12} {label:8} {row}")
