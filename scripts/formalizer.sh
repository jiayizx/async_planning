#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Configuration ────────────────────────────────────────────────────────
MODEL_NAME="${MODEL_NAME:-openai/gpt-4.1-mini}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
BATCH="${BATCH:-16}"
MAX_EXAMPLES="${MAX_EXAMPLES:-100}"
NUM_WORKERS="${NUM_WORKERS:-8}" # limit the number of workers to avoid hitting rate limits
NUM_SHOTS="${NUM_SHOTS:-0}"     # number of few-shot examples (0-3)
SOLVER_RETRIES="${SOLVER_RETRIES:-3}" # max retries for transient solver errors
LLM_RETRIES="${LLM_RETRIES:-3}"      # max retries where LLM fixes based on error feedback
BENCHMARK="${BENCHMARK:-asynchow}"
SAVE_PATH="${SAVE_PATH:-results/${BENCHMARK}/formalizer/${MODEL_NAME//\//_}_${NUM_SHOTS}shot}"

python -m src.experiments.run_formalizer \
    --model-name "${MODEL_NAME}" \
    --temperature "${TEMPERATURE}" \
    --max-tokens "${MAX_TOKENS}" \
    --benchmark-name "${BENCHMARK}" \
    --save-path "${SAVE_PATH}" \
    --batch "${BATCH}" \
    --max-examples "${MAX_EXAMPLES}" \
    --num-workers "${NUM_WORKERS}" \
    --num-shots "${NUM_SHOTS}" \
    --solver-retries "${SOLVER_RETRIES}" \
    --llm-retries "${LLM_RETRIES}" \
