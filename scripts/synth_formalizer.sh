#!/usr/bin/env bash
# Run LLM-as-Formalizer on all NL-rewritten synthetic datasets in a folder.
#
# Parameters
# ──────────────────────────────────────────────────────────────────────────────
#   --data-dir DIR       Folder containing *_nlrewrite_*.json files  [data/nl_rewrite]
#   --model MODEL        LLM model name                              [claude-4.5-haiku]
#   --save-dir DIR       Root folder for results                     [results/gen-data/formalizer]
#   --max-examples N     Max examples per file (0 = all)             [500]
#   --num-shots N        Few-shot examples (0-3)                     [0]
#   --llm-retries N      Max retries where LLM fixes from error      [3]
#   --batch N            Solver/LLM batch size                       [16]
#   --num-workers N      Parallel workers                            [8]
#   --temperature F      Sampling temperature                        [0.0]
#   --max-tokens N       Max output tokens                           [4096]
#   --pattern GLOB       Filename glob within data-dir               [*_nlrewrite_*.json]
#
# Usage examples:
#   # Run on all files in data/nl_rewrite/
#   bash scripts/formalizer_gen_data.sh
#
#   # Custom folder and model
#   bash scripts/formalizer_gen_data.sh \
#       --data-dir data/nl_rewrite \
#       --model openai/gpt-4.1 \
#       --max-examples 100
#
#   # Only run files matching a specific pattern
#   bash scripts/formalizer_gen_data.sh \
#       --pattern "steps5-9_*.json"

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Defaults ──────────────────────────────────────────────────────────────────
DATA_DIR="data/async_planning"
# DATA_DIR="data/async_planning/nodes5_n50_s42_nlrewrite_gemini-3-flash.json"
# MODEL="openai/gpt-4.1"
# MODEL="gemini-3-pro"
MODEL="claude-haiku-4-5"
SAVE_DIR="results/gen-data-modified/formalizer_origin"
MAX_EXAMPLES=400
NUM_SHOTS=0
LLM_RETRIES=3
HISTORY_MODE="cumulative" # cumulative | single-turn
BATCH=16 # how many pddl problem are sent to the solver to solve at once
NUM_WORKERS=8 # how many concurrent LLM API calls are made at once
TEMPERATURE=0.0
MAX_TOKENS=8192
# MAX_TOKENS=65536
TWO_PHASE=0      # 1 = enable two-phase (dep analysis → PDDL); 0 = one-phase
EFFECT_GOAL=1    # 1 = Formalizer+ (all at-end effects in :goal); 0 = Formalizer
# PATTERN="*_nlrewrite_*.json"
PATTERN="*nlrewrite_*.json"

# ── Arg parsing ───────────────────────────────────────────────────────────────
while [[ $# -gt 0 ]]; do
    case "$1" in
        --data-dir)       DATA_DIR="$2";       shift 2 ;;
        --model)          MODEL="$2";          shift 2 ;;
        --save-dir)       SAVE_DIR="$2";       shift 2 ;;
        --max-examples)   MAX_EXAMPLES="$2";   shift 2 ;;
        --num-shots)      NUM_SHOTS="$2";      shift 2 ;;
        --llm-retries)    LLM_RETRIES="$2";    shift 2 ;;
        --history-mode)   HISTORY_MODE="$2";   shift 2 ;;
        --batch)          BATCH="$2";          shift 2 ;;
        --num-workers)    NUM_WORKERS="$2";    shift 2 ;;
        --temperature)    TEMPERATURE="$2";    shift 2 ;;
        --max-tokens)     MAX_TOKENS="$2";     shift 2 ;;
        --two-phase)      TWO_PHASE="$2";      shift 2 ;;
        --effect-goal)    EFFECT_GOAL="$2";   shift 2 ;;
        --pattern)        PATTERN="$2";        shift 2 ;;
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

echo "============================================================"
echo " Formalizer on gen-data"
echo "============================================================"
echo "  data-dir      : $DATA_DIR"
echo "  model         : $MODEL"
echo "  save-dir      : $SAVE_DIR"
echo "  history-mode  : $HISTORY_MODE"
echo "  max-examples  : $MAX_EXAMPLES"
echo "  num-shots     : $NUM_SHOTS"
echo "  llm-retries: $LLM_RETRIES"
echo "  files found   : ${#FILES[@]}"
for f in "${FILES[@]}"; do echo "    $f"; done
echo "============================================================"
echo ""

# ── Run each file ─────────────────────────────────────────────────────────────
FAILED=()

for DATA_PATH in "${FILES[@]}"; do
    STEM="$(basename "$DATA_PATH" .json)"
    SAVE_PATH="${SAVE_DIR}/${SAFE_MODEL}/${STEM}"

    echo "────────────────────────────────────────────────────────────"
    echo " File   : $DATA_PATH"
    echo " Saving : $SAVE_PATH"
    echo "────────────────────────────────────────────────────────────"

    mkdir -p "$SAVE_PATH"

    if python -m src.experiments.run_formalizer \
        --model-name      "$MODEL" \
        --temperature     "$TEMPERATURE" \
        --max-tokens      "$MAX_TOKENS" \
        --benchmark-name  gen-data \
        --data-path       "$DATA_PATH" \
        --save-path       "$SAVE_PATH" \
        --batch           "$BATCH" \
        --max-examples    "$MAX_EXAMPLES" \
        --num-workers     "$NUM_WORKERS" \
        --num-shots       "$NUM_SHOTS" \
        --llm-retries     "$LLM_RETRIES" \
        --history-mode    "$HISTORY_MODE" \
        $([[ "$TWO_PHASE" == "1" ]] && echo "--two-phase") \
        $([[ "$EFFECT_GOAL" == "1" ]] && echo "--effect-goal"); then
        echo "  Done → $SAVE_PATH"
    else
        echo "  FAILED: $DATA_PATH" >&2
        FAILED+=("$DATA_PATH")
    fi

    echo ""
done
