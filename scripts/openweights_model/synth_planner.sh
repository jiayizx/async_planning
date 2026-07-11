#!/usr/bin/env bash
# LLM-as-Planner (baselines) on all synthetic NL-rewritten datasets using a locally hosted vLLM model.
#
# Prerequisites: vLLM server running (see start_vllm.sh).
#   bash scripts/openweights_model/start_vllm.sh &
#
# Usage:
#   bash scripts/openweights_model/synth_planner.sh
#   MODEL=Qwen/Qwen3-32B bash scripts/openweights_model/synth_planner.sh
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

MODEL="${MODEL:-Qwen/Qwen3.5-27B}"
VLLM_BASE_URL="${VLLM_BASE_URL:-http://localhost:8000/v1}"
DATA_DIR="${DATA_DIR:-data/async_planning}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-4096}"
MAX_EXAMPLES="${MAX_EXAMPLES:-400}"
NUM_WORKERS="${NUM_WORKERS:-8}"
ICL_EXAMPLES="${ICL_EXAMPLES:-0}"
COT="${COT:-true}"
PATTERN="${PATTERN:-*nlrewrite_*.json}"
SAFE_MODEL="${MODEL//\//_}"
SAVE_DIR="${SAVE_DIR:-results/gen-data-modified/baselines/vllm_${SAFE_MODEL}}"

export VLLM_BASE_URL

FILES=()
while IFS= read -r f; do FILES+=("$f"); done < <(find "$DATA_DIR" -maxdepth 1 -name "$PATTERN" | sort)

if [[ ${#FILES[@]} -eq 0 ]]; then
    echo "No files matching '$PATTERN' found in $DATA_DIR" >&2
    exit 1
fi

COT_TAG=$([ "$COT" = "true" ] && echo "cot" || echo "no_cot")

echo "============================================================"
echo " Planner on synthetic data (vLLM)"
echo "============================================================"
echo "  model        : $MODEL"
echo "  data-dir     : $DATA_DIR"
echo "  save-dir     : $SAVE_DIR"
echo "  cot          : $COT"
echo "  icl-examples : $ICL_EXAMPLES"
echo "  max-examples : $MAX_EXAMPLES"
echo "  files found  : ${#FILES[@]}"
for f in "${FILES[@]}"; do echo "    $f"; done
echo "============================================================"
echo ""

FAILED=()

for DATA_PATH in "${FILES[@]}"; do
    STEM="$(basename "$DATA_PATH" .json)"
    SAVE_PATH="${SAVE_DIR}/${STEM}/"

    echo "────────────────────────────────────────────────────────────"
    echo " File   : $DATA_PATH"
    echo " Saving : ${SAVE_PATH}${COT_TAG}"
    echo "────────────────────────────────────────────────────────────"

    mkdir -p "$SAVE_PATH"

    if python -m src.experiments.run_baselines \
        --model-name      "vllm/${MODEL}" \
        --temperature     "${TEMPERATURE}" \
        --max-tokens      "${MAX_TOKENS}" \
        --benchmark-name  gen-data \
        --data-path       "${DATA_PATH}" \
        --save-path       "${SAVE_PATH}" \
        --max-examples    "${MAX_EXAMPLES}" \
        --num-workers     "${NUM_WORKERS}" \
        --icl-examples    "${ICL_EXAMPLES}" \
        --cot             "${COT}"; then
        echo "  Done → ${SAVE_PATH}${COT_TAG}"
    else
        echo "  FAILED: $DATA_PATH" >&2
        FAILED+=("$DATA_PATH")
    fi

    echo ""
done

if [[ ${#FAILED[@]} -gt 0 ]]; then
    echo "============================================================"
    echo " FAILED FILES:"
    for f in "${FAILED[@]}"; do echo "  $f"; done
    echo "============================================================"
    exit 1
fi
