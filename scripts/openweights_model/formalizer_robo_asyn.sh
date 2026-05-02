#!/usr/bin/env bash
# LLM-as-Formalizer on RoboAsyn using a locally hosted vLLM model.
#
# Prerequisites: vLLM server running (see start_vllm.sh).
#   bash scripts/openweights_model/start_vllm.sh &
#
# Usage:
#   DATA_PATH=data/robo_asyn/test.json bash scripts/openweights_model/formalizer_robo_asyn.sh
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

MODEL="${MODEL:-Qwen/Qwen2.5-27B-Instruct}"
VLLM_BASE_URL="${VLLM_BASE_URL:-http://localhost:8000/v1}"
DATA_PATH="${DATA_PATH:-data/robo_asyn/test.json}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
BATCH="${BATCH:-8}"
MAX_EXAMPLES="${MAX_EXAMPLES:-100}"
NUM_WORKERS="${NUM_WORKERS:-8}"
NUM_SHOTS="${NUM_SHOTS:-0}"
SOLVER_RETRIES="${SOLVER_RETRIES:-3}"
LLM_RETRIES="${LLM_RETRIES:-3}"
SAFE_MODEL="${MODEL//\//_}"
SAVE_PATH="${SAVE_PATH:-results/robo_asyn/formalizer/vllm_${SAFE_MODEL}_${NUM_SHOTS}shot}"

export VLLM_BASE_URL

python -m src.experiments.run_formalizer \
    --model-name      "vllm/${MODEL}" \
    --temperature     "${TEMPERATURE}" \
    --max-tokens      "${MAX_TOKENS}" \
    --benchmark-name  robo_asyn \
    --data-path       "${DATA_PATH}" \
    --save-path       "${SAVE_PATH}" \
    --batch           "${BATCH}" \
    --max-examples    "${MAX_EXAMPLES}" \
    --num-workers     "${NUM_WORKERS}" \
    --num-shots       "${NUM_SHOTS}" \
    --solver-retries  "${SOLVER_RETRIES}" \
    --llm-retries     "${LLM_RETRIES}"
