#!/usr/bin/env bash
# LLM-as-Formalizer on AsyncHow using a locally hosted vLLM model.
#
# Prerequisites: vLLM server running (see start_vllm.sh).
#   bash scripts/openweights_model/start_vllm.sh &
#
# Usage:
#   bash scripts/openweights_model/asynchow_formalizer.sh                    # Formalizer+
#   EFFECT_GOAL=0 bash scripts/openweights_model/asynchow_formalizer.sh      # Formalizer
#   MODEL=Qwen/Qwen3-32B bash scripts/openweights_model/asynchow_formalizer.sh
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

MODEL="${MODEL:-Qwen/Qwen3.5-27B}"
VLLM_BASE_URL="${VLLM_BASE_URL:-http://localhost:8000/v1}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
BATCH="${BATCH:-8}"
MAX_EXAMPLES="${MAX_EXAMPLES:-99999}"
NUM_WORKERS="${NUM_WORKERS:-8}"
NUM_SHOTS="${NUM_SHOTS:-0}"
LLM_RETRIES="${LLM_RETRIES:-3}"
EFFECT_GOAL="${EFFECT_GOAL:-1}"      # 1 = Formalizer+ (all at-end effects in :goal); 0 = Formalizer
SAFE_MODEL="${MODEL//\//_}"
_VARIANT=$([[ "$EFFECT_GOAL" == "1" ]] && echo "_plus" || echo "")
SAVE_PATH="${SAVE_PATH:-results/asynchow/formalizer_310/vllm_${SAFE_MODEL}_${NUM_SHOTS}shot${_VARIANT}}"

export VLLM_BASE_URL

python -m src.experiments.run_formalizer \
    --model-name      "vllm/${MODEL}" \
    --temperature     "${TEMPERATURE}" \
    --max-tokens      "${MAX_TOKENS}" \
    --benchmark-name  asynchow \
    --save-path       "${SAVE_PATH}" \
    --batch           "${BATCH}" \
    --max-examples    "${MAX_EXAMPLES}" \
    --num-workers     "${NUM_WORKERS}" \
    --num-shots       "${NUM_SHOTS}" \
    --llm-retries     "${LLM_RETRIES}" \
    $([[ "$EFFECT_GOAL" == "1" ]] && echo "--effect-goal")
