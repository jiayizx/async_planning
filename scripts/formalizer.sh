#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Configuration ────────────────────────────────────────────────────────
MODEL_NAME="${MODEL_NAME:-openai/gpt-4.1-mini}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-4096}"
BATCH="${BATCH:-16}"
MAX_EXAMPLES="${MAX_EXAMPLES:-100}"
BENCHMARK="${BENCHMARK:-asynchow}"
SAVE_PATH="${SAVE_PATH:-results/${BENCHMARK}/formalizer/${MODEL_NAME//\//_}}"

python -m src.experiments.run_formalizer \
    --model-name "${MODEL_NAME}" \
    --temperature "${TEMPERATURE}" \
    --max-tokens "${MAX_TOKENS}" \
    --benchmark-name "${BENCHMARK}" \
    --save-path "${SAVE_PATH}" \
    --batch "${BATCH}" \
    --max-examples "${MAX_EXAMPLES}" \
