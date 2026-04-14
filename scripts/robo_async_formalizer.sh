#!/usr/bin/env bash
# Run the Robo-Async formalizer pipeline.
#
# Pipeline per task:
#   1. Task JSON → NL description
#   2. LLM generates PDDL 2.1 (domain + problem)
#   3. OPTIC solves the PDDL → temporal plan
#   4. Engine evaluates plan → success, makespan, makespan_ratio
#
# Usage:
#   bash scripts/robo_async_formalizer.sh
#   MODEL_NAME=gemini-3-flash bash scripts/robo_async_formalizer.sh
#   MODEL_NAME=openai/gpt-5-mini MAX_TASKS=3 bash scripts/robo_async_formalizer.sh
#   IMPLICIT=true MODEL_NAME=gemini-3-flash bash scripts/robo_async_formalizer.sh
#   DATASET=challenge IMPLICIT=true MODEL_NAME=openai/gpt-5-mini bash scripts/robo_async_formalizer.sh
#
# Environment variables:
#   MODEL_NAME   LLM to use                           [openrouter/gemini-3-flash]
#   DATASET      Dataset split: robo_derived|challenge [challenge]
#   TASKS_DIR    Directory with task JSON files       [auto from DATASET]
#   OUT_DIR      Results output directory             [auto from DATASET/model/mode]
#   TIMEOUT      OPTIC solver timeout (seconds)       [120]
#   NUM_WORKERS  Parallel LLM workers (batch_chat)    [8]
#   BATCH        Parallel OPTIC solver workers        [8]
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
TIMEOUT="${TIMEOUT:-120}"
NUM_WORKERS="${NUM_WORKERS:-8}"
BATCH="${BATCH:-8}"
MAX_TASKS="${MAX_TASKS:-}"
IMPLICIT="${IMPLICIT:-true}"

_MODEL_SLUG="${MODEL_NAME//\//_}"
_MODE="$( [ "${IMPLICIT}" = "true" ] && echo "implicit" || echo "explicit" )"
OUT_DIR="${OUT_DIR:-${DEFAULT_RESULTS_ROOT}/formalizer/${_MODEL_SLUG}/${_MODE}}"

echo "Dataset:  ${DATASET}"
echo ""

EXTRA_ARGS=""
[ -n "${MAX_TASKS}" ] && EXTRA_ARGS="${EXTRA_ARGS} --max ${MAX_TASKS}"
[ "${IMPLICIT}" = "true" ] && EXTRA_ARGS="${EXTRA_ARGS} --implicit"

"${PYTHON_BIN}" -m src.experiments.robo_async.run_formalizer \
    --model       "${MODEL_NAME}" \
    --tasks       "${TASKS_DIR}" \
    --out         "${OUT_DIR}" \
    --timeout     "${TIMEOUT}" \
    --num-workers "${NUM_WORKERS}" \
    --batch       "${BATCH}" \
    ${EXTRA_ARGS}
