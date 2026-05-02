#!/usr/bin/env bash
# Generate synthetic async-planning datasets with fully configurable parameters.
#
# Wraps python -m src.gen_data.gen_dag — no preset tiers (see gen_async_planning.sh
# for --mode easy/medium/hard presets).
#
# Parameters
# ──────────────────────────────────────────────────────────────────────────────
#   --step-sizes N1 N2 …   Exact step counts to generate (one file each)  [5 10 15 20]
#   --samples N            Samples per step-size                          [100]
#   --output-dir DIR       Output directory                               [data/synthetic]
#   --seed S               Random seed                                    [42]
#   --combined             Also write a single combined JSON              [off]
#
#   Graph structure:
#   --edge-probs P1 P2 … Edge-probability list (NLGraph p_list)          [0.3]
#                          One value is sampled per DAG.
#                          Higher → denser skip edges → more parallelism.
#   --dag-depth MIN MAX    Critical-path hop range                        [2 auto]
#
#   Timing:
#   --time-scale S1 S2 … Restrict to time scales                        [all]
#                          (minutes / hours / days / weeks / months / years)
#
#   Difficulty:
#   --min-par-ratio R      Minimum parallelism ratio filter               [1.0]
#   --max-par-ratio R      Maximum parallelism ratio filter               [inf]
#   --min-path-count K     Minimum distinct-path filter                   [1]
#
# Relationship between parameters and complexity:
#   par_ratio = sequential_time / critical_path_time  (1.0 = pure sequential)
#   par_ratio ≤ n_steps / (dag_depth + 1)  ← hard ceiling
#
#   To get par_ratio ≥ X you need n_steps ≥ X × (dag_depth + 1). Examples:
#     par_ratio ~1.2 : n_steps=5,  dag_depth=3  (sequential-ish)
#     par_ratio ~2.0 : n_steps=8,  dag_depth=3  (moderate parallelism)
#     par_ratio ~3.0 : n_steps=12, dag_depth=2  (heavy parallelism, wide DAG)
#
# Usage examples:
#   # Quick test
#   bash scripts/gen_synthetic.sh --step-sizes 5 10 --samples 10
#
#   # Dense skip-edges, days/weeks scale
#   bash scripts/gen_synthetic.sh \
#       --step-sizes 10 15 --samples 200 \
#       --edge-probs 0.4 0.6 --time-scale days weeks
#
#   # High parallelism filter, combined output
#   bash scripts/gen_synthetic.sh \
#       --step-sizes 10 15 20 --samples 500 \
#       --min-par-ratio 2.0 --min-path-count 5 --combined

set -euo pipefail

# ── Defaults ──────────────────────────────────────────────────────────────────
STEP_SIZES=(5 10 15 20)
N_SAMPLES=100
OUTPUT_DIR="data/synthetic"
SEED=42
COMBINED=""
EDGE_PROBS=(0.3)
DAG_DEPTH_MIN=2
DAG_DEPTH_MAX=""          # empty = auto (n_steps - 1)
TIME_SCALE=()             # empty = all scales
MIN_PAR_RATIO=1.0
MAX_PAR_RATIO=""          # empty = no upper bound
MIN_PATH_COUNT=1

# ── Arg parsing ───────────────────────────────────────────────────────────────
while [[ $# -gt 0 ]]; do
    case "$1" in
        --step-sizes)
            shift; STEP_SIZES=()
            while [[ $# -gt 0 && ! "$1" =~ ^-- ]]; do STEP_SIZES+=("$1"); shift; done ;;
        --edge-probs)
            shift; EDGE_PROBS=()
            while [[ $# -gt 0 && ! "$1" =~ ^-- ]]; do EDGE_PROBS+=("$1"); shift; done ;;
        --time-scale)
            shift; TIME_SCALE=()
            while [[ $# -gt 0 && ! "$1" =~ ^-- ]]; do TIME_SCALE+=("$1"); shift; done ;;
        --samples)          N_SAMPLES="$2";        shift 2 ;;
        --output-dir)       OUTPUT_DIR="$2";       shift 2 ;;
        --seed)             SEED="$2";             shift 2 ;;
        --combined)         COMBINED="--combined"; shift ;;
        --dag-depth)        DAG_DEPTH_MIN="$2"; DAG_DEPTH_MAX="$3"; shift 3 ;;
        --min-par-ratio)    MIN_PAR_RATIO="$2";    shift 2 ;;
        --max-par-ratio)    MAX_PAR_RATIO="$2";    shift 2 ;;
        --min-path-count)   MIN_PATH_COUNT="$2";   shift 2 ;;
        *) echo "Unknown argument: $1" >&2; exit 1 ;;
    esac
done

# ── Print config ──────────────────────────────────────────────────────────────
echo "============================================================"
echo " Synthetic DAG generation"
echo "============================================================"
echo "  step_sizes      : ${STEP_SIZES[*]}"
echo "  samples_per_size: $N_SAMPLES"
echo "  output_dir      : $OUTPUT_DIR"
echo "  seed            : $SEED"
echo "  edge_probs      : ${EDGE_PROBS[*]}  (NLGraph p_list)"
if [[ -n "$DAG_DEPTH_MAX" ]]; then
    echo "  dag_depth range : [$DAG_DEPTH_MIN, $DAG_DEPTH_MAX]"
else
    echo "  dag_depth range : [$DAG_DEPTH_MIN, auto]"
fi
if [[ ${#TIME_SCALE[@]} -gt 0 ]]; then
    echo "  time_scale      : ${TIME_SCALE[*]}"
else
    echo "  time_scale      : all (task-appropriate ranges)"
fi
echo "  par_ratio range : [$MIN_PAR_RATIO, ${MAX_PAR_RATIO:-inf}]"
echo "  min_path_count  : $MIN_PATH_COUNT"
echo "============================================================"

# ── Build command ─────────────────────────────────────────────────────────────
CMD=(
    python -m src.gen_data.gen_dag
    --step-sizes "${STEP_SIZES[@]}"
    --samples-per-size "$N_SAMPLES"
    --output-dir "$OUTPUT_DIR"
    --seed "$SEED"
    --edge-probs "${EDGE_PROBS[@]}"
    --dag-depth-range "$DAG_DEPTH_MIN" "${DAG_DEPTH_MAX:-$DAG_DEPTH_MIN}"
    --min-par-ratio  "$MIN_PAR_RATIO"
    --min-path-count "$MIN_PATH_COUNT"
)

if [[ ${#TIME_SCALE[@]} -gt 0 ]]; then
    CMD+=(--time-scale "${TIME_SCALE[@]}")
fi
if [[ -n "$MAX_PAR_RATIO" ]]; then
    CMD+=(--max-par-ratio "$MAX_PAR_RATIO")
fi
if [[ -n "$COMBINED" ]]; then
    CMD+=($COMBINED)
fi

"${CMD[@]}"

echo ""
echo "Done → $OUTPUT_DIR"
