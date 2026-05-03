#!/usr/bin/env bash
# LLM-as-Planner (baselines) on RoboTouille using a locally hosted vLLM model.
# Starts a vLLM server, runs the experiment, then shuts it down.
#
# Usage:
#   DATA_PATH=data/robotouille/test.json bash scripts/openweights_model/planner_robotouille.sh
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

# vLLM server settings
MODEL="${MODEL:-Qwen/Qwen3.5-27B}"
PORT="${PORT:-8000}"
TENSOR_PARALLEL="${TENSOR_PARALLEL:-1}"
MAX_MODEL_LEN="${MAX_MODEL_LEN:-32768}"
GPU_MEMORY_UTIL="${GPU_MEMORY_UTIL:-0.90}"

# Experiment settings
DATA_PATH="${DATA_PATH:-data/robotouille/test.json}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-4096}"
BATCH="${BATCH:-8}"
MAX_EXAMPLES="${MAX_EXAMPLES:-100}"
NUM_WORKERS="${NUM_WORKERS:-8}"
ICL_EXAMPLES="${ICL_EXAMPLES:-0}"
COT="${COT:-true}"
SAFE_MODEL="${MODEL//\//_}"
SAVE_PATH="${SAVE_PATH:-results/robotouille/baselines/vllm_${SAFE_MODEL}/}"

VLLM_BASE_URL="http://localhost:${PORT}/v1"
export VLLM_BASE_URL

# Start vLLM server in background
echo "Starting vLLM server (model: $MODEL, port: $PORT)..."
vllm serve "$MODEL" \
    --port "$PORT" \
    --tensor-parallel-size "$TENSOR_PARALLEL" \
    --max-model-len "$MAX_MODEL_LEN" \
    --gpu-memory-utilization "$GPU_MEMORY_UTIL" \
    --trust-remote-code &
VLLM_PID=$!
trap "echo 'Stopping vLLM server...'; kill $VLLM_PID 2>/dev/null || true" EXIT

# Wait for vLLM to be ready
echo "Waiting for vLLM server to be ready..."
until curl -sf "http://localhost:${PORT}/health" > /dev/null 2>&1; do
    if ! kill -0 "$VLLM_PID" 2>/dev/null; then
        echo "Error: vLLM server exited unexpectedly." >&2
        exit 1
    fi
    sleep 5
done
echo "vLLM server is ready."

python -m src.experiments.run_baselines \
    --model-name      "vllm/${MODEL}" \
    --temperature     "${TEMPERATURE}" \
    --max-tokens      "${MAX_TOKENS}" \
    --benchmark-name  robotouille \
    --data-path       "${DATA_PATH}" \
    --save-path       "${SAVE_PATH}" \
    --batch           "${BATCH}" \
    --max-examples    "${MAX_EXAMPLES}" \
    --num-workers     "${NUM_WORKERS}" \
    --icl-examples    "${ICL_EXAMPLES}" \
    --cot             "${COT}"
