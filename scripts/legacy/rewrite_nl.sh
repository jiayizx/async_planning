#!/usr/bin/env bash
# Rewrite abstract synthetic DAG questions into realistic NL scenarios via LLM.
#
# Parameters
# ──────────────────────────────────────────────────────────────────────────────
#   --input FILE        Input JSON file from gen_synthetic.sh   [required]
#   --output-dir DIR    Output directory                        [data/nl_rewrite]
#   --output FILE       Explicit output path (overrides --output-dir)
#   --model MODEL       LLM model name                          [claude-4.5-haiku]
#   --workers N         Parallel LLM calls                      [8]
#   --temperature F     Sampling temperature                    [0.8]
#   --max-tokens N      Max tokens per sample (0 = auto-scale)  [0]
#   --limit N           Only process first N samples (0 = all)  [0]
#
# Usage examples:
#   # Basic usage (auto-named output in data/nl_rewrite/)
#   bash scripts/rewrite_nl.sh --input data/synthetic/steps5-9_....json
#
#   # Custom model and more workers
#   bash scripts/rewrite_nl.sh \
#       --input data/synthetic/steps5-9_....json \
#       --model claude-4.5-sonnet \
#       --workers 16
#
#   # Quick test on first 5 samples
#   bash scripts/rewrite_nl.sh \
#       --input data/synthetic/steps5-9_....json \
#       --limit 5
#
#   # Save to a specific directory
#   bash scripts/rewrite_nl.sh \
#       --input data/synthetic/steps5-9_....json \
#       --output-dir data/nl_rewrite/haiku

set -euo pipefail

# ── Defaults ──────────────────────────────────────────────────────────────────
INPUT="data/synthetic/steps15-15_depth3-10_ep15_t5-120m_par1.0_pc1_n100_s42.json"
OUTPUT=""
OUTPUT_DIR="data/nl_rewrite"
MODEL="openai/gpt-4.1"
WORKERS=8
TEMPERATURE=0.7
MAX_TOKENS=4096
LIMIT=0

# ── Arg parsing ───────────────────────────────────────────────────────────────
while [[ $# -gt 0 ]]; do
    case "$1" in
        --input)        INPUT="$2";       shift 2 ;;
        --output)       OUTPUT="$2";      shift 2 ;;
        --output-dir)   OUTPUT_DIR="$2";  shift 2 ;;
        --model)        MODEL="$2";       shift 2 ;;
        --workers)      WORKERS="$2";     shift 2 ;;
        --temperature)  TEMPERATURE="$2"; shift 2 ;;
        --max-tokens)   MAX_TOKENS="$2";  shift 2 ;;
        --limit)        LIMIT="$2";       shift 2 ;;
        *) echo "Unknown argument: $1" >&2; exit 1 ;;
    esac
done

if [[ -z "$INPUT" ]]; then
    echo "Error: --input is required" >&2
    exit 1
fi

mkdir -p "$OUTPUT_DIR"

# ── Print config ──────────────────────────────────────────────────────────────
echo "============================================================"
echo " NL Rewrite"
echo "============================================================"
echo "  input       : $INPUT"
echo "  output-dir  : $OUTPUT_DIR"
echo "  model       : $MODEL"
echo "  workers     : $WORKERS"
echo "  temperature : $TEMPERATURE"
echo "  max-tokens  : ${MAX_TOKENS} (0 = auto-scale)"
echo "  limit       : ${LIMIT} (0 = all)"
echo "============================================================"

# ── Build python command ───────────────────────────────────────────────────────
CMD=(
    python -m src.gen_data.rewrite_nl
    --input       "$INPUT"
    --output-dir  "$OUTPUT_DIR"
    --model       "$MODEL"
    --workers     "$WORKERS"
    --temperature "$TEMPERATURE"
    --max-tokens  "$MAX_TOKENS"
)

if [[ -n "$OUTPUT" ]]; then
    CMD+=(--output "$OUTPUT")
fi

if [[ "$LIMIT" -gt 0 ]]; then
    CMD+=(--limit "$LIMIT")
fi

"${CMD[@]}"
