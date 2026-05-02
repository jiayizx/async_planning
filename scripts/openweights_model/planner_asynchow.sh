#!/usr/bin/env bash
# LLM-as-Planner (baselines) on AsyncHow using a locally hosted vLLM model.
#
# Prerequisites: vLLM server running (see start_vllm.sh).
#   bash scripts/openweights_model/start_vllm.sh &
#
# Usage:
#   bash scripts/openweights_model/planner_asynchow.sh
#   MODEL=Qwen/Qwen3-32B ICL_EXAMPLES=3 COT=true bash scripts/openweights_model/planner_asynchow.sh
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

MODEL="${MODEL:-Qwen/Qwen2.5-27B-Instruct}"
VLLM_BASE_URL="${VLLM_BASE_URL:-http://localhost:8000/v1}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-4096}"
BATCH="${BATCH:-8}"
MAX_EXAMPLES="${MAX_EXAMPLES:-100}"
NUM_WORKERS="${NUM_WORKERS:-8}"
ICL_EXAMPLES="${ICL_EXAMPLES:-3}"
COT="${COT:-true}"
SAFE_MODEL="${MODEL//\//_}"
SAVE_PATH="${SAVE_PATH:-results/asynchow/baselines/vllm_${SAFE_MODEL}/}"

export VLLM_BASE_URL

python -m src.experiments.run_baselines \
    --model-name      "vllm/${MODEL}" \
    --temperature     "${TEMPERATURE}" \
    --max-tokens      "${MAX_TOKENS}" \
    --benchmark-name  asynchow \
    --save-path       "${SAVE_PATH}" \
    --batch           "${BATCH}" \
    --max-examples    "${MAX_EXAMPLES}" \
    --num-workers     "${NUM_WORKERS}" \
    --icl-examples    "${ICL_EXAMPLES}" \
    --cot             "${COT}"
