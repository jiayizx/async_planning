#!/usr/bin/env bash
# LLM-as-Formalizer on all synthetic NL-rewritten datasets using a locally hosted vLLM model.
#
# Prerequisites: vLLM server running (see start_vllm.sh).
#   bash scripts/openweights_model/start_vllm.sh &
#
# Usage:
#   bash scripts/openweights_model/synth_formalizer.sh                   # Formalizer+
#   EFFECT_GOAL=0 bash scripts/openweights_model/synth_formalizer.sh     # Formalizer
#   MODEL=Qwen/Qwen3-32B bash scripts/openweights_model/synth_formalizer.sh
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

MODEL="${MODEL:-Qwen/Qwen3.5-27B}"
VLLM_BASE_URL="${VLLM_BASE_URL:-http://localhost:8000/v1}"
DATA_DIR="${DATA_DIR:-data/async_planning}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
BATCH="${BATCH:-8}"
MAX_EXAMPLES="${MAX_EXAMPLES:-400}"
NUM_WORKERS="${NUM_WORKERS:-8}"
NUM_SHOTS="${NUM_SHOTS:-0}"
LLM_RETRIES="${LLM_RETRIES:-3}"
EFFECT_GOAL="${EFFECT_GOAL:-1}"      # 1 = Formalizer+ (all at-end effects in :goal); 0 = Formalizer
PATTERN="${PATTERN:-*nlrewrite_*.json}"
SAFE_MODEL="${MODEL//\//_}"
_VARIANT=$([[ "$EFFECT_GOAL" == "1" ]] && echo "_plus" || echo "")
SAVE_DIR="${SAVE_DIR:-results/gen-data-modified/formalizer/vllm_${SAFE_MODEL}${_VARIANT}}"

export VLLM_BASE_URL

FILES=()
while IFS= read -r f; do FILES+=("$f"); done < <(find "$DATA_DIR" -maxdepth 1 -name "$PATTERN" | sort)

if [[ ${#FILES[@]} -eq 0 ]]; then
    echo "No files matching '$PATTERN' found in $DATA_DIR" >&2
    exit 1
fi

echo "============================================================"
echo " Formalizer on synthetic data (vLLM)"
echo "============================================================"
echo "  model         : $MODEL"
echo "  effect-goal   : $EFFECT_GOAL ($([ "$EFFECT_GOAL" = "1" ] && echo "Formalizer+" || echo "Formalizer"))"
echo "  data-dir      : $DATA_DIR"
echo "  save-dir      : $SAVE_DIR"
echo "  max-examples  : $MAX_EXAMPLES"
echo "  files found   : ${#FILES[@]}"
for f in "${FILES[@]}"; do echo "    $f"; done
echo "============================================================"
echo ""

FAILED=()

for DATA_PATH in "${FILES[@]}"; do
    STEM="$(basename "$DATA_PATH" .json)"
    SAVE_PATH="${SAVE_DIR}/${STEM}"

    echo "────────────────────────────────────────────────────────────"
    echo " File   : $DATA_PATH"
    echo " Saving : $SAVE_PATH"
    echo "────────────────────────────────────────────────────────────"

    mkdir -p "$SAVE_PATH"

    if python -m src.experiments.run_formalizer \
        --model-name      "vllm/${MODEL}" \
        --temperature     "${TEMPERATURE}" \
        --max-tokens      "${MAX_TOKENS}" \
        --benchmark-name  gen-data \
        --data-path       "${DATA_PATH}" \
        --save-path       "${SAVE_PATH}" \
        --batch           "${BATCH}" \
        --max-examples    "${MAX_EXAMPLES}" \
        --num-workers     "${NUM_WORKERS}" \
        --num-shots       "${NUM_SHOTS}" \
        --llm-retries     "${LLM_RETRIES}" \
        $([[ "$EFFECT_GOAL" == "1" ]] && echo "--effect-goal"); then
        echo "  Done → $SAVE_PATH"
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
