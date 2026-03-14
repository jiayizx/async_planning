#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Configuration ────────────────────────────────────────────────────────
MODEL_NAME="${MODEL_NAME:-openai/gpt-5-mini}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
BATCH="${BATCH:-8}"
MAX_EXAMPLES="${MAX_EXAMPLES:-20}" # -1 is 1
NUM_WORKERS="${NUM_WORKERS:-4}"
LLM_RETRIES="${LLM_RETRIES:-3}"
HISTORY_MODE="${HISTORY_MODE:-cumulative}" # cumulative | single-turn
DATA_PATH="${DATA_PATH:-data/robotouille_single_agent_async.json}"
GENERATE_DOMAIN="${GENERATE_DOMAIN:-false}" # true = LLM generates domain+problem; false = problem-only
EFFECT_GOAL="${EFFECT_GOAL:-true}" # improve on the plan correctness
if [ "${EFFECT_GOAL}" = "true" ]; then
    SAVE_PATH="${SAVE_PATH:-results/robotouille/formalizer+/$(echo ${MODEL_NAME//\//_})}"
else
    SAVE_PATH="${SAVE_PATH:-results/robotouille/formalizer/$(echo ${MODEL_NAME//\//_})}"
fi

EXTRA_ARGS=""
if [ "${GENERATE_DOMAIN}" = "true" ]; then
    EXTRA_ARGS="${EXTRA_ARGS} --generate-domain"
fi
if [ "${EFFECT_GOAL}" = "true" ]; then
    EXTRA_ARGS="${EXTRA_ARGS} --effect-goal"
fi

python -m src.experiments.robotouille.run_formalizer \
    --model-name "${MODEL_NAME}" \
    --temperature "${TEMPERATURE}" \
    --max-tokens "${MAX_TOKENS}" \
    --save-path "${SAVE_PATH}" \
    --data-path "${DATA_PATH}" \
    --batch "${BATCH}" \
    --max-examples "${MAX_EXAMPLES}" \
    --num-workers "${NUM_WORKERS}" \
    --llm-retries "${LLM_RETRIES}" \
    --history-mode "${HISTORY_MODE}" \
    ${EXTRA_ARGS}
