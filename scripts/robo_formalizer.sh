#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Configuration ────────────────────────────────────────────────────────
MODEL_NAME="${MODEL_NAME:-openai/gpt-5-mini}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-32768}"
BATCH="${BATCH:-16}"
MAX_EXAMPLES="${MAX_EXAMPLES:-999}" # -1 is 1
NUM_WORKERS="${NUM_WORKERS:-8}"
LLM_RETRIES="${LLM_RETRIES:-3}"
HISTORY_MODE="${HISTORY_MODE:-cumulative}" # cumulative | single-turn
DATA_PATH="${DATA_PATH:-data/robotouille_single_agent_async.json}"
# Official testing seeds from Robotouille paper (10 seeds × 10 envs = 100 instances)
# Leave empty to use base layout only: SEEDS=""
SEEDS="${SEEDS:-42 84 126 168 210 252 294 336 378 420}"
GENERATE_DOMAIN="${GENERATE_DOMAIN:-false}" # true = LLM generates domain+problem; false = problem-only
EFFECT_GOAL="${EFFECT_GOAL:-f}" # improve on the plan correctness
SOLVER="${SOLVER:-lama-first}"     # lama-first (fast classical) or optic (temporal)
if [ "${EFFECT_GOAL}" = "true" ]; then
    SAVE_PATH="${SAVE_PATH:-results/robotouille/formalizer+/$(echo ${MODEL_NAME//\//_})_problem_only}"
else
    SAVE_PATH="${SAVE_PATH:-results/robotouille/formalizer/$(echo ${MODEL_NAME//\//_})_problem_only}"
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
    --solver "${SOLVER}" \
    ${SEEDS:+--seeds ${SEEDS}} \
    ${EXTRA_ARGS}
