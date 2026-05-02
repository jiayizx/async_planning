#!/usr/bin/env bash
# Run LLM-as-Planner (baselines) on all NL-rewritten synthetic datasets in a folder.
#
# Parameters
# ──────────────────────────────────────────────────────────────────────────────
#   --data-dir DIR       Folder containing *_nlrewrite_*.json files  [data/nl_rewrite]
#   --model MODEL        LLM model name                              [claude-4.5-haiku]
#   --save-dir DIR       Root folder for results                     [results/gen-data/baselines]
#   --max-examples N     Max examples per file (0 = all)             [500]
#   --icl-examples N     Number of ICL (few-shot) examples           [0]
#   --cot BOOL           Enable chain-of-thought                     [false]
#   --num-workers N      Parallel workers                            [4]
#   --temperature F      Sampling temperature                        [0.0]
#   --max-tokens N       Max output tokens                           [2048]
#   --pattern GLOB       Filename glob within data-dir               [*_nlrewrite_*.json]
#
# Usage examples:
#   # Run on all files in data/nl_rewrite/
#   bash scripts/baselines_gen_data.sh
#
#   # With CoT and 3-shot ICL
#   bash scripts/baselines_gen_data.sh \
#       --cot true --icl-examples 3
#
#   # Custom model and folder
#   bash scripts/baselines_gen_data.sh \
#       --model openai/gpt-4.1 \
#       --data-dir data/nl_rewrite

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Defaults ──────────────────────────────────────────────────────────────────
DATA_DIR="data/async_planning"
# DATA_DIR="data/async_planning/nodes50_n50_s42_nlrewrite_gemini-3-flash.json"
# MODEL="gemini-3-flash"
# MODEL="openai/gpt-4.1"
MODEL="openai/gpt-5-mini"
SAVE_DIR="results/gen-data-modified/baselines"
MAX_EXAMPLES=400
ICL_EXAMPLES=0
COT=true
NUM_WORKERS=16 # how many concurrent LLM API calls are made at once
TEMPERATURE=0.0
MAX_TOKENS=4096
# PATTERN="*_nlrewrite_*.json"
PATTERN="*nlrewrite_*.json"

# ── Arg parsing ───────────────────────────────────────────────────────────────
while [[ $# -gt 0 ]]; do
    case "$1" in
        --data-dir)     DATA_DIR="$2";     shift 2 ;;
        --model)        MODEL="$2";        shift 2 ;;
        --save-dir)     SAVE_DIR="$2";     shift 2 ;;
        --max-examples) MAX_EXAMPLES="$2"; shift 2 ;;
        --icl-examples) ICL_EXAMPLES="$2"; shift 2 ;;
        --cot)          COT="$2";          shift 2 ;;
        --num-workers)  NUM_WORKERS="$2";  shift 2 ;;
        --temperature)  TEMPERATURE="$2";  shift 2 ;;
        --max-tokens)   MAX_TOKENS="$2";   shift 2 ;;
        --pattern)      PATTERN="$2";      shift 2 ;;
        *) echo "Unknown argument: $1" >&2; exit 1 ;;
    esac
done

# ── Discover files ────────────────────────────────────────────────────────────
FILES=()
while IFS= read -r f; do FILES+=("$f"); done < <(find "$DATA_DIR" -maxdepth 1 -name "$PATTERN" | sort)

if [[ ${#FILES[@]} -eq 0 ]]; then
    echo "No files matching '$PATTERN' found in $DATA_DIR" >&2
    exit 1
fi

SAFE_MODEL="${MODEL//\//_}"
SAFE_MODEL="${SAFE_MODEL//:/_}"
COT_TAG=$([ "$COT" = "true" ] && echo "cot" || echo "no_cot")
ICL_TAG=$([ "$ICL_EXAMPLES" -gt 0 ] && echo "_icl_${ICL_EXAMPLES}" || echo "")

echo "============================================================"
echo " Planner (Baselines) on gen-data"
echo "============================================================"
echo "  data-dir     : $DATA_DIR"
echo "  model        : $MODEL"
echo "  save-dir     : $SAVE_DIR"
echo "  max-examples : $MAX_EXAMPLES"
echo "  cot          : $COT"
echo "  icl-examples : $ICL_EXAMPLES"
echo "  files found  : ${#FILES[@]}"
for f in "${FILES[@]}"; do echo "    $f"; done
echo "============================================================"
echo ""

# ── Run each file ─────────────────────────────────────────────────────────────
FAILED=()

for DATA_PATH in "${FILES[@]}"; do
    STEM="$(basename "$DATA_PATH" .json)"
    # run_baselines appends cot/no_cot to save_path itself, so pass the base
    SAVE_PATH="${SAVE_DIR}/${SAFE_MODEL}/${STEM}/"

    echo "────────────────────────────────────────────────────────────"
    echo " File   : $DATA_PATH"
    echo " Saving : ${SAVE_PATH}${COT_TAG}${ICL_TAG}"
    echo "────────────────────────────────────────────────────────────"

    mkdir -p "$SAVE_PATH"

    if python -m src.experiments.run_baselines \
        --model-name      "$MODEL" \
        --temperature     "$TEMPERATURE" \
        --max-tokens      "$MAX_TOKENS" \
        --benchmark-name  gen-data \
        --data-path       "$DATA_PATH" \
        --save-path       "$SAVE_PATH" \
        --icl-examples    "$ICL_EXAMPLES" \
        --cot             "$COT" \
        --num-workers     "$NUM_WORKERS"; then
        echo "  Done → ${SAVE_PATH}${COT_TAG}${ICL_TAG}"
    else
        echo "  FAILED: $DATA_PATH" >&2
        FAILED+=("$DATA_PATH")
    fi

    echo ""
done
