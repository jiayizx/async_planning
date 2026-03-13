#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Configuration ────────────────────────────────────────────────────────
MODEL_NAME="${MODEL_NAME:-gemini-3-flash}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-4096}"
BATCH="${BATCH:-8}"
MAX_EXAMPLES="${MAX_EXAMPLES:-1}" # -1 is 1
NUM_WORKERS="${NUM_WORKERS:-4}"
LLM_RETRIES="${LLM_RETRIES:-3}"
HISTORY_MODE="${HISTORY_MODE:-cumulative}" # cumulative | single-turn
DATA_PATH="${DATA_PATH:-data/robotouille_single_agent_async.json}"
SAVE_PATH="${SAVE_PATH:-results/robotouille/formalizer/${MODEL_NAME//\//_}}"

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
    --history-mode "${HISTORY_MODE}"
