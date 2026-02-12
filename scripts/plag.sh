#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# ── Configuration ────────────────────────────────────────────────────────
MODEL_NAME="${MODEL_NAME:-openai/gpt-4.1-mini}"
TASK="${TASK:-explicit_graph}"                    # explicit_graph | bag
GRAPH_TYPE="${GRAPH_TYPE:-edge_list}"  # edge_list | adjacency_list | adjacency_matrix | csr
TEMPERATURE="${TEMPERATURE:-0.0}"
MAX_TOKENS="${MAX_TOKENS:-4096}"
BATCH="${BATCH:-16}"
NSHOT="${NSHOT:-1}"                    # 0–3 n-shot examples
MAX_EXAMPLES="${MAX_EXAMPLES:-100}"
SAVE_PATH="${SAVE_PATH:-results/asynchow/plag/${MODEL_NAME//\//_}}"

python -m src.experiments.run_plag \
    --model-name "${MODEL_NAME}" \
    --temperature "${TEMPERATURE}" \
    --max-tokens "${MAX_TOKENS}" \
    --save-path "${SAVE_PATH}" \
    --batch "${BATCH}" \
    --task "${TASK}" \
    --graph-type "${GRAPH_TYPE}" \
    --nshot "${NSHOT}" \
    --max-examples "${MAX_EXAMPLES}"
