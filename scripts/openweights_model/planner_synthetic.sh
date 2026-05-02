#!/usr/bin/env bash
# LLM-as-Planner (baselines) on synthetic gen-data using a locally hosted vLLM model.
#
# Prerequisites: vLLM server running (see start_vllm.sh).
#   bash scripts/openweights_model/start_vllm.sh &
#
# Usage:
#   DATA_PATH=data/nl_rewrite/my_file.json bash scripts/openweights_model/planner_synthetic.sh
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

MODEL="${MODEL:-Qwen/Qwen2.5-27B-Instruct}"
VLLM_BASE_URL="${VLLM_BASE_URL:-http://localhost:8000/v1}"
DATA_PATH="${DATA_PATH:-}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-4096}"
BATCH="${BATCH:-8}"
MAX_EXAMPLES="${MAX_EXAMPLES:-500}"
NUM_WORKERS="${NUM_WORKERS:-8}"
ICL_EXAMPLES="${ICL_EXAMPLES:-3}"
COT="${COT:-true}"
SAFE_MODEL="${MODEL//\//_}"
STEM="$(basename "${DATA_PATH%.json}")"
SAVE_PATH="${SAVE_PATH:-results/synthetic/baselines/vllm_${SAFE_MODEL}/${STEM}/}"

if [[ -z "$DATA_PATH" ]]; then
    echo "Error: DATA_PATH is required. Set it to a local JSON file." >&2
    exit 1
fi

export VLLM_BASE_URL

python -m src.experiments.run_baselines \
    --model-name      "vllm/${MODEL}" \
    --temperature     "${TEMPERATURE}" \
    --max-tokens      "${MAX_TOKENS}" \
    --benchmark-name  gen-data \
    --data-path       "${DATA_PATH}" \
    --save-path       "${SAVE_PATH}" \
    --batch           "${BATCH}" \
    --max-examples    "${MAX_EXAMPLES}" \
    --num-workers     "${NUM_WORKERS}" \
    --icl-examples    "${ICL_EXAMPLES}" \
    --cot             "${COT}"
