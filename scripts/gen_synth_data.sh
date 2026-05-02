#!/usr/bin/env bash
# Generate synthetic async-planning datasets (NLGraph-inspired).
#
# All 5 NLGraph hyperparameters:
#   1. num_nodes       → --num-nodes      (number of task nodes per problem)
#   2. edge_probability→ --edge-probs     (rank-decayed: gap=1→p, gap≤3→p×0.5, gap>3→long_range_prob)
#   3. (no durations — LLM adds them)
#   4. min_width       → --min-width      (rejects trivially sequential DAGs)
#   5. long_range_prob → --long-range-prob
#
# Parameters (all hyperparameters controllable via flags)
# ──────────────────────────────────────────────────────────────────────────────
#   --num-nodes N...       Node counts (space-separated)             [5 8 10]
#   --edge-probs P...      Edge probabilities (space-separated)      [0.3]
#   --min-width N          Minimum DAG width                         [2]
#   --long-range-prob P    Long-range edge probability                [0.05]
#   --samples-per-size N   Samples per node-count                    [50]
#   --output-dir DIR       Output directory                          [data/async_planning]
#   --seed S               Random seed                               [42]
#   --combined             Also write a combined JSON                 [off]
#
#   NL rewriting (optional — set to empty to skip):
#   --rewrite-model MODEL      LLM model for rewrite_nl.py            [none]
#   --rewrite-temperature T    Sampling temperature                   [0.8]
#   --rewrite-max-tokens N     Max output tokens (0 = auto)           [0]
#   --rewrite-workers N        Parallel LLM calls                     [8]
#
# Usage examples
# ──────────────────────────────────────────────────────────────────────────────
#   bash scripts/gen_async_planning.sh --num-nodes 5 8 10 --edge-probs 0.3 0.5
#   bash scripts/gen_async_planning.sh --num-nodes 20 25 --min-width 3 --long-range-prob 0.15
#   bash scripts/gen_async_planning.sh --samples-per-size 100

set -euo pipefail

# ── Defaults ──────────────────────────────────────────────────────────────────
NUM_NODES=(5 10 15 20 30 40 50 100)
EDGE_PROBS=(0.2)
MIN_WIDTH=2
LONG_RANGE_PROB=0.05

SAMPLES_PER_SIZE=50
OUTPUT_DIR="data/async_planning"
SEED=42
COMBINED=""

REWRITE_MODEL="gemini-3-flash"
REWRITE_TEMPERATURE=0.8
REWRITE_MAX_TOKENS=0
REWRITE_WORKERS=16

# ── Arg parsing ───────────────────────────────────────────────────────────────
while [[ $# -gt 0 ]]; do
    case "$1" in
        --num-nodes)
            shift
            NUM_NODES=()
            while [[ $# -gt 0 && "$1" != --* ]]; do NUM_NODES+=("$1"); shift; done
            ;;
        --edge-probs)
            shift
            EDGE_PROBS=()
            while [[ $# -gt 0 && "$1" != --* ]]; do EDGE_PROBS+=("$1"); shift; done
            ;;
        --min-width)          MIN_WIDTH="$2";              shift 2 ;;
        --long-range-prob)    LONG_RANGE_PROB="$2";        shift 2 ;;
        --samples-per-size)   SAMPLES_PER_SIZE="$2";      shift 2 ;;
        --output-dir)         OUTPUT_DIR="$2";            shift 2 ;;
        --seed)               SEED="$2";                 shift 2 ;;
        --combined)           COMBINED="--combined";      shift ;;
        --rewrite-model)      REWRITE_MODEL="$2";         shift 2 ;;
        --rewrite-temperature) REWRITE_TEMPERATURE="$2";  shift 2 ;;
        --rewrite-max-tokens) REWRITE_MAX_TOKENS="$2";     shift 2 ;;
        --rewrite-workers)    REWRITE_WORKERS="$2";        shift 2 ;;
        *) echo "Unknown argument: $1" >&2; exit 1 ;;
    esac
done

# ── Print config ──────────────────────────────────────────────────────────────
echo "============================================================"
echo " Async Planning Data Generator"
echo "============================================================"
echo "  num_nodes       : ${NUM_NODES[*]}"
echo "  edge_probs      : ${EDGE_PROBS[*]}"
echo "  min_width       : $MIN_WIDTH"
echo "  long_range_prob : $LONG_RANGE_PROB"
echo "  samples_per_size: $SAMPLES_PER_SIZE"
echo "  output_dir      : $OUTPUT_DIR"
echo "  seed            : $SEED"
[[ -n "$REWRITE_MODEL" ]] && echo "  rewrite_model   : $REWRITE_MODEL"
echo "============================================================"

# ── Build and run command ─────────────────────────────────────────────────────
CMD=(
    python -m src.gen_data.gen_dag
    --num-nodes        "${NUM_NODES[@]}"
    --edge-probs       "${EDGE_PROBS[@]}"
    --min-width        "$MIN_WIDTH"
    --long-range-prob  "$LONG_RANGE_PROB"
    --samples-per-size "$SAMPLES_PER_SIZE"
    --output-dir       "$OUTPUT_DIR"
    --seed             "$SEED"
)

[[ -n "$COMBINED" ]] && CMD+=($COMBINED)

"${CMD[@]}"

# ── NL rewriting (optional) ───────────────────────────────────────────────────
if [[ -n "$REWRITE_MODEL" ]]; then
    echo ""
    echo "============================================================"
    echo " NL Rewriting with $REWRITE_MODEL"
    echo "============================================================"

    shopt -s nullglob
    for json_file in "$OUTPUT_DIR"/*.json; do
        [[ "$json_file" == *_nlrewrite_* ]] && continue
        echo "  Rewriting: $json_file"
        python -m src.gen_data.rewrite_nl \
            --input        "$json_file" \
            --output-dir   "$OUTPUT_DIR" \
            --model        "$REWRITE_MODEL" \
            --temperature  "$REWRITE_TEMPERATURE" \
            --max-tokens   "$REWRITE_MAX_TOKENS" \
            --workers      "$REWRITE_WORKERS"
    done
fi

echo ""
echo "Done → $OUTPUT_DIR"
