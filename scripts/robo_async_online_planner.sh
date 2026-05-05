#!/usr/bin/env bash
# Run the minimal Robo-Async online planner baseline.
#
# Pipeline per episode:
#   1. Load initial episode state
#   2. Ask LLM for a future plan suffix
#   3. Inject online events at fixed times
#   4. Re-plan remaining work after each event
#   5. Evaluate the final combined plan
#
# Usage:
#   bash scripts/robo_async_online_planner.sh
#   MODEL_NAME=openai/gpt-5-mini MAX_TASKS=3 bash scripts/robo_async_online_planner.sh
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

MODEL_NAME="${MODEL_NAME:-openrouter/gemini-3-flash}"
PYTHON_BIN="${PYTHON_BIN:-python3}"
TASKS_DIR="${TASKS_DIR:-data/robo_async_online/episodes}"
RESULTS_ROOT="${RESULTS_ROOT:-results/robo_async_online_strict}"
NUM_WORKERS="${NUM_WORKERS:-8}"
MAX_TASKS="${MAX_TASKS:-}"
IMPLICIT="${IMPLICIT:-false}"
INCLUDE_TAGS="${INCLUDE_TAGS:-}"
EXCLUDE_TAGS="${EXCLUDE_TAGS:-}"

_MODEL_SLUG="${MODEL_NAME//\//_}"
_MODE="$( [ "${IMPLICIT}" = "true" ] && echo "implicit" || echo "explicit" )"
_TAG_SLUG=""
[ -n "${INCLUDE_TAGS}" ] && _TAG_SLUG="${_TAG_SLUG}_include-${INCLUDE_TAGS//,/_}"
[ -n "${EXCLUDE_TAGS}" ] && _TAG_SLUG="${_TAG_SLUG}_exclude-${EXCLUDE_TAGS//,/_}"
OUT_DIR="${OUT_DIR:-${RESULTS_ROOT}/planner/${_MODEL_SLUG}/${_MODE}${_TAG_SLUG}}"

echo "Tasks:       ${TASKS_DIR}"
echo "Out:         ${OUT_DIR}"
echo ""

EXTRA_ARGS=""
[ -n "${MAX_TASKS}" ] && EXTRA_ARGS="${EXTRA_ARGS} --max ${MAX_TASKS}"
[ "${IMPLICIT}" = "true" ] && EXTRA_ARGS="${EXTRA_ARGS} --implicit"
[ -n "${INCLUDE_TAGS}" ] && EXTRA_ARGS="${EXTRA_ARGS} --include-tags ${INCLUDE_TAGS}"
[ -n "${EXCLUDE_TAGS}" ] && EXTRA_ARGS="${EXTRA_ARGS} --exclude-tags ${EXCLUDE_TAGS}"

"${PYTHON_BIN}" -m src.experiments.robo_async.run_online_planner \
    --model       "${MODEL_NAME}" \
    --tasks       "${TASKS_DIR}" \
    --out         "${OUT_DIR}" \
    --num-workers "${NUM_WORKERS}" \
    ${EXTRA_ARGS}
