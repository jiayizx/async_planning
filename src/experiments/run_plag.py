"""
Run PLaG method (explicit graph / Build-a-Graph) on the asynchow dataset
using src/llms backends.

Loads the benchmark pickle from baselines/graph-llm-asynchow-plan/data/,
uses PLaG's original generate_prompt and measure_perf directly.
"""
from __future__ import annotations

import argparse
import json
import os
import pickle
import re
import sys
import types
from pathlib import Path

from tqdm import tqdm

from dotenv import load_dotenv
load_dotenv()

from src.llms.base import BaseLLM
from src.experiments.utils import build_llm_client
from src.llms.prompts import SYSTEM_PROMPT_TEMPLATE


PLAG_ROOT = Path(__file__).resolve().parents[2] / "baselines" / "graph-llm-asynchow-plan"


# ── Import PLaG functions ───────────────────────────────────────────────

def _setup_plag_imports():
    """Import generate_prompt and measure_perf from the PLaG submodule.

    Path setup:
      - PLAG_ROOT      → so `from utils.utils import *` inside generate_graph_prompt resolves
      - PLAG_ROOT/data_gen     → so `import generate_graph_prompt` works
      - PLAG_ROOT/benchmark_llm → so `import benchmark_llm` works

    NOTE: Do NOT add PLAG_ROOT/utils — it makes Python resolve `utils` as a
    *module* (utils.py) instead of a *package* (utils/), breaking
    `from utils.utils import *`.
    """
    if not PLAG_ROOT.exists():
        raise FileNotFoundError(
            f"PLaG submodule not found at {PLAG_ROOT}.\n"
            "Run: git submodule update --init --recursive"
        )

    # Mock heavy deps that benchmark_llm.py imports but measure_perf doesn't use
    for mod_name in ("torch", "transformers", "huggingface_hub"):
        if mod_name not in sys.modules:
            mock = types.ModuleType(mod_name)
            mock.AutoModelForCausalLM = None
            mock.AutoTokenizer = None
            mock.InferenceClient = None
            sys.modules[mod_name] = mock

    for p in [
        str(PLAG_ROOT),                   # for `from utils.utils import *`
        str(PLAG_ROOT / "data_gen"),       # for `import generate_graph_prompt`
        str(PLAG_ROOT / "benchmark_llm"), # for `import benchmark_llm`
    ]:
        if p not in sys.path:
            sys.path.insert(0, p)

    from generate_graph_prompt import generate_prompt as _original_generate_prompt  # noqa: E402
    from benchmark_llm import measure_perf             # noqa: E402

    # Patch: the original generate_prompt fails to remove [GRAPH] for bag/cot
    # tasks because template has `    [GRAPH]` (4-space indent) but the replace
    # pattern is `\n[GRAPH]\n` (no indent).  Wrap to clean up the leftover.
    def generate_prompt(*args, **kwargs):
        prompt = _original_generate_prompt(*args, **kwargs)
        prompt = re.sub(r'\n\s*\[GRAPH\]\s*\n', '\n', prompt)
        return prompt

    return generate_prompt, measure_perf


# ── N-shot prefix ───────────────────────────────────────────────────────

def _build_nshot_prefix(
    benchmark_dic: dict,
    task: str,
    graph_type: str,
    ordering_template: str,
    nshot: int = 3,
    generate_prompt=None,
) -> str:
    """Build the n-shot instruction prefix from pre-defined templates.

    The pickle contains a template with 3 placeholders ([PROMPT0/1/2]).
    *nshot* controls how many are kept (0 = zero-shot, max 3).
    """
    all_nshot_idx = benchmark_dic["nshot_instructions"]["idxs"]  # always [1198, 8, 3]
    max_n = len(all_nshot_idx)
    nshot = min(nshot, max_n)

    if nshot <= 0:
        return ""

    # Full template with all 3 placeholders
    template = benchmark_dic["bag_instruction"]["templates"][graph_type]

    # ── Truncate template to keep only first *nshot* examples ─────────
    if nshot < max_n:
        # Cut everything from [PROMPTn] onward, then close with \n###\n
        cut_marker = f"[PROMPT{nshot}]"
        cut_pos = template.find(cut_marker)
        if cut_pos != -1:
            template = template[:cut_pos].rstrip() + "\n###\n"

    # ── Fill kept placeholders ────────────────────────────────────────
    for i in range(nshot):
        idx = all_nshot_idx[i]
        if task == "explicit_graph":
            prompt = generate_prompt(
                benchmark_dic["titles"][idx], benchmark_dic["steps"][idx],
                benchmark_dic["time_dic"][idx], benchmark_dic["step_deps"][idx],
                benchmark_dic[graph_type][idx], graph_type,
                ordering_template=ordering_template,
            )
        elif task == "bag":
            prompt = generate_prompt(
                benchmark_dic["titles"][idx], benchmark_dic["steps"][idx],
                benchmark_dic["time_dic"][idx], benchmark_dic["step_deps"][idx],
                bag=True, cot=True, ordering_template=ordering_template,
            )
        else:
            raise ValueError(f"Unknown task: {task}")
        template = template.replace(f"[PROMPT{i}]", prompt)

    return template


# ── Main logic ──────────────────────────────────────────────────────────

def _build_test_prompt(benchmark_dic, idx, task, graph_type, ordering_template, generate_prompt=None):
    """Generate a single test prompt for the given example index."""
    title = benchmark_dic["titles"][idx]
    steps = benchmark_dic["steps"][idx]
    time_dic = benchmark_dic["time_dic"][idx]
    step_deps = benchmark_dic["step_deps"][idx]

    if task == "explicit_graph":
        return generate_prompt(
            title, steps, time_dic, step_deps,
            benchmark_dic[graph_type][idx], graph_type,
            ordering_template=ordering_template,
        )
    elif task == "bag":
        return generate_prompt(
            title, steps, time_dic, step_deps,
            bag=True, cot=True, ordering_template=ordering_template,
        )
    else:
        raise ValueError(f"Unknown task: {task}")


def run_task(llm_client: BaseLLM, benchmark_dic: dict, args, measure_perf, generate_prompt):
    nshot_idx = benchmark_dic["nshot_instructions"]["idxs"]

    # ── 0. Build n-shot prefix ───────────────────────────────────────
    nshot_prefix = _build_nshot_prefix(
        benchmark_dic, args.task, args.graph_type, args.ordering_template,
        nshot=args.nshot, generate_prompt=generate_prompt,
    )

    # ── 1. Build all messages & metadata ─────────────────────────────
    test_idxs = [i for i in range(len(benchmark_dic["titles"])) if i not in nshot_idx]
    if args.max_examples > 0:
        test_idxs = test_idxs[: args.max_examples]

    all_messages = []
    metadata = []

    for idx in tqdm(test_idxs, desc="Building PLaG prompts"):
        prompt = _build_test_prompt(
            benchmark_dic, idx, args.task, args.graph_type, args.ordering_template,
            generate_prompt=generate_prompt,
        )
        full_prompt = nshot_prefix + prompt

        # PLaG uses empty system prompt (user-only messages)
        messages = [
            {"role": "system", "content": SYSTEM_PROMPT_TEMPLATE},
            {"role": "user", "content": full_prompt},
        ]
        all_messages.append(messages)
        metadata.append({
            "idx": idx,
            "title": benchmark_dic["titles"][idx],
            "gold_timedelta": benchmark_dic["task_time"][idx],
            "user_prompt": full_prompt,
        })

    # ── 2. Batch call LLM ───────────────────────────────────────────
    responses = llm_client.batch_chat(all_messages, desc="Running PLaG")

    # ── 3. Evaluate with PLaG's measure_perf ─────────────────────────
    records = []
    for meta, response in zip(metadata, responses):
        response_text = response or ""
        timedelta_pred, is_correct = measure_perf(response_text, meta["gold_timedelta"])

        records.append({
            "title": meta["title"],
            "gold_timedelta": str(meta["gold_timedelta"]),
            "pred_answer": response_text,
            "timedelta_pred": str(timedelta_pred),
            "correct": is_correct,
            "user_prompt": meta["user_prompt"],
        })

    # ── 4. Save ──────────────────────────────────────────────────────
    save_path = Path(args.save_path)
    with (save_path / "full_results.jsonl").open("w", encoding="utf-8") as f:
        for record in records:
            f.write(json.dumps(record, indent=2, ensure_ascii=False) + "\n")

    correct = sum(1 for r in records if r["correct"])
    accuracy = correct / len(records) if records else 0.0
    metrics = {
        "task": args.task,
        "model_name": args.model_name,
        "nshot": args.nshot,
        "graph_type": args.graph_type,
        "ordering_template": args.ordering_template,
        "accuracy": accuracy,
        "num_correct": correct,
        "num_data_points": len(records),
    }
    with (save_path / "summary_results.json").open("w", encoding="utf-8") as f:
        json.dump(metrics, f, indent=2)

    print(f"\nResults saved to {save_path}")
    print(f"Accuracy: {accuracy:.4f} ({correct}/{len(records)})")
    return records, metrics


# ── CLI ─────────────────────────────────────────────────────────────────

def parse_args():
    parser = argparse.ArgumentParser(
        description="Run PLaG (explicit_graph / bag / vanilla / cot) on asynchow."
    )
    parser.add_argument("--model-name", required=True)
    parser.add_argument("--temperature", type=float, default=0.0)
    parser.add_argument("--max-tokens", type=int, default=4096)
    parser.add_argument("--save-path", required=True)
    parser.add_argument("--batch", type=int, default=16)

    # PLaG-specific
    parser.add_argument(
        "--task", required=True,
        choices=["explicit_graph", "bag"], # vanilla, cot
        help="PLaG task type", 
    )
    parser.add_argument(
        "--graph-type", default="edge_list",
        choices=["edge_list", "adjacency_list", "adjacency_matrix", "csr"],
        help="Graph representation type (for explicit_graph and bag n-shot)",
    )
    parser.add_argument(
        "--ordering-template",
        default="[preceding step] must precede [following step].",
        help="NL ordering constraint template",
    )
    parser.add_argument(
        "--nshot", type=int, default=3,
        help="Number of n-shot examples (0–3, default 3)",
    )
    parser.add_argument(
        "--max-examples", type=int, default=100,
        help="Max test examples (0 = all)",
    )
    return parser.parse_args()


def main():
    args = parse_args()

    # ── Load benchmark pickle ────────────────────────────────────────
    pkl_path = PLAG_ROOT / "data" / "async_benchmark.pkl"
    if not pkl_path.exists():
        raise FileNotFoundError(f"Benchmark pickle not found at {pkl_path}")
    with open(pkl_path, "rb") as f:
        benchmark_dic = pickle.load(f)

    # ── Import PLaG functions ────────────────────────────────────────
    generate_prompt, measure_perf = _setup_plag_imports()

    # ── Build save path ──────────────────────────────────────────────
    suffix = args.task
    if args.task in ("explicit_graph", "bag"):
        suffix += f"_{args.graph_type}"
    suffix += f"_{args.nshot}shot"
    args.save_path = os.path.join(args.save_path, suffix)
    os.makedirs(args.save_path, exist_ok=True)

    # ── Build LLM client & run ───────────────────────────────────────
    llm_client = build_llm_client(
        args.model_name, args.temperature, args.max_tokens,
        num_workers=args.batch,
    )
    run_task(llm_client, benchmark_dic, args, measure_perf, generate_prompt)


if __name__ == "__main__":
    main()
