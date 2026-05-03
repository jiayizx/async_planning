#!/usr/bin/env bash
# LLM-as-Formalizer on AsyncHow using a locally hosted model.
# Starts an inference server (SGLang by default, vLLM as fallback),
# runs the experiment, then shuts the server down.
#
# Usage:
#   bash scripts/openweights_model/formalizer_asynchow.sh
#   MODEL=Qwen/Qwen3-32B bash scripts/openweights_model/formalizer_asynchow.sh
#   BACKEND=vllm bash scripts/openweights_model/formalizer_asynchow.sh
#   MTP=true bash scripts/openweights_model/formalizer_asynchow.sh   # SGLang speculative decoding
#   MODEL_DIR=/data/models/Qwen3.5-27B bash scripts/openweights_model/formalizer_asynchow.sh
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

# Inference server settings
BACKEND="${BACKEND:-vllm}"          # sglang | vllm
MODEL="${MODEL:-Qwen/Qwen3.5-27B}"
MODEL_DIR="${MODEL_DIR:-}"          # if set, skip download and use this local path
PORT="${PORT:-8000}"
TENSOR_PARALLEL="${TENSOR_PARALLEL:-1}"
MAX_MODEL_LEN="${MAX_MODEL_LEN:-32768}"
GPU_MEMORY_UTIL="${GPU_MEMORY_UTIL:-0.90}"
MTP="${MTP:-false}"                   # SGLang only: enable Multi-Token Prediction speculative decoding

# Experiment settings
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
BATCH="${BATCH:-8}"
MAX_EXAMPLES="${MAX_EXAMPLES:-10}"
NUM_WORKERS="${NUM_WORKERS:-8}"
NUM_SHOTS="${NUM_SHOTS:-0}"
SOLVER_RETRIES="${SOLVER_RETRIES:-3}"
LLM_RETRIES="${LLM_RETRIES:-3}"
EFFECT_GOAL="${EFFECT_GOAL:-0}"      # 1 = Formalizer+ (all at-end effects in :goal); 0 = Formalizer
SAFE_MODEL="${MODEL//\//_}"
SAVE_PATH="${SAVE_PATH:-results/asynchow/formalizer/${BACKEND}_${SAFE_MODEL}_${NUM_SHOTS}shot}"

VLLM_BASE_URL="http://localhost:${PORT}/v1"
export VLLM_BASE_URL

# Resolve local model path (run download_model.sh first if not yet downloaded)
if [[ -z "$MODEL_DIR" ]]; then
    SAFE_MODEL_DIR="${MODEL//\//_}"
    MODEL_DIR="${ROOT_DIR}/models/${SAFE_MODEL_DIR}"
fi
if [[ ! -d "$MODEL_DIR" ]]; then
    echo "Error: model not found at $MODEL_DIR" >&2
    echo "Run: bash scripts/openweights_model/download_model.sh" >&2
    exit 1
fi
echo "Using model from: $MODEL_DIR"

# Build server launch command
if [[ "$BACKEND" == "sglang" ]]; then
    SERVER_CMD=(
        python -m sglang.launch_server
        --model-path         "$MODEL_DIR"
        --port               "$PORT"
        --tp-size            "$TENSOR_PARALLEL"
        --mem-fraction-static "$GPU_MEMORY_UTIL"
        --context-length     "$MAX_MODEL_LEN"
        --reasoning-parser   qwen3
        --trust-remote-code
    )
    if [[ "$MTP" == "true" ]]; then
        SERVER_CMD+=(
            --speculative-algo        NEXTN
            --speculative-num-steps   3
            --speculative-eagle-topk  1
            --speculative-num-draft-tokens 4
        )
    fi
elif [[ "$BACKEND" == "vllm" ]]; then
    SERVER_CMD=(
        vllm serve "$MODEL_DIR"
        --port                  "$PORT"
        --tensor-parallel-size  "$TENSOR_PARALLEL"
        --max-model-len         "$MAX_MODEL_LEN"
        --gpu-memory-utilization "$GPU_MEMORY_UTIL"
        --enable-prefix-caching
        --disable-log-stats
        --trust-remote-code
    )
else
    echo "Error: unknown BACKEND='$BACKEND'. Use 'sglang' or 'vllm'." >&2
    exit 1
fi

# Start inference server in background
echo "Starting $BACKEND server (model: $MODEL, port: $PORT, MTP: $MTP)..."
"${SERVER_CMD[@]}" &
VLLM_PID=$!
trap "echo 'Stopping $BACKEND server...'; kill $VLLM_PID 2>/dev/null || true" EXIT

# Wait for server to be ready
echo "Waiting for $BACKEND server to be ready..."
until curl -sf "http://localhost:${PORT}/health" > /dev/null 2>&1; do
    if ! kill -0 "$VLLM_PID" 2>/dev/null; then
        echo "Error: $BACKEND server exited unexpectedly." >&2
        exit 1
    fi
    sleep 5
done
echo "$BACKEND server is ready."

EXTRA_ARGS=()
[[ "$EFFECT_GOAL" == "1" ]] && EXTRA_ARGS+=(--effect-goal)

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
    --solver-retries  "${SOLVER_RETRIES}" \
    --llm-retries     "${LLM_RETRIES}" \
    "${EXTRA_ARGS[@]}"
