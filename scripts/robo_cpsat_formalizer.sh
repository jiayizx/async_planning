#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Configuration ────────────────────────────────────────────────────────
MODEL_NAME="${MODEL_NAME:-qwen3.6-35b-a3b}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
MAX_EXAMPLES="${MAX_EXAMPLES:-999}"
NUM_WORKERS="${NUM_WORKERS:-4}"
LLM_RETRIES="${LLM_RETRIES:-2}"
TIMEOUT="${TIMEOUT:-120}"
DATA_PATH="${DATA_PATH:-data/robotouille_single_agent_async.json}"
EXCLUDE_ENVS="${EXCLUDE_ENVS:-3.1_}"
BASE_LAYOUT="${BASE_LAYOUT:-true}"
STATE_AWARE="${STATE_AWARE:-true}"
if [ "${BASE_LAYOUT}" = "true" ]; then
    SEEDS=""
else
    SEEDS="${SEEDS:-42 84 126 168 210 252 294 336 378 420}"
fi

_MODEL_SLUG="${MODEL_NAME//\//_}"
SAVE_PATH="${SAVE_PATH:-results/robotouille/cpsat_formalizer/${_MODEL_SLUG}}"
if [ "${STATE_AWARE}" = "true" ]; then
    SAVE_PATH="${SAVE_PATH}_stateaware"
else
    SAVE_PATH="${SAVE_PATH}_plain"
fi
if [ "${BASE_LAYOUT}" = "true" ]; then
    SAVE_PATH="${SAVE_PATH}_base"
fi

EXTRA_ARGS=()
if [ "${STATE_AWARE}" = "true" ]; then
    EXTRA_ARGS+=(--state-aware)
fi

python3 -c "import ortools" >/dev/null 2>&1 || {
    echo "Missing Python package 'ortools' for CP-SAT." >&2
    echo "Install dependencies first, for example: python3 -m pip install -r requirements.txt" >&2
    exit 1
}

python3 -m src.experiments.robotouille.run_cpsat_formalizer \
    --model-name "${MODEL_NAME}" \
    --temperature "${TEMPERATURE}" \
    --max-tokens "${MAX_TOKENS}" \
    --save-path "${SAVE_PATH}" \
    --data-path "${DATA_PATH}" \
    --max-examples "${MAX_EXAMPLES}" \
    --num-workers "${NUM_WORKERS}" \
    --llm-retries "${LLM_RETRIES}" \
    --timeout "${TIMEOUT}" \
    ${EXCLUDE_ENVS:+--exclude-envs ${EXCLUDE_ENVS}} \
    ${SEEDS:+--seeds ${SEEDS}} \
    "${EXTRA_ARGS[@]}"
