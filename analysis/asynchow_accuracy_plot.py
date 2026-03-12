"""
Bar chart comparing LLM-as-Planner (CoT) vs LLM-as-Async-Formalizer on AsyncHow.
Two method groups, three models per group (G3F, G4.1, G5.2m).

Usage:
    python analysis/asynchow_accuracy_plot.py

Output:
    analysis_results/asynchow_bar.png
"""

import json
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import numpy as np

# ── paths ──────────────────────────────────────────────────────────────────
RESULTS_ROOT   = Path(__file__).parent.parent / "results" / "asynchow"
BASELINE_ROOT  = RESULTS_ROOT / "baselines_310"
FORMALIZER_ROOT = RESULTS_ROOT / "formalizer_310"
OUTPUT_DIR     = Path(__file__).parent.parent / "analysis_results"
OUTPUT_DIR.mkdir(exist_ok=True)

# ── model config ───────────────────────────────────────────────────────────
# ColorBrewer Set2 — soft, pastel-toned, print-friendly.
# (internal key, display label, bar color)
MODELS = [
    ("gemini-3-flash", "G3F",   "#66C2A5"),   # Set2 teal
    ("gpt-4.1",        "G4.1",  "#8DA0CB"),   # Set2 periwinkle
    ("gpt-5-mini",     "G5.2m", "#FC8D62"),   # Set2 salmon
]

# ── data loading ───────────────────────────────────────────────────────────

def load_summary(path: Path) -> dict:
    with open(path) as f:
        return json.load(f)


def get_accuracy(model_key: str, method: str) -> float:
    """Return accuracy (0–100) for a given model and method."""
    if method == "baseline":
        if model_key == "gemini-3-flash":
            path = BASELINE_ROOT / "gemini-3-flash" / "cot" / "summary_results.json"
        else:
            path = BASELINE_ROOT / "openai" / model_key / "cot" / "summary_results.json"
    else:  # formalizer
        if model_key == "gemini-3-flash":
            path = FORMALIZER_ROOT / "gemini-3-flash_0shot" / "summary_results.json"
        else:
            path = FORMALIZER_ROOT / f"openai_{model_key}_0shot" / "summary_results.json"
    return load_summary(path)["accuracy"] * 100


# ── compute values ─────────────────────────────────────────────────────────
baseline_accs   = [get_accuracy(m, "baseline")   for m, _, _ in MODELS]
formalizer_accs = [get_accuracy(m, "formalizer") for m, _, _ in MODELS]

labels  = [label for _, label, _ in MODELS]
colors  = [color for _, _, color in MODELS]

# ── layout ─────────────────────────────────────────────────────────────────
# Each method group is a cluster of 3 bars.
# Group positions: 0 (LLM-as-Planner) and 1 (LLM-as-Async-Formalizer)
n_models   = len(MODELS)
bar_w      = 0.22
group_gap  = 0.5          # extra space between the two method groups
group_centers = np.array([0.0, 1.0 + group_gap])

# Within each group, bars are centered around the group center
offsets = np.linspace(-(n_models - 1) / 2, (n_models - 1) / 2, n_models) * bar_w

fig, ax = plt.subplots(figsize=(6.5, 5.5))
# Leave room at top for legend
fig.subplots_adjust(top=0.82)

# Draw bars for each model
for i, (model_key, label, color) in enumerate(MODELS):
    xs = group_centers + offsets[i]
    vals = [baseline_accs[i], formalizer_accs[i]]
    bars = ax.bar(xs, vals, bar_w, color=color, edgecolor="white",
                  linewidth=1.2, alpha=0.88, zorder=3)
    # Value labels
    for bar, val in zip(bars, vals):
        ax.text(bar.get_x() + bar.get_width() / 2,
                bar.get_height() + 0.8,
                f"{val:.1f}",
                ha="center", va="bottom", fontsize=11, color="#333333")

# ── axes formatting ────────────────────────────────────────────────────────
method_labels = ["LLM-as-Planner", "LLM-as-Async-\nFormalizer"]
ax.set_xticks(group_centers)
ax.set_xticklabels(method_labels, fontsize=14)
ax.set_ylabel("Accuracy (%)", fontsize=15)
ax.tick_params(axis="y", labelsize=13)
ax.set_ylim(0, 110)
ax.yaxis.grid(True, linestyle="--", alpha=0.45, zorder=0)
ax.set_axisbelow(True)
ax.spines["top"].set_visible(False)
ax.spines["right"].set_visible(False)
ax.set_title("AsyncHow", fontsize=16, fontweight="bold", pad=10)

# ── legend above the plot area (no overlap with bars) ─────────────────────
legend_patches = [
    mpatches.Patch(color=color, label=label)
    for _, label, color in MODELS
]
fig.legend(handles=legend_patches, fontsize=13,
           loc="upper center", ncol=n_models,
           bbox_to_anchor=(0.5, 1.0),
           framealpha=0.9, edgecolor="#cccccc",
           columnspacing=1.0, handlelength=1.4)
out_path = OUTPUT_DIR / "asynchow_bar.png"
fig.savefig(out_path, dpi=180, bbox_inches="tight")
print(f"Saved: {out_path}")

# ── console summary ────────────────────────────────────────────────────────
print(f"\n{'Model':<8} {'LLM-as-Planner':>16} {'LLM-as-Async-Formalizer':>24} {'Δ':>6}")
print("-" * 58)
for (_, label, _), b, f in zip(MODELS, baseline_accs, formalizer_accs):
    print(f"{label:<8} {b:>16.1f} {f:>24.1f} {f - b:>+6.1f}")
