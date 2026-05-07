#!/usr/bin/env bash
# Run LLM-as-Formalizer on all NL-rewritten synthetic datasets in a folder,
# using structured scheduling JSON + CP-SAT instead of PDDL + OPTIC.
#
# Parameters
# ──────────────────────────────────────────────────────────────────────────────
#   --data-dir DIR       Folder containing *_nlrewrite_*.json files  [data/async_planning]
#   --model MODEL        LLM model name                              [openrouter/gemini-3-flash]
#   --save-dir DIR       Root folder for results                     [results/gen-data-modified/cpsat_formalizer]
#   --max-examples N     Max examples per file (0 = all)             [400]
#   --llm-retries N      Max retries where LLM fixes from feedback   [3]
#   --num-workers N      Parallel workers                            [16]
#   --temperature F      Sampling temperature                        [0.0]
#   --max-tokens N       Max output tokens                           [32768]
#   --timeout F          CP-SAT timeout per example (seconds)        [120]
#   --history-mode MODE  cumulative | single-turn                    [single-turn]
#   --pattern GLOB       Filename glob within data-dir               [*nlrewrite_openrouter*.json]

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

DATA_DIR="data/async_planning"
MODEL="qwen3.6-35b-a3b"
SAVE_DIR="results/gen-data/cpsat_formalizer"
MAX_EXAMPLES=400
LLM_RETRIES=3
HISTORY_MODE="single-turn"
NUM_WORKERS=16
TEMPERATURE=0.0
MAX_TOKENS=32768
TIMEOUT=120
PATTERN="*nlrewrite_openrouter*.json"

while [[ $# -gt 0 ]]; do
    case "$1" in
        --data-dir)       DATA_DIR="$2";       shift 2 ;;
        --model)          MODEL="$2";          shift 2 ;;
        --save-dir)       SAVE_DIR="$2";       shift 2 ;;
        --max-examples)   MAX_EXAMPLES="$2";   shift 2 ;;
        --llm-retries)    LLM_RETRIES="$2";    shift 2 ;;
        --history-mode)   HISTORY_MODE="$2";   shift 2 ;;
        --num-workers)    NUM_WORKERS="$2";    shift 2 ;;
        --temperature)    TEMPERATURE="$2";    shift 2 ;;
        --max-tokens)     MAX_TOKENS="$2";     shift 2 ;;
        --timeout)        TIMEOUT="$2";        shift 2 ;;
        --pattern)        PATTERN="$2";        shift 2 ;;
        *) echo "Unknown argument: $1" >&2; exit 1 ;;
    esac
done

FILES=()
while IFS= read -r f; do FILES+=("$f"); done < <(find "$DATA_DIR" -maxdepth 1 -name "$PATTERN" | sort)

if [[ ${#FILES[@]} -eq 0 ]]; then
    echo "No files matching '$PATTERN' found in $DATA_DIR" >&2
    exit 1
fi

SAFE_MODEL="${MODEL//\//_}"
SAFE_MODEL="${SAFE_MODEL//:/_}"

echo "============================================================"
echo " CP-SAT Formalizer on gen-data"
echo "============================================================"
echo "  data-dir      : $DATA_DIR"
echo "  model         : $MODEL"
echo "  save-dir      : $SAVE_DIR"
echo "  history-mode  : $HISTORY_MODE"
echo "  max-examples  : $MAX_EXAMPLES"
echo "  llm-retries   : $LLM_RETRIES"
echo "  timeout       : $TIMEOUT"
echo "  files found   : ${#FILES[@]}"
for f in "${FILES[@]}"; do echo "    $f"; done
echo "============================================================"
echo ""

FAILED=()

for DATA_PATH in "${FILES[@]}"; do
    STEM="$(basename "$DATA_PATH" .json)"
    SAVE_PATH="${SAVE_DIR}/${SAFE_MODEL}/${STEM}"

    echo "────────────────────────────────────────────────────────────"
    echo " File   : $DATA_PATH"
    echo " Saving : $SAVE_PATH"
    echo "────────────────────────────────────────────────────────────"

    mkdir -p "$SAVE_PATH"

    if python3 -m src.experiments.run_cpsat_formalizer \
        --model-name      "$MODEL" \
        --temperature     "$TEMPERATURE" \
        --max-tokens      "$MAX_TOKENS" \
        --benchmark-name  gen-data \
        --data-path       "$DATA_PATH" \
        --save-path       "$SAVE_PATH" \
        --max-examples    "$MAX_EXAMPLES" \
        --num-workers     "$NUM_WORKERS" \
        --llm-retries     "$LLM_RETRIES" \
        --history-mode    "$HISTORY_MODE" \
        --timeout         "$TIMEOUT"; then
        echo "  Done → $SAVE_PATH"
    else
        echo "  FAILED: $DATA_PATH" >&2
        FAILED+=("$DATA_PATH")
    fi

    echo ""
done

if [[ ${#FAILED[@]} -gt 0 ]]; then
    echo "Some files failed:" >&2
    for f in "${FAILED[@]}"; do echo "  - $f" >&2; done
    exit 1
fi

echo "All files completed successfully."
