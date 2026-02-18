from __future__ import annotations

import argparse
import json
import os
import random
from pathlib import Path

from datasets import load_dataset
from tqdm import tqdm

from dotenv import load_dotenv
load_dotenv()

from src.evaluation.accuracy_metrics import (
    exact_match,
    parse_gold_seconds,
    parse_prediction_seconds,
)
from src.llms import get_model
from src.llms.base import BaseLLM
from src.llms.prompts import (
    get_prompts, 
    build_icl_prefix, 
    SYSTEM_PROMPT_TEMPLATE,
)
from src.experiments.utils import (
    build_llm_client, 
    clean_question,
)


def run_task(llm_client: BaseLLM, eval_dataset, args: argparse.Namespace) -> dict:

    system_prompt = SYSTEM_PROMPT_TEMPLATE

    # ── 0. Build ICL prefix once (CoT examples generated in parallel) ─
    icl_prefix = build_icl_prefix(
        CoT=args.cot, icl_examples=args.icl_examples, dataset=args.benchmark_name,
    )

    # ── 1. Build all messages & metadata upfront ──────────────────────
    all_messages = []
    metadata = []  # parallel list: gold info per example

    for idx, example in enumerate(tqdm(eval_dataset, desc="Collecting baseline prompts")):
        question = clean_question(example["question"])
        gold_seconds = parse_gold_seconds(example["answer"])

        user_prompt = get_prompts(
            question=question, CoT=args.cot, icl_prefix=icl_prefix,
        )

        messages = [
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": user_prompt},
        ]
        all_messages.append(messages)
        metadata.append({
            "idx": idx,
            "question": example["question"],
            "gold_answer": example["answer"],
            "gold_seconds": gold_seconds,
            "user_prompt": user_prompt,
        })

        if idx == 100:
            break

    # ── 2. Batch call LLM in parallel (num_workers threads) ──────────
    responses = llm_client.batch_chat(all_messages, desc="Running baselines")

    # ── 3. Collect results ────────────────────────────────────────────
    records = []
    for meta, response in zip(metadata, responses):
        pred_seconds = parse_prediction_seconds(response or "")
        records.append({
            "question": meta["question"],
            "gold_answer": meta["gold_answer"],
            "pred_answer": response,
            "gold_seconds": meta["gold_seconds"],
            "pred_seconds": pred_seconds,
            "correct": exact_match(pred_seconds, meta["gold_seconds"]),
            "user_prompt": meta["user_prompt"],
        })

    # ── 4. Save ───────────────────────────────────────────────────────
    save_path = Path(args.save_path)
    with (save_path / "full_results.jsonl").open("w", encoding="utf-8") as f:
        for record in records:
            f.write(json.dumps(record, indent=2, ensure_ascii=False) + "\n")

    correct = sum(1 for r in records if r["correct"])
    accuracy = correct / len(records) if records else 0.0
    metrics = {
        "benchmark": args.benchmark_name,
        "model_name": args.model_name,
        "icl_examples": args.icl_examples,
        "cot": args.cot,
        "accuracy": accuracy,
        "num_correct": correct,
        "num_data_points": len(records),
    }
    with (save_path / "summary_results.json").open("w", encoding="utf-8") as f:
        json.dump(metrics, f, indent=2)

    return records, metrics


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Baselines: Prompting-based LLM-as-a-planner with ICL and CoT."
    )
    parser.add_argument("--model-name", default="claude-4.5-haiku", required=True) # claude, vllm, openrouter
    parser.add_argument("--temperature", type=float, default=0.0)
    parser.add_argument("--max-tokens", type=int, default=4096)
    parser.add_argument("--benchmark-name", required=True) # Name of the benchmark data
    parser.add_argument("--save-path", required=True) # Path to save the results

    # Task-specific arguments
    parser.add_argument("--icl-examples", type=int, default=0)
    parser.add_argument("--cot", type=lambda v: v.lower() in ("true", "1", "yes"), default=False)
    parser.add_argument("--batch", type=int, default=16)
    parser.add_argument("--num-workers", type=int, default=4)

    print(parser.parse_args())

    return parser.parse_args()


def main() -> None:
    args = parse_args()

    eval_dataset = None
    if args.benchmark_name == "asynchow":
        eval_dataset = load_dataset("fangrulin/asynchow", split="test")

    if args.cot:
        args.save_path = args.save_path + "cot"
    else:
        args.save_path = args.save_path + "no_cot"
    if args.icl_examples > 0:
        args.save_path = args.save_path + f"_icl_{args.icl_examples}"
    
    os.makedirs(args.save_path, exist_ok=True)

    llm_client = build_llm_client(args.model_name, args.temperature, args.max_tokens, num_workers=args.num_workers)
    run_task(llm_client, eval_dataset, args)


if __name__ == "__main__":
    main()
