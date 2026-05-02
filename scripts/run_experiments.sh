#!/usr/bin/env bash
# Controlled comparison experiments across three axes:
#
#   Series 1 (scale):  vary n_steps = 5,10,15,20,30,40  (dag_depth scales proportionally)
#   Series 2 (depth):  vary dag_depth = 2,4,6,8,10,14   (fixed n_steps=20)
#   Series 3 (par):    vary par_ratio = seq/mod/high     (fixed n_steps=20, dag_depth=3)
#                      par ceiling = 20/(3+1) = 5.0
#
#   Series 2 & 3 both fix n_steps=20, which is also a data point in Series 1 (scale/n20).
#
# Pipeline per group:  gen_synthetic → [rewrite_nl] → formalizer_gen_data
# (rewrite_nl can be skipped with --skip-rewrite for faster / more controlled runs)
#
# ── Parameters ────────────────────────────────────────────────────────────────
#   --series      SERIES    Which series to run: scale|depth|par|all  [all]
#   --model       MODEL     Formalizer LLM                            [gemini/gemini-3-flash]
#   --rw-model    MODEL     NL-rewrite LLM (ignored with --skip-rewrite)
#                                                                     [openai/gpt-4.1]
#   --n-samples   N         Samples generated per group               [500]
#   --max-ex      N         Formalizer eval cap per group             [100]
#   --num-shots   N         Few-shot examples for formalizer (0-3)    [0]
#   --data-dir    DIR       Root dir for generated data               [data/controlled]
#   --save-dir    DIR       Root dir for formalizer results           [results/controlled]
#   --seed        S         Random seed                               [42]
#   --skip-rewrite          Use raw synthetic NL (skip rewrite_nl step)
#   --dry-run               Print commands without executing
#
# ── Usage examples ────────────────────────────────────────────────────────────
#   # Run all three series (uses NL rewriting by default)
#   bash scripts/run_experiments.sh
#
#   # Only scale series, skip NL rewrite (faster, more controlled)
#   bash scripts/run_experiments.sh --series scale --skip-rewrite
#
#   # Custom model, only par series
#   bash scripts/run_experiments.sh --series par --model openai/gpt-4.1
#
#   # Dry run to preview commands
#   bash scripts/run_experiments.sh --dry-run
# ──────────────────────────────────────────────────────────────────────────────

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Defaults ──────────────────────────────────────────────────────────────────
SERIES="all"
MODEL="${MODEL:-gemini/gemini-3-flash}"
RW_MODEL="${RW_MODEL:-openai/gpt-4.1}"
N_SAMPLES="${N_SAMPLES:-500}"
MAX_EXAMPLES="${MAX_EXAMPLES:-100}"
NUM_SHOTS="${NUM_SHOTS:-0}"
DATA_DIR="${DATA_DIR:-data/controlled}"
SAVE_DIR="${SAVE_DIR:-results/controlled}"
SEED="${SEED:-42}"
SKIP_REWRITE=0
DRY_RUN=0

# ── Arg parsing ───────────────────────────────────────────────────────────────
while [[ $# -gt 0 ]]; do
    case "$1" in
        --series)       SERIES="$2";       shift 2 ;;
        --model)        MODEL="$2";        shift 2 ;;
        --rw-model)     RW_MODEL="$2";     shift 2 ;;
        --n-samples)    N_SAMPLES="$2";    shift 2 ;;
        --max-ex)       MAX_EXAMPLES="$2"; shift 2 ;;
        --num-shots)    NUM_SHOTS="$2";    shift 2 ;;
        --data-dir)     DATA_DIR="$2";     shift 2 ;;
        --save-dir)     SAVE_DIR="$2";     shift 2 ;;
        --seed)         SEED="$2";         shift 2 ;;
        --skip-rewrite) SKIP_REWRITE=1;    shift ;;
        --dry-run)      DRY_RUN=1;         shift ;;
        *) echo "Unknown argument: $1" >&2; exit 1 ;;
    esac
done

SAFE_MODEL="${MODEL//\//_}"; SAFE_MODEL="${SAFE_MODEL//:/_}"

# ── Helpers ───────────────────────────────────────────────────────────────────
run() {
    if [[ $DRY_RUN -eq 1 ]]; then
        echo "[DRY-RUN] $*"
    else
        "$@"
    fi
}

# Run one group: generate data, [rewrite NL], evaluate with formalizer.
#
# Args:
#   $1  group_dir   subdir under DATA_DIR for this group's data
#   $2  n_min       --n-steps min
#   $3  n_max       --n-steps max
#   $4  d_min       --dag-depth min
#   $5  d_max       --dag-depth max
#   $6  par_min     --min-par-ratio
#   $7  par_max     --max-par-ratio  (empty = unconstrained)
run_group() {
    local group_dir="$1"
    local n_min="$2" n_max="$3"
    local d_min="$4" d_max="$5"
    local par_min="$6" par_max="${7:-}"

    local group_data_dir="${DATA_DIR}/${group_dir}"
    local group_save_dir="${SAVE_DIR}/${SAFE_MODEL}/${group_dir}"

    echo ""
    echo "╔══════════════════════════════════════════════════════════╗"
    printf  "║  GROUP: %-50s║\n" "$group_dir"
    printf  "║  n_steps=%-3s–%-3s  dag_depth=%-2s–%-2s  par=[%-4s, %-5s]  ║\n" \
            "$n_min" "$n_max" "$d_min" "$d_max" "$par_min" "${par_max:-∞}"
    echo "╚══════════════════════════════════════════════════════════╝"

    mkdir -p "$group_data_dir"

    # ── Step 1: Generate synthetic data ───────────────────────────
    local gen_cmd=(
        bash scripts/gen_synthetic.sh
        --n-steps "$n_min" "$n_max"
        --dag-depth "$d_min" "$d_max"
        --min-par-ratio "$par_min"
        --extra-edge-prob 0.15
        --n-samples "$N_SAMPLES"
        --seed "$SEED"
        --output-dir "$group_data_dir"
    )
    [[ -n "$par_max" ]] && gen_cmd+=(--max-par-ratio "$par_max")
    run "${gen_cmd[@]}"

    # ── Step 2: (Optional) NL rewrite ─────────────────────────────
    local formalizer_data_dir="$group_data_dir"
    local formalizer_pattern="*.json"

    if [[ $SKIP_REWRITE -eq 0 ]]; then
        # Find the just-generated synthetic file and rewrite it
        local syn_file
        syn_file="$(ls -t "${group_data_dir}"/*.json 2>/dev/null \
                    | grep -v "_nlrewrite_" | head -1 || true)"
        if [[ -z "$syn_file" ]]; then
            echo "  ⚠ No synthetic file found in ${group_data_dir}, skipping rewrite."
        else
            run bash scripts/rewrite_nl.sh \
                --input      "$syn_file" \
                --output-dir "$group_data_dir" \
                --model      "$RW_MODEL"
            formalizer_pattern="*_nlrewrite_*.json"
        fi
    fi

    # ── Step 3: Formalizer evaluation ─────────────────────────────
    run bash scripts/formalizer_gen_data.sh \
        --data-dir       "$formalizer_data_dir" \
        --pattern        "$formalizer_pattern" \
        --model          "$MODEL" \
        --save-dir       "$group_save_dir" \
        --max-examples   "$MAX_EXAMPLES" \
        --num-shots      "$NUM_SHOTS"
}

# ── Series definitions ────────────────────────────────────────────────────────

run_series_scale() {
    echo ""
    echo "════════════════════════════════════════════════════════════"
    echo " SERIES 1: Scale  (vary n_steps, dag_depth scales ~40%)"
    echo "════════════════════════════════════════════════════════════"
    #           group_dir       n_min n_max  d_min d_max  par_min  par_max
    run_group   "scale/n05"       5    5      2     3      1.0      ""
    run_group   "scale/n10"      10   10      3     5      1.0      ""
    run_group   "scale/n15"      15   15      4     7      1.0      ""
    run_group   "scale/n20"      20   20      6    10      1.0      ""
    run_group   "scale/n30"      30   30      9    15      1.0      ""
    run_group   "scale/n40"      40   40     12    20      1.0      ""
}

run_series_depth() {
    echo ""
    echo "════════════════════════════════════════════════════════════"
    echo " SERIES 2: Depth  (vary dag_depth, fixed n_steps=20)"
    echo "════════════════════════════════════════════════════════════"
    #           group_dir         n   n   d    d   par_min  par_max
    run_group   "depth/d02"      20  20   2    2   1.0      ""
    run_group   "depth/d04"      20  20   4    4   1.0      ""
    run_group   "depth/d06"      20  20   6    6   1.0      ""
    run_group   "depth/d08"      20  20   8    8   1.0      ""
    run_group   "depth/d10"      20  20  10   10   1.0      ""
    run_group   "depth/d14"      20  20  14   14   1.0      ""
}

run_series_par() {
    echo ""
    echo "════════════════════════════════════════════════════════════"
    echo " SERIES 3: Parallelism  (vary par_ratio, n=20 d=3)"
    echo " Note: par_ratio ceiling = 20/(3+1) = 5.0"
    echo "════════════════════════════════════════════════════════════"
    #           group_dir          n   n  d  d  par_min  par_max
    run_group   "par/sequential"  20  20  3  3   1.0      1.3
    run_group   "par/moderate"    20  20  3  3   1.5      2.5
    run_group   "par/parallel"    20  20  3  3   3.0      4.5
}

# ── Print config ──────────────────────────────────────────────────────────────
echo "════════════════════════════════════════════════════════════"
echo " Controlled Experiments"
echo "════════════════════════════════════════════════════════════"
echo "  series        : $SERIES"
echo "  model         : $MODEL"
echo "  rw_model      : $RW_MODEL  (skip_rewrite=$SKIP_REWRITE)"
echo "  n_samples     : $N_SAMPLES  (eval cap: $MAX_EXAMPLES)"
echo "  num_shots     : $NUM_SHOTS"
echo "  data_dir      : $DATA_DIR"
echo "  save_dir      : $SAVE_DIR"
echo "  seed          : $SEED"
[[ $DRY_RUN -eq 1 ]] && echo "  *** DRY RUN ***"
echo "════════════════════════════════════════════════════════════"

# ── Dispatch ──────────────────────────────────────────────────────────────────
case "$SERIES" in
    scale) run_series_scale ;;
    depth) run_series_depth ;;
    par)   run_series_par   ;;
    all)
        run_series_scale
        run_series_depth
        run_series_par
        ;;
    *) echo "Unknown series: $SERIES  (choose: scale|depth|par|all)" >&2; exit 1 ;;
esac

# ── Final aggregation across all groups ───────────────────────────────────────
echo ""
echo "════════════════════════════════════════════════════════════"
echo " Final Aggregation: ${SAVE_DIR}/${SAFE_MODEL}"
echo "════════════════════════════════════════════════════════════"

python3 - <<PYEOF
import json, glob, os, sys

save_root = "${SAVE_DIR}/${SAFE_MODEL}"
pattern   = os.path.join(save_root, "**", "summary_results.json")
files     = sorted(glob.glob(pattern, recursive=True))

if not files:
    print("No summary_results.json found yet.")
    sys.exit(0)

rows = []
for f in files:
    with open(f) as fh:
        d = json.load(fh)
    # Build a readable group label from the path relative to save_root
    rel = os.path.relpath(os.path.dirname(f), save_root)
    rows.append({
        "group":            rel,
        "accuracy":         d.get("accuracy", 0),
        "correct":          d.get("num_correct", 0),
        "total":            d.get("num_data_points", 0),
        "parse_fails":      d.get("num_parse_failures", 0),
        "plan_valid_rate":  d.get("plan_valid_rate"),
        "ok_valid":         d.get("num_correct_and_valid"),
        "ok_invalid":       d.get("num_correct_but_invalid"),
        "bad_valid":        d.get("num_incorrect_but_valid"),
    })

has_validity = any(r["plan_valid_rate"] is not None for r in rows)

# Group rows by series prefix (scale / depth / par / other)
from collections import defaultdict
series_map = defaultdict(list)
for r in rows:
    prefix = r["group"].split("/")[0] if "/" in r["group"] else "other"
    series_map[prefix].append(r)

w = max(len(r["group"]) for r in rows)

def print_table(title, rows):
    if not rows:
        return
    print(f"\n── {title} {'─' * max(0, 58 - len(title))}")
    if has_validity:
        hdr = f"  {'group':<{w}}  {'acc':>6}  {'cor':>5}  {'tot':>5}  {'pval%':>6}  {'ok+v':>5}  {'ok-v':>5}  {'bad+v':>5}"
        print(hdr)
        print("  " + "─" * (len(hdr) - 2))
        for r in rows:
            pvr  = f"{r['plan_valid_rate']:.3f}" if r['plan_valid_rate'] is not None else "  N/A"
            okv  = str(r['ok_valid'])   if r['ok_valid']   is not None else "N/A"
            okiv = str(r['ok_invalid']) if r['ok_invalid'] is not None else "N/A"
            bv   = str(r['bad_valid'])  if r['bad_valid']  is not None else "N/A"
            print(f"  {r['group']:<{w}}  {r['accuracy']:>6.3f}  {r['correct']:>5}  {r['total']:>5}  {pvr:>6}  {okv:>5}  {okiv:>5}  {bv:>5}")
    else:
        hdr = f"  {'group':<{w}}  {'acc':>6}  {'correct':>7}  {'total':>5}  {'pfail':>5}"
        print(hdr)
        print("  " + "─" * (len(hdr) - 2))
        for r in rows:
            print(f"  {r['group']:<{w}}  {r['accuracy']:>6.3f}  {r['correct']:>7}  {r['total']:>5}  {r['parse_fails']:>5}")

for series_name in ["scale", "depth", "par"]:
    if series_name in series_map:
        title_map = {"scale": "Series 1: Scale (n_steps)",
                     "depth": "Series 2: Depth (dag_depth)",
                     "par":   "Series 3: Parallelism (par_ratio)"}
        print_table(title_map[series_name], series_map[series_name])

# Any groups not in the three main series
other = [r for k, v in series_map.items() if k not in ("scale","depth","par") for r in v]
if other:
    print_table("Other groups", other)

if has_validity:
    print()
    print("  Column legend:")
    print("    acc    = answer accuracy")
    print("    pval%  = plan valid rate (respects all gold DAG edges & durations)")
    print("    ok+v   = correct & valid plan   ← ideal")
    print("    ok-v   = correct & INVALID plan ← lucky (wrong PDDL, right makespan)")
    print("    bad+v  = wrong   & valid plan   ← overconstrained PDDL")

print(f"\nSaved under: {save_root}")
PYEOF
