#!/usr/bin/env bash
# Start a vLLM server hosting an open-weights model.
#
# Usage:
#   bash scripts/openweights_model/start_vllm.sh            # defaults below
#   MODEL=Qwen/Qwen3-32B PORT=8001 bash scripts/openweights_model/start_vllm.sh
#
# After starting, export VLLM_BASE_URL=http://localhost:<PORT>/v1 if using a
# non-default port, then run any experiment script.
set -euo pipefail

MODEL="${MODEL:-Qwen/Qwen2.5-27B-Instruct}"
PORT="${PORT:-8000}"
TENSOR_PARALLEL="${TENSOR_PARALLEL:-1}"          # set to number of GPUs
MAX_MODEL_LEN="${MAX_MODEL_LEN:-32768}"
GPU_MEMORY_UTIL="${GPU_MEMORY_UTIL:-0.90}"

echo "Starting vLLM server"
echo "  model            : $MODEL"
echo "  port             : $PORT"
echo "  tensor_parallel  : $TENSOR_PARALLEL"
echo "  max_model_len    : $MAX_MODEL_LEN"

vllm serve "$MODEL" \
    --port "$PORT" \
    --tensor-parallel-size "$TENSOR_PARALLEL" \
    --max-model-len "$MAX_MODEL_LEN" \
    --gpu-memory-utilization "$GPU_MEMORY_UTIL" \
    --trust-remote-code
