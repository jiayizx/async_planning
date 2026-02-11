#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

TEMPERATURE=0.0
MAX_TOKENS=2048
BATCH=16

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
#                 --batch $BATCH
#         done
#     done
# done


MODEL_NAME="GPT-4.1"
python -m src.experiments.run_baselines \
    --model-name $MODEL_NAME \
    --temperature $TEMPERATURE \
    --max-tokens $MAX_TOKENS \
    --benchmark-name asynchow \
    --save-path results/asynchow/baselines/$MODEL_NAME/ \
    --icl-examples 3 \
    --cot false \
    --batch $BATCH