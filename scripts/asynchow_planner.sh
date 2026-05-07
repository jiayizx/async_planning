#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-8192}"
NUM_WORKERS="${NUM_WORKERS:-8}"
MAX_EXAMPLES="${MAX_EXAMPLES:-99999}" # for whole dataset

# for MODEL_NAME in "GPT-4.1"; do
#     for ICL_EXAMPLES in 0 3; do
#         for COT in true false; do
#             python -m src.experiments.run_baselines \
#                 --model-name $MODEL_NAME \
#                 --temperature $TEMPERATURE \
#                 --max-tokens $MAX_TOKENS \
#                 --benchmark-name asynchow \
#                 --save-path results/asynchow/baselines/$MODEL_NAME/ \
#                 --icl-examples $ICL_EXAMPLES \
#                 --cot $COT \
#         done
#     done
# done


# MODEL_NAME="${MODEL_NAME:-gemini-3-flash}"
# MODEL_NAME="${MODEL_NAME:-claude-haiku-4-5}"
MODEL_NAME="${MODEL_NAME:-qwen/qwen3.5-27b}"
MODEL_NAME_SAFE="$(echo "${MODEL_NAME}" | sed 's#.*/##')" # remove the namespace
python -m src.experiments.run_baselines \
    --model-name $MODEL_NAME \
    --temperature $TEMPERATURE \
    --max-tokens $MAX_TOKENS \
    --benchmark-name asynchow \
    --save-path results/asynchow/baselines_310/$MODEL_NAME_SAFE/ \
    --icl-examples 0 \
    --cot true \
    --num-workers $NUM_WORKERS \
    --max-examples $MAX_EXAMPLES
