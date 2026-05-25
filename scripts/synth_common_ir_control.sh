#!/usr/bin/env bash
# Run Common IR control experiments on AsyncPlan-XXL.
#
# Pipelines produced for each selected graph size:
#   NL   -> Direct CP-SAT
#   NL   -> Direct PDDL
#   NL   -> Common IR -> CP-SAT
#   NL   -> Common IR -> PDDL
#   Gold -> Common IR -> CP-SAT
#   Gold -> Common IR -> PDDL
#
# Default sizes follow the recommended control subset: 10, 30, 50, 70, 100.
# Set SIZES="5 10 15 20 30 40 50 60 70 80 90 100" to run the full curve.

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

DATA_DIR="${DATA_DIR:-data/async_planning}"
SAVE_DIR="${SAVE_DIR:-results/gen-data/common_ir_control}"
MODEL_NAME="${MODEL_NAME:-openai/gpt-5-mini}"
SIZES="${SIZES:-10 30 50 70 100}"
MAX_EXAMPLES="${MAX_EXAMPLES:-0}" # 0 = all examples in each file
NUM_WORKERS="${NUM_WORKERS:-8}"
SOLVER_WORKERS="${SOLVER_WORKERS:-8}"
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
TIMEOUT="${TIMEOUT:-120}"
PDDL_SOLVER="${PDDL_SOLVER:-optic}"
PATTERN_SUFFIX="${PATTERN_SUFFIX:-nlrewrite_openrouter-gemini-3-flash.json}"
RUN_NL="${RUN_NL:-true}"
RUN_GOLD="${RUN_GOLD:-true}"
RUN_DIRECT="${RUN_DIRECT:-true}"
LLM_RETRIES="${LLM_RETRIES:-0}"
PDDL_BATCH="${PDDL_BATCH:-16}"

if [ "${MAX_EXAMPLES}" = "0" ]; then
    DIRECT_MAX_EXAMPLES=999999
else
    DIRECT_MAX_EXAMPLES="${MAX_EXAMPLES}"
fi

SAFE_MODEL="${MODEL_NAME//\//_}"
SAFE_MODEL="${SAFE_MODEL//:/_}"

echo "============================================================"
echo " Common IR Control Experiment on AsyncPlan-XXL"
echo "============================================================"
echo "  data-dir       : ${DATA_DIR}"
echo "  save-dir       : ${SAVE_DIR}"
echo "  model          : ${MODEL_NAME}"
echo "  sizes          : ${SIZES}"
echo "  max-examples   : ${MAX_EXAMPLES}"
echo "  run direct     : ${RUN_DIRECT}"
echo "  run NL IR      : ${RUN_NL}"
echo "  run Gold IR    : ${RUN_GOLD}"
echo "  target solver  : CP-SAT + ${PDDL_SOLVER}"
echo "============================================================"

FAILED=()

for SIZE in ${SIZES}; do
    DATA_PATH="${DATA_DIR}/nodes${SIZE}_n50_s42_${PATTERN_SUFFIX}"
    if [ ! -f "${DATA_PATH}" ]; then
        echo "Missing data file: ${DATA_PATH}" >&2
        FAILED+=("${DATA_PATH}")
        continue
    fi

    STEM="$(basename "${DATA_PATH}" .json)"
    OUT_DIR="${SAVE_DIR}/${SAFE_MODEL}/${STEM}"

    echo ""
    echo "────────────────────────────────────────────────────────────"
    echo " Size      : ${SIZE}"
    echo " Data      : ${DATA_PATH}"
    echo " Output    : ${OUT_DIR}"
    echo "────────────────────────────────────────────────────────────"

    if [ "${RUN_DIRECT}" = "true" ]; then
        python3 -m src.experiments.run_cpsat_formalizer \
            --model-name "${MODEL_NAME}" \
            --temperature "${TEMPERATURE}" \
            --max-tokens "${MAX_TOKENS}" \
            --benchmark-name gen-data \
            --data-path "${DATA_PATH}" \
            --save-path "${OUT_DIR}/direct/cpsat" \
            --max-examples "${DIRECT_MAX_EXAMPLES}" \
            --num-workers "${NUM_WORKERS}" \
            --llm-retries "${LLM_RETRIES}" \
            --timeout "${TIMEOUT}"

        python3 -m src.experiments.run_formalizer \
            --model-name "${MODEL_NAME}" \
            --temperature "${TEMPERATURE}" \
            --max-tokens "${MAX_TOKENS}" \
            --benchmark-name gen-data \
            --data-path "${DATA_PATH}" \
            --save-path "${OUT_DIR}/direct/pddl" \
            --max-examples "${DIRECT_MAX_EXAMPLES}" \
            --num-workers "${NUM_WORKERS}" \
            --batch "${PDDL_BATCH}" \
            --llm-retries "${LLM_RETRIES}"
    fi

    if [ "${RUN_NL}" = "true" ]; then
        python3 -m src.experiments.run_common_ir_control \
            --data-path "${DATA_PATH}" \
            --out "${OUT_DIR}" \
            --ir-source nl \
            --target both \
            --model-name "${MODEL_NAME}" \
            --temperature "${TEMPERATURE}" \
            --max-tokens "${MAX_TOKENS}" \
            --max-examples "${MAX_EXAMPLES}" \
            --num-workers "${NUM_WORKERS}" \
            --solver-workers "${SOLVER_WORKERS}" \
            --timeout "${TIMEOUT}" \
            --pddl-solver "${PDDL_SOLVER}"
    fi

    if [ "${RUN_GOLD}" = "true" ]; then
        python3 -m src.experiments.run_common_ir_control \
            --data-path "${DATA_PATH}" \
            --out "${OUT_DIR}" \
            --ir-source gold \
            --target both \
            --model-name "${MODEL_NAME}" \
            --max-examples "${MAX_EXAMPLES}" \
            --solver-workers "${SOLVER_WORKERS}" \
            --timeout "${TIMEOUT}" \
            --pddl-solver "${PDDL_SOLVER}"
    fi
done

if [ "${#FAILED[@]}" -gt 0 ]; then
    echo ""
    echo "Missing/failed files:" >&2
    printf '  %s\n' "${FAILED[@]}" >&2
    exit 1
fi

echo ""
echo "Done."
