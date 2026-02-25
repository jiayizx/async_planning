#!/usr/bin/env bash
# Generate a synthetic async-planning dataset with fully configurable parameters.
#
# All parameters are passed directly — no preset tiers.
#
# Parameters
# ──────────────────────────────────────────────────────────────────────────────
#   --n-samples N          Number of samples to generate          [200]
#   --output FILE          Output JSON file path                  [auto-generated from params]
#   --output-dir DIR       Directory for auto-named file          [data/synthetic]
#   --seed S               Random seed                            [42]
#
#   Graph structure:
#   --n-steps MIN MAX      Step count range per sample            [5 9]
#   --dag-depth MIN MAX    Critical-path hop range                [3 5]
#   --extra-edge-prob P    Cross-layer shortcut edge probability  [0.15]
#                          (higher → more alternative paths → higher path_count)
#
#   Timing:
#   --time-min SEC         Minimum step duration in seconds       [300  = 5 min]
#   --time-max SEC         Maximum step duration in seconds       [3600 = 1 hr]
#                          Durations snap to 5-minute increments.
#
#   Post-generation filters (retry until satisfied):
#   --min-par-ratio R      Minimum parallelism ratio              [1.0]
#   --max-par-ratio R      Maximum parallelism ratio              [inf]
#   --min-path-count K     Minimum distinct paths                 [1]
#
# Relationship between parameters and complexity:
#   par_ratio = sequential_time / min_time   (1.0 = pure sequential)
#   par_ratio ≤ n_steps / (dag_depth + 1)    ← hard ceiling
#
#   To get par_ratio ≥ X, you need n_steps ≥ X × (dag_depth + 1).
#   Examples:
#     par_ratio ~1.2 : n_steps=5,  dag_depth=3  (sequential-ish)
#     par_ratio ~2.0 : n_steps=8,  dag_depth=3  (moderate parallelism)
#     par_ratio ~3.0 : n_steps=12, dag_depth=2  (heavy parallelism, wide DAG)
#     par_ratio ~4.0 : n_steps=15, dag_depth=2  (extreme parallelism)
#
# Usage examples:
#   # Quick test (filename auto-generated)
#   bash scripts/gen_synthetic.sh --n-samples 10
#
#   # Sequential-heavy (par_ratio 1.0–1.5)
#   # → steps4-6_depth2-3_ep5_t5-120m_par1.0-1.5_pc1_n500_s42.json
#   bash scripts/gen_synthetic.sh \
#       --n-samples 500 \
#       --n-steps 4 6 --dag-depth 2 3 --max-par-ratio 1.5
#
#   # Moderate parallelism (par_ratio 1.5–3.0)
#   # → steps6-9_depth3-5_ep15_t5-120m_par1.5-3.0_pc3_n500_s42.json
#   bash scripts/gen_synthetic.sh \
#       --n-samples 500 \
#       --n-steps 6 9 --dag-depth 3 5 --min-par-ratio 1.5 --max-par-ratio 3.0 --min-path-count 3
#
#   # Heavy parallelism (par_ratio ≥ 3.0, wide+shallow DAG)
#   # → steps10-15_depth2-3_ep30_t5-120m_par3.0_pc10_n500_s42.json
#   bash scripts/gen_synthetic.sh \
#       --n-samples 500 \
#       --n-steps 10 15 --dag-depth 2 3 --extra-edge-prob 0.30 \
#       --min-par-ratio 3.0 --min-path-count 10
#
#   # Override output dir or use explicit path
#   bash scripts/gen_synthetic.sh --output-dir /tmp/synth --n-samples 50
#   bash scripts/gen_synthetic.sh --output /tmp/test.json --n-samples 10

set -euo pipefail

# ── Defaults ──────────────────────────────────────────────────────────────────
N_SAMPLES=100
OUTPUT=""             # empty = auto-generate from params
OUTPUT_DIR="data/synthetic"
SEED=42
N_STEPS_MIN=15
N_STEPS_MAX=15
DAG_DEPTH_MIN=3
DAG_DEPTH_MAX=10
EXTRA_EDGE_PROB=0.15
TIME_MIN=300
TIME_MAX=7200
MIN_PAR_RATIO=1.0
MAX_PAR_RATIO=""      # empty = no upper bound
MIN_PATH_COUNT=1

# ── Arg parsing ───────────────────────────────────────────────────────────────
while [[ $# -gt 0 ]]; do
    case "$1" in
        --n-samples)        N_SAMPLES="$2";       shift 2 ;;
        --output)           OUTPUT="$2";           shift 2 ;;
        --output-dir)       OUTPUT_DIR="$2";       shift 2 ;;
        --seed)             SEED="$2";             shift 2 ;;
        --n-steps)          N_STEPS_MIN="$2"; N_STEPS_MAX="$3"; shift 3 ;;
        --dag-depth)        DAG_DEPTH_MIN="$2"; DAG_DEPTH_MAX="$3"; shift 3 ;;
        --extra-edge-prob)  EXTRA_EDGE_PROB="$2";  shift 2 ;;
        --time-min)         TIME_MIN="$2";         shift 2 ;;
        --time-max)         TIME_MAX="$2";         shift 2 ;;
        --min-par-ratio)    MIN_PAR_RATIO="$2";    shift 2 ;;
        --max-par-ratio)    MAX_PAR_RATIO="$2";    shift 2 ;;
        --min-path-count)   MIN_PATH_COUNT="$2";   shift 2 ;;
        *) echo "Unknown argument: $1" >&2; exit 1 ;;
    esac
done

# ── Auto-generate filename from parameters ────────────────────────────────────
# Format: steps{MIN}-{MAX}_depth{MIN}-{MAX}_ep{P}_t{MIN/60}-{MAX/60}m
#         _par{MIN}-{MAX}_pc{K}_n{N}_s{SEED}.json
# par upper bound is omitted when uncapped; time shown in minutes.
if [[ -z "$OUTPUT" ]]; then
    PAR_SUFFIX="${MIN_PAR_RATIO}"
    if [[ -n "$MAX_PAR_RATIO" ]]; then
        PAR_SUFFIX="${MIN_PAR_RATIO}-${MAX_PAR_RATIO}"
    fi
    # Convert seconds to minutes for readability
    TIME_MIN_M=$(( TIME_MIN / 60 ))
    TIME_MAX_M=$(( TIME_MAX / 60 ))
    # Format extra_edge_prob without leading zero for compactness (0.15 → 15)
    EP_INT=$(python3 -c "print(int($EXTRA_EDGE_PROB * 100))")

    FNAME="steps${N_STEPS_MIN}-${N_STEPS_MAX}"
    FNAME+="_depth${DAG_DEPTH_MIN}-${DAG_DEPTH_MAX}"
    FNAME+="_ep${EP_INT}"
    FNAME+="_t${TIME_MIN_M}-${TIME_MAX_M}m"
    FNAME+="_par${PAR_SUFFIX}"
    FNAME+="_pc${MIN_PATH_COUNT}"
    FNAME+="_n${N_SAMPLES}"
    FNAME+="_s${SEED}"
    FNAME+=".json"
    OUTPUT="${OUTPUT_DIR}/${FNAME}"
fi

mkdir -p "$(dirname "$OUTPUT")"

# ── Print config ──────────────────────────────────────────────────────────────
echo "============================================================"
echo " Synthetic DAG generation"
echo "============================================================"
echo "  output          : $OUTPUT"
echo "  n_samples       : $N_SAMPLES"
echo "  seed            : $SEED"
echo "  n_steps range   : [$N_STEPS_MIN, $N_STEPS_MAX]"
echo "  dag_depth range : [$DAG_DEPTH_MIN, $DAG_DEPTH_MAX]"
echo "  extra_edge_prob : $EXTRA_EDGE_PROB"
echo "  time range (s)  : [$TIME_MIN, $TIME_MAX]  ($(( TIME_MIN/60 ))min – $(( TIME_MAX/60 ))min)"
echo "  par_ratio range : [$MIN_PAR_RATIO, ${MAX_PAR_RATIO:-inf}]"
echo "  min_path_count  : $MIN_PATH_COUNT"
echo ""
echo "  Ceiling: par_ratio ≤ n_steps / (dag_depth+1)"
echo "    with n_steps=$N_STEPS_MAX, dag_depth=$DAG_DEPTH_MIN:"
python3 -c "print(f'    max achievable par_ratio ~ {$N_STEPS_MAX / ($DAG_DEPTH_MIN + 1):.2f}')"
echo "============================================================"

# ── Build python command ───────────────────────────────────────────────────────
CMD=(
    python -m src.gen_data.gen_dag
    --n-samples    "$N_SAMPLES"
    --output       "$OUTPUT"
    --seed         "$SEED"
    --n-steps-range    "$N_STEPS_MIN"    "$N_STEPS_MAX"
    --dag-depth-range  "$DAG_DEPTH_MIN"  "$DAG_DEPTH_MAX"
    --extra-edge-prob  "$EXTRA_EDGE_PROB"
    --time-range       "$TIME_MIN"       "$TIME_MAX"
    --min-par-ratio    "$MIN_PAR_RATIO"
    --min-path-count   "$MIN_PATH_COUNT"
)

if [[ -n "$MAX_PAR_RATIO" ]]; then
    CMD+=(--max-par-ratio "$MAX_PAR_RATIO")
fi

"${CMD[@]}"

echo ""
echo "Done → $OUTPUT"
