#!/usr/bin/env bash
# LLM-as-Formalizer on synthetic gen-data using a locally hosted vLLM model.
#
# Prerequisites: vLLM server running (see start_vllm.sh).
#   bash scripts/openweights_model/start_vllm.sh &
#
# Usage:
#   DATA_PATH=data/nl_rewrite/my_file.json bash scripts/openweights_model/formalizer_synthetic.sh
#   MODEL=Qwen/Qwen3-32B DATA_PATH=data/nl_rewrite/my_file.json bash scripts/openweights_model/formalizer_synthetic.sh
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

MODEL="${MODEL:-Qwen/Qwen2.5-27B-Instruct}"
VLLM_BASE_URL="${VLLM_BASE_URL:-http://localhost:8000/v1}"
DATA_PATH="${DATA_PATH:-}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
BATCH="${BATCH:-8}"
MAX_EXAMPLES="${MAX_EXAMPLES:-500}"
NUM_WORKERS="${NUM_WORKERS:-8}"
NUM_SHOTS="${NUM_SHOTS:-0}"
SOLVER_RETRIES="${SOLVER_RETRIES:-3}"
LLM_RETRIES="${LLM_RETRIES:-3}"
SAFE_MODEL="${MODEL//\//_}"
STEM="$(basename "${DATA_PATH%.json}")"
SAVE_PATH="${SAVE_PATH:-results/synthetic/formalizer/vllm_${SAFE_MODEL}/${STEM}}"

if [[ -z "$DATA_PATH" ]]; then
    echo "Error: DATA_PATH is required. Set it to a local JSON file." >&2
    exit 1
fi

export VLLM_BASE_URL

python -m src.experiments.run_formalizer \
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
    --solver-retries  "${SOLVER_RETRIES}" \
    --llm-retries     "${LLM_RETRIES}"
