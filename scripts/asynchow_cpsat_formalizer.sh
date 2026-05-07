#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Configuration ────────────────────────────────────────────────────────
MODEL_NAME="${MODEL_NAME:-qwen3.6-35b-a3b}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
MAX_EXAMPLES="${MAX_EXAMPLES:-99999}" # for whole dataset
NUM_WORKERS="${NUM_WORKERS:-8}"       # limit the number of workers to avoid hitting rate limits
LLM_RETRIES="${LLM_RETRIES:-3}"       # max retries where LLM fixes schedule JSON based on solver feedback
HISTORY_MODE="${HISTORY_MODE:-single-turn}"
TIMEOUT="${TIMEOUT:-120}"
BENCHMARK="${BENCHMARK:-asynchow}"
SAVE_PATH="${SAVE_PATH:-results/${BENCHMARK}/cpsat_formalizer_310/${MODEL_NAME//\//_}}"

python -m src.experiments.run_cpsat_formalizer \
    --model-name "${MODEL_NAME}" \
    --temperature "${TEMPERATURE}" \
    --max-tokens "${MAX_TOKENS}" \
    --benchmark-name "${BENCHMARK}" \
    --save-path "${SAVE_PATH}" \
    --max-examples "${MAX_EXAMPLES}" \
    --num-workers "${NUM_WORKERS}" \
    --llm-retries "${LLM_RETRIES}" \
    --history-mode "${HISTORY_MODE}" \
    --timeout "${TIMEOUT}"
