#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

python -m src.experiments.run_baselines \
    --model-name claude-4.5-haiku \
    --temperature 0.0 \
    --max-tokens 4096 \
    --benchmark-name asynchow \
    --save-path results/asynchow/baselines/claude-4.5-haiku/ \
    --icl-examples 0 \
    --cot false \
    --batch 16