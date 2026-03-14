#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Configuration ────────────────────────────────────────────────────────
MODEL_NAME="${MODEL_NAME:-gemini-3-flash}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
MAX_EXAMPLES="${MAX_EXAMPLES:-999}"
NUM_WORKERS="${NUM_WORKERS:-4}"
LLM_RETRIES="${LLM_RETRIES:-2}"
DATA_PATH="${DATA_PATH:-data/robotouille_single_agent_async.json}"
SAVE_PATH="${SAVE_PATH:-results/robotouille/planner/${MODEL_NAME//\//_}}"
# Official testing seeds from Robotouille paper (10 seeds × 10 envs = 100 instances)
# Leave empty to use base layout only: SEEDS=""
SEEDS="${SEEDS:-42 84 126 168 210 252 294 336 378 420}"

python -m src.experiments.robotouille.run_planner \
    --model-name "${MODEL_NAME}" \
    --temperature "${TEMPERATURE}" \
    --max-tokens "${MAX_TOKENS}" \
    --save-path "${SAVE_PATH}" \
    --data-path "${DATA_PATH}" \
    --max-examples "${MAX_EXAMPLES}" \
    --num-workers "${NUM_WORKERS}" \
    --llm-retries "${LLM_RETRIES}" \
    ${SEEDS:+--seeds ${SEEDS}}
