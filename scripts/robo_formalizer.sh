#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Configuration ────────────────────────────────────────────────────────
MODEL_NAME="${MODEL_NAME:-gemini-3-flash}"
# MODEL_NAME="${MODEL_NAME:-openai/gpt-5-mini}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-32768}"
BATCH="${BATCH:-16}"
MAX_EXAMPLES="${MAX_EXAMPLES:-999}" # -1 is 1
NUM_WORKERS="${NUM_WORKERS:-4}"
LLM_RETRIES="${LLM_RETRIES:-3}"
HISTORY_MODE="${HISTORY_MODE:-cumulative}" # cumulative | single-turn
DATA_PATH="${DATA_PATH:-data/robotouille_single_agent_async.json}"
# Official testing seeds from Robotouille paper (10 seeds × 10 envs = 100 instances)
# Leave empty to use base layout only: SEEDS=""
SEEDS="${SEEDS:-42 84 126 168 210 252 294 336 378 420}"
GENERATE_DOMAIN="${GENERATE_DOMAIN:-true}" # true = PDDL 2.1 + OPTIC (with TFD fallback); false = problem-only + LAMA
# Set EXCLUDE_SOUP=true to skip soup tasks (envs 5/6/7/8/9) that require container mechanics
# not covered by robotouille_async.pddl (in, addedto, isboiling, container_at, fill-bowl, etc.)
EXCLUDE_SOUP="${EXCLUDE_SOUP:-false}"
EFFECT_GOAL="${EFFECT_GOAL:-f}" # true = parameter-less constraints + effect goal; false = parameterized constraints + initial state goal
NUM_SHOTS="${NUM_SHOTS:-0}"     # few-shot examples in system prompt (problem-only mode only)
# Solver is determined automatically by GENERATE_DOMAIN
if [ "${GENERATE_DOMAIN}" = "true" ]; then
    SOLVER="optic"
else
    SOLVER="lama-first"
fi
_MODEL_SLUG="$(echo ${MODEL_NAME//\//_})"
if [ "${GENERATE_DOMAIN}" = "false" ]; then
    _MODEL_SLUG="${_MODEL_SLUG}_problem_only"
fi
if [ "${EFFECT_GOAL}" = "true" ]; then
    SAVE_PATH="${SAVE_PATH:-results/robotouille/formalizer+/${_MODEL_SLUG}}"
else
    SAVE_PATH="${SAVE_PATH:-results/robotouille/formalizer/${_MODEL_SLUG}}"
fi

EXTRA_ARGS=""
if [ "${GENERATE_DOMAIN}" = "true" ]; then
    EXTRA_ARGS="${EXTRA_ARGS} --generate-domain"
fi
if [ "${EFFECT_GOAL}" = "true" ]; then
    EXTRA_ARGS="${EXTRA_ARGS} --effect-goal"
fi
if [ "${EXCLUDE_SOUP}" = "true" ]; then
    EXTRA_ARGS="${EXTRA_ARGS} --exclude-envs 5_potato_soup 6_onion_soup 7_tomato_soup 8_onion_tomato_soup 9_onion_potato_soup"
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
    --num-shots "${NUM_SHOTS}" \
    ${SEEDS:+--seeds ${SEEDS}} \
    ${EXTRA_ARGS}
