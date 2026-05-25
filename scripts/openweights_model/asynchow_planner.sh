#!/usr/bin/env bash
# LLM-as-Planner (baselines) on AsyncHow using a locally hosted vLLM model.
#
# Prerequisites: vLLM server running (see start_vllm.sh).
#   bash scripts/openweights_model/start_vllm.sh &
#
# Usage:
#   bash scripts/openweights_model/asynchow_planner.sh
#   MODEL=Qwen/Qwen3-32B bash scripts/openweights_model/asynchow_planner.sh
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

MODEL="${MODEL:-Qwen/Qwen3.5-27B}"
VLLM_BASE_URL="${VLLM_BASE_URL:-http://localhost:8000/v1}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
MAX_EXAMPLES="${MAX_EXAMPLES:-99999}"
NUM_WORKERS="${NUM_WORKERS:-8}"
ICL_EXAMPLES="${ICL_EXAMPLES:-0}"
COT="${COT:-true}"
SAFE_MODEL="${MODEL//\//_}"
SAVE_PATH="${SAVE_PATH:-results/asynchow/baselines_310/vllm_${SAFE_MODEL}/}"

export VLLM_BASE_URL

python -m src.experiments.run_baselines \
    --model-name      "vllm/${MODEL}" \
    --temperature     "${TEMPERATURE}" \
    --max-tokens      "${MAX_TOKENS}" \
    --benchmark-name  asynchow \
    --save-path       "${SAVE_PATH}" \
    --max-examples    "${MAX_EXAMPLES}" \
    --num-workers     "${NUM_WORKERS}" \
    --icl-examples    "${ICL_EXAMPLES}" \
    --cot             "${COT}"
