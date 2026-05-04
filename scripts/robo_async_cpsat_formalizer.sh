#!/usr/bin/env bash
# Run the Robo-Async scheduling formalizer pipeline:
#   Task JSON -> NL -> LLM scheduling JSON -> CP-SAT -> engine evaluation
#
# Usage:
#   bash scripts/robo_async_cpsat_formalizer.sh
#   MODEL_NAME=deepseek-v4-flash bash scripts/robo_async_cpsat_formalizer.sh
#   MODEL_NAME=deepseek-v4-pro bash scripts/robo_async_cpsat_formalizer.sh
#   MODEL_NAME=openai/gpt-5-mini MAX_TASKS=3 bash scripts/robo_async_cpsat_formalizer.sh
#   DATASET=challenge IMPLICIT=true MODEL_NAME=openai/gpt-5-mini bash scripts/robo_async_cpsat_formalizer.sh
#   ORACLE_SPEC=true MAX_TASKS=3 bash scripts/robo_async_cpsat_formalizer.sh
#
# Environment variables:
#   MODEL_NAME    LLM to use                            [openrouter/gemini-3-flash]
#   DATASET       Dataset split: robo_derived|challenge|challenge_v2 [challenge]
#   TASKS_DIR     Directory with task JSON files        [auto from DATASET]
#   OUT_DIR       Results output directory              [auto from DATASET/model/mode]
#   TIMEOUT       CP-SAT timeout (seconds)              [120]
#   NUM_WORKERS   Parallel LLM workers                  [8]
#   MAX_TASKS     Limit number of tasks                 [unset = all]
#   IMPLICIT      Hide dependency hints in NL           [true]
#   ORACLE_SPEC   Use gold task JSON instead of LLM     [false]
#   INCLUDE_TAGS  Comma-separated tags to include       [unset = all]
#   EXCLUDE_TAGS  Comma-separated tags to exclude       [unset = none]
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

MODEL_NAME="${MODEL_NAME:-deepseek/deepseek-v4-pro}"
DATASET="${DATASET:-challenge_v2}"
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
  challenge_v2)
    DEFAULT_TASKS_DIR="data/robo_async_challenge_v2/tasks"
    DEFAULT_RESULTS_ROOT="results/robo_async_challenge_v2"
    ;;
  *)
    echo "Unknown DATASET='${DATASET}' (expected robo_derived, challenge, or challenge_v2)" >&2
    exit 2
    ;;
esac

TASKS_DIR="${TASKS_DIR:-${DEFAULT_TASKS_DIR}}"
TIMEOUT="${TIMEOUT:-120}"
NUM_WORKERS="${NUM_WORKERS:-8}"
MAX_TASKS="${MAX_TASKS:-}"
IMPLICIT="${IMPLICIT:-false}"
ORACLE_SPEC="${ORACLE_SPEC:-false}"
# Tag filters are comma-separated split tags. Supported split tags:
#   easy, medium, hard_station, hard_temporal, hard_multiagent,
#   hard_optimization, hard_high_speedup
INCLUDE_TAGS="${INCLUDE_TAGS:-}"
EXCLUDE_TAGS="${EXCLUDE_TAGS:-}"

_MODEL_SLUG="${MODEL_NAME//\//_}"
_MODE="$( [ "${IMPLICIT}" = "true" ] && echo "implicit" || echo "explicit" )"
[ "${ORACLE_SPEC}" = "true" ] && _MODE="${_MODE}_oracle"
_TAG_SLUG=""
[ -n "${INCLUDE_TAGS}" ] && _TAG_SLUG="${_TAG_SLUG}_include-${INCLUDE_TAGS//,/_}"
[ -n "${EXCLUDE_TAGS}" ] && _TAG_SLUG="${_TAG_SLUG}_exclude-${EXCLUDE_TAGS//,/_}"
_TAG_SLUG="${_TAG_SLUG//\//_}"
OUT_DIR="${OUT_DIR:-${DEFAULT_RESULTS_ROOT}/cpsat_formalizer/${_MODEL_SLUG}/${_MODE}${_TAG_SLUG}}"

echo "Dataset:     ${DATASET}"
echo "CP-SAT path: ${OUT_DIR}"
echo ""

"${PYTHON_BIN}" -c "import ortools" >/dev/null 2>&1 || {
    echo "Missing Python package 'ortools' for CP-SAT." >&2
    echo "Install dependencies first, for example: ${PYTHON_BIN} -m pip install -r requirements.txt" >&2
    exit 1
}

EXTRA_ARGS=""
[ -n "${MAX_TASKS}" ] && EXTRA_ARGS="${EXTRA_ARGS} --max ${MAX_TASKS}"
[ "${IMPLICIT}" = "true" ] && EXTRA_ARGS="${EXTRA_ARGS} --implicit"
[ "${ORACLE_SPEC}" = "true" ] && EXTRA_ARGS="${EXTRA_ARGS} --oracle-spec"
[ -n "${INCLUDE_TAGS}" ] && EXTRA_ARGS="${EXTRA_ARGS} --include-tags ${INCLUDE_TAGS}"
[ -n "${EXCLUDE_TAGS}" ] && EXTRA_ARGS="${EXTRA_ARGS} --exclude-tags ${EXCLUDE_TAGS}"

"${PYTHON_BIN}" -m src.experiments.robo_async.run_cpsat_formalizer \
    --model       "${MODEL_NAME}" \
    --tasks       "${TASKS_DIR}" \
    --out         "${OUT_DIR}" \
    --timeout     "${TIMEOUT}" \
    --num-workers "${NUM_WORKERS}" \
    ${EXTRA_ARGS}
