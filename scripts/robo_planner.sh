#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Configuration ────────────────────────────────────────────────────────
MODEL_NAME="${MODEL_NAME:-qwen3.6-35b-a3b}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
MAX_EXAMPLES="${MAX_EXAMPLES:-999}"
NUM_WORKERS="${NUM_WORKERS:-8}"
LLM_RETRIES="${LLM_RETRIES:-2}"
DATA_PATH="${DATA_PATH:-data/robotouille_single_agent_async.json}"
EXCLUDE_ENVS="${EXCLUDE_ENVS:-3.1_}"
# Official testing seeds from Robotouille paper (10 seeds × 10 envs = 100 instances)
# Set BASE_LAYOUT=true to run base layout only (no seeds, no distractors)
BASE_LAYOUT="${BASE_LAYOUT:-true}"
if [ "${BASE_LAYOUT}" = "true" ]; then
    SEEDS=""
else
    SEEDS="${SEEDS:-42 84 126 168 210 252 294 336 378 420}"
fi
_MODEL_SLUG="${MODEL_NAME//\//_}"
SAVE_PATH="${SAVE_PATH:-results/robotouille/planner/${_MODEL_SLUG}}"
if [ "${BASE_LAYOUT}" = "true" ]; then
    SAVE_PATH="${SAVE_PATH}_base"
fi

python -m src.experiments.robotouille.run_planner \
    --model-name "${MODEL_NAME}" \
    --temperature "${TEMPERATURE}" \
    --max-tokens "${MAX_TOKENS}" \
    --save-path "${SAVE_PATH}" \
    --data-path "${DATA_PATH}" \
    --max-examples "${MAX_EXAMPLES}" \
    --num-workers "${NUM_WORKERS}" \
    --llm-retries "${LLM_RETRIES}" \
    ${EXCLUDE_ENVS:+--exclude-envs ${EXCLUDE_ENVS}} \
    ${SEEDS:+--seeds ${SEEDS}}
