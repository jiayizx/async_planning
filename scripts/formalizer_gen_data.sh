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
#   --solver-retries N   Max retries for transient solver errors     [3]
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
DATA_DIR="data/nl_rewrite"
MODEL="openai/gpt-4.1"
SAVE_DIR="results/gen-data/formalizer"
MAX_EXAMPLES=100
NUM_SHOTS=0
SOLVER_RETRIES=3
LLM_RETRIES=3
BATCH=16
NUM_WORKERS=8
TEMPERATURE=0.0
MAX_TOKENS=32768
PATTERN="steps15-15*_nlrewrite_*.json"

# ── Arg parsing ───────────────────────────────────────────────────────────────
while [[ $# -gt 0 ]]; do
    case "$1" in
        --data-dir)       DATA_DIR="$2";       shift 2 ;;
        --model)          MODEL="$2";          shift 2 ;;
        --save-dir)       SAVE_DIR="$2";       shift 2 ;;
        --max-examples)   MAX_EXAMPLES="$2";   shift 2 ;;
        --num-shots)      NUM_SHOTS="$2";      shift 2 ;;
        --solver-retries) SOLVER_RETRIES="$2"; shift 2 ;;
        --llm-retries)    LLM_RETRIES="$2";    shift 2 ;;
        --batch)          BATCH="$2";          shift 2 ;;
        --num-workers)    NUM_WORKERS="$2";    shift 2 ;;
        --temperature)    TEMPERATURE="$2";    shift 2 ;;
        --max-tokens)     MAX_TOKENS="$2";     shift 2 ;;
        --pattern)        PATTERN="$2";        shift 2 ;;
        *) echo "Unknown argument: $1" >&2; exit 1 ;;
    esac
done

# ── Discover files ────────────────────────────────────────────────────────────
mapfile -t FILES < <(find "$DATA_DIR" -maxdepth 1 -name "$PATTERN" | sort)

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
echo "  max-examples  : $MAX_EXAMPLES"
echo "  num-shots     : $NUM_SHOTS"
echo "  solver-retries: $SOLVER_RETRIES  llm-retries: $LLM_RETRIES"
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
        --solver-retries  "$SOLVER_RETRIES" \
        --llm-retries     "$LLM_RETRIES"; then
        echo "  Done → $SAVE_PATH"
    else
        echo "  FAILED: $DATA_PATH" >&2
        FAILED+=("$DATA_PATH")
    fi

    echo ""
done

# ── Aggregate summary ─────────────────────────────────────────────────────────
echo "============================================================"
echo " Aggregated Results"
echo "============================================================"
python - <<EOF
import json, glob, os, sys

save_dir = "${SAVE_DIR}/${SAFE_MODEL}"
pattern  = os.path.join(save_dir, "**", "summary_results.json")
files    = sorted(glob.glob(pattern, recursive=True))

if not files:
    print("No summary_results.json found.")
    sys.exit(0)

rows = []
for f in files:
    with open(f) as fh:
        d = json.load(fh)
    stem = os.path.basename(os.path.dirname(f))
    rows.append({
        "file":         stem,
        "accuracy":     d.get("accuracy", 0),
        "correct":      d.get("num_correct", 0),
        "total":        d.get("num_data_points", 0),
        "parse_fails":  d.get("num_parse_failures", 0),
    })

# Print table
w = max(len(r["file"]) for r in rows)
print(f"{'file':<{w}}  {'acc':>6}  {'correct':>7}  {'total':>5}  {'parse_fail':>10}")
print("-" * (w + 35))
for r in rows:
    print(f"{r['file']:<{w}}  {r['accuracy']:>6.3f}  {r['correct']:>7}  {r['total']:>5}  {r['parse_fails']:>10}")

total_c = sum(r["correct"] for r in rows)
total_n = sum(r["total"]   for r in rows)
overall = total_c / total_n if total_n else 0
print("-" * (w + 35))
print(f"{'OVERALL':<{w}}  {overall:>6.3f}  {total_c:>7}  {total_n:>5}")
print(f"\nSaved under: {save_dir}")
EOF

if [[ ${#FAILED[@]} -gt 0 ]]; then
    echo ""
    echo "WARNING: ${#FAILED[@]} file(s) failed:"
    for f in "${FAILED[@]}"; do echo "  $f"; done
    exit 1
fi
