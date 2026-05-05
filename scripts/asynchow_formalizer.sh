#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Configuration ────────────────────────────────────────────────────────
# MODEL_NAME="${MODEL_NAME:-gemini-3-flash}"
MODEL_NAME="${MODEL_NAME:-openai/gpt-5-mini}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
BATCH="${BATCH:-16}"
MAX_EXAMPLES="${MAX_EXAMPLES:-99999}" # for whole dataset
NUM_WORKERS="${NUM_WORKERS:-8}" # limit the number of workers to avoid hitting rate limits
NUM_SHOTS="${NUM_SHOTS:-0}"     # number of few-shot examples (0-3)
LLM_RETRIES="${LLM_RETRIES:-3}"      # max retries where LLM fixes PDDL based on solver error feedback
EFFECT_GOAL="${EFFECT_GOAL:-0}"      # 1 = Formalizer+ (all at-end effects in :goal); 0 = Formalizer
BENCHMARK="${BENCHMARK:-asynchow}"
_VARIANT=$([[ "$EFFECT_GOAL" == "1" ]] && echo "_plus" || echo "")
SAVE_PATH="${SAVE_PATH:-results/${BENCHMARK}/formalizer_310/${MODEL_NAME//\//_}_${NUM_SHOTS}shot${_VARIANT}}"

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
    --llm-retries "${LLM_RETRIES}" \
    $([[ "$EFFECT_GOAL" == "1" ]] && echo "--effect-goal") \
