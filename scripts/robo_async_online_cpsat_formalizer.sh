#!/usr/bin/env bash
# Run the minimal Robo-Async online CP-SAT formalizer baseline.
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

MODEL_NAME="${MODEL_NAME:-openrouter/gemini-3-flash}"
PYTHON_BIN="${PYTHON_BIN:-python3}"
TASKS_DIR="${TASKS_DIR:-data/robo_async_online/episodes}"
RESULTS_ROOT="${RESULTS_ROOT:-results/robo_async_online}"
TIMEOUT="${TIMEOUT:-120}"
NUM_WORKERS="${NUM_WORKERS:-8}"
MAX_TASKS="${MAX_TASKS:-}"
IMPLICIT="${IMPLICIT:-false}"
ORACLE_SPEC="${ORACLE_SPEC:-false}"
INCLUDE_TAGS="${INCLUDE_TAGS:-}"
EXCLUDE_TAGS="${EXCLUDE_TAGS:-}"

_MODEL_SLUG="${MODEL_NAME//\//_}"
_MODE="$( [ "${IMPLICIT}" = "true" ] && echo "implicit" || echo "explicit" )"
[ "${ORACLE_SPEC}" = "true" ] && _MODE="${_MODE}_oracle"
_TAG_SLUG=""
[ -n "${INCLUDE_TAGS}" ] && _TAG_SLUG="${_TAG_SLUG}_include-${INCLUDE_TAGS//,/_}"
[ -n "${EXCLUDE_TAGS}" ] && _TAG_SLUG="${_TAG_SLUG}_exclude-${EXCLUDE_TAGS//,/_}"
OUT_DIR="${OUT_DIR:-${RESULTS_ROOT}/cpsat_formalizer/${_MODEL_SLUG}/${_MODE}${_TAG_SLUG}}"

echo "Tasks:       ${TASKS_DIR}"
echo "Out:         ${OUT_DIR}"
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

"${PYTHON_BIN}" -m src.experiments.robo_async.run_online_cpsat_formalizer \
    --model       "${MODEL_NAME}" \
    --tasks       "${TASKS_DIR}" \
    --out         "${OUT_DIR}" \
    --timeout     "${TIMEOUT}" \
    --num-workers "${NUM_WORKERS}" \
    ${EXTRA_ARGS}
