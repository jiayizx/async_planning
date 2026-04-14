#!/usr/bin/env bash
# Run the Robo-Async direct planner baseline.
#
# LLM directly generates a temporal plan (no PDDL formalization).
# Pipeline: NL description → LLM → OPTIC-format plan → engine evaluation.
#
# Usage:
#   bash scripts/robo_async_planner.sh
#   MODEL_NAME=gemini-3-flash bash scripts/robo_async_planner.sh
#   MODEL_NAME=openai/gpt-5-mini MAX_TASKS=3 bash scripts/robo_async_planner.sh
#   IMPLICIT=true MODEL_NAME=gemini-3-flash bash scripts/robo_async_planner.sh
#   DATASET=challenge IMPLICIT=true MODEL_NAME=openai/gpt-5-mini bash scripts/robo_async_planner.sh
#
# Environment variables:
#   MODEL_NAME   LLM to use                           [openrouter/gemini-3-flash]
#   DATASET      Dataset split: robo_derived|challenge [challenge]
#   TASKS_DIR    Directory with task JSON files       [auto from DATASET]
#   OUT_DIR      Results output directory             [auto from DATASET/model/mode]
#   NUM_WORKERS  Parallel LLM workers (batch_chat)    [8]
#   MAX_TASKS    Limit number of tasks (for tests)    [unset = all]
#   IMPLICIT     Hide dependency hints in NL          [false]
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

MODEL_NAME="${MODEL_NAME:-openrouter/gemini-3-flash}"
DATASET="${DATASET:-challenge}"
PYTHON_BIN="${PYTHON_BIN:-python3}"
case "${DATASET}" in
  robo_derived)
    DEFAULT_TASKS_DIR="data/robo_async/tasks"
    DEFAULT_RESULTS_ROOT="results/robo_async"
    ;;
  challenge)
    DEFAULT_TASKS_DIR="data/robo_async_challenge/tasks"
    DEFAULT_RESULTS_ROOT="results/robo_async_challenge"
    ;;
  *)
    echo "Unknown DATASET='${DATASET}' (expected robo_derived or challenge)" >&2
    exit 2
    ;;
esac
TASKS_DIR="${TASKS_DIR:-${DEFAULT_TASKS_DIR}}"
NUM_WORKERS="${NUM_WORKERS:-8}"
MAX_TASKS="${MAX_TASKS:-}"
IMPLICIT="${IMPLICIT:-false}"

_MODEL_SLUG="${MODEL_NAME//\//_}"
_MODE="$( [ "${IMPLICIT}" = "true" ] && echo "implicit" || echo "explicit" )"
OUT_DIR="${OUT_DIR:-${DEFAULT_RESULTS_ROOT}/planner/${_MODEL_SLUG}/${_MODE}}"

echo "Dataset:  ${DATASET}"
echo ""

EXTRA_ARGS=""
[ -n "${MAX_TASKS}" ] && EXTRA_ARGS="${EXTRA_ARGS} --max ${MAX_TASKS}"
[ "${IMPLICIT}" = "true" ] && EXTRA_ARGS="${EXTRA_ARGS} --implicit"

"${PYTHON_BIN}" -m src.experiments.robo_async.run_planner \
    --model       "${MODEL_NAME}" \
    --tasks       "${TASKS_DIR}" \
    --out         "${OUT_DIR}" \
    --num-workers "${NUM_WORKERS}" \
    ${EXTRA_ARGS}
