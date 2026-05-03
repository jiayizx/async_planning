#!/usr/bin/env bash
# LLM-as-Formalizer on synthetic gen-data using a locally hosted vLLM model.
# Starts a vLLM server, runs the experiment, then shuts it down.
#
# Usage:
#   DATA_PATH=data/nl_rewrite/my_file.json bash scripts/openweights_model/formalizer_synthetic.sh
#   MODEL=Qwen/Qwen3-32B DATA_PATH=data/nl_rewrite/my_file.json bash scripts/openweights_model/formalizer_synthetic.sh
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
DATA_PATH="${DATA_PATH:-}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
BATCH="${BATCH:-8}"
MAX_EXAMPLES="${MAX_EXAMPLES:-500}"
NUM_WORKERS="${NUM_WORKERS:-8}"
NUM_SHOTS="${NUM_SHOTS:-0}"
SOLVER_RETRIES="${SOLVER_RETRIES:-3}"
LLM_RETRIES="${LLM_RETRIES:-3}"
EFFECT_GOAL="${EFFECT_GOAL:-0}"      # 1 = Formalizer+ (all at-end effects in :goal); 0 = Formalizer
_VARIANT=$([[ "$EFFECT_GOAL" == "1" ]] && echo "_plus" || echo "")
SAFE_MODEL="${MODEL//\//_}"
STEM="$(basename "${DATA_PATH%.json}")"
SAVE_PATH="${SAVE_PATH:-results/synthetic/formalizer/vllm_${SAFE_MODEL}/${STEM}}"

if [[ -z "$DATA_PATH" ]]; then
    echo "Error: DATA_PATH is required. Set it to a local JSON file." >&2
    exit 1
fi

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
    --llm-retries     "${LLM_RETRIES}" \
    $([[ "$EFFECT_GOAL" == "1" ]] && echo "--effect-goal") \
