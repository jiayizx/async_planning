from __future__ import annotations

import argparse
import json
import os
import random
from pathlib import Path

from datasets import load_dataset
from tqdm import tqdm

from src.evaluation.metrics import (
    exact_match,
    parse_gold_seconds,
    parse_prediction_seconds,
)
from src.llms import get_model
from src.llms.base import BaseLLM
from src.llms.prompts import get_prompts


def build_llm_client(model_name: str, temperature: float, max_tokens: int, num_workers: int = 1) -> BaseLLM:
    return get_model(model_name=model_name, config={"temperature": temperature, "max_tokens": max_tokens}, num_workers=num_workers)


def clean_question(question: str) -> str:
    """Remove any embedded CoT / answer-format instructions from the raw question."""
    unwanted = [
        "Let's think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>).",
        "Think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>)",
        "Let's think step by step.",
        "Think step by step.",
    ]
    for phrase in unwanted:
        question = question.replace(phrase, "")
    return question.strip()


def run_task(llm_client: BaseLLM, eval_dataset, args: argparse.Namespace) -> dict:

    system_prompt = get_prompts(system_prompt=True, question="", CoT=args.cot, icl_examples=args.icl_examples, dataset=args.benchmark_name)

    # ── 1. Build all messages & metadata upfront ──────────────────────
    all_messages = []
    metadata = []  # parallel list: gold info per example

    for idx, example in enumerate(tqdm(eval_dataset, desc="Collecting baseline prompts")):
        question = clean_question(example["question"])
        gold_seconds = parse_gold_seconds(example["answer"])

        user_prompt = get_prompts(
            system_prompt=False, question=question, CoT=args.cot,
            icl_examples=args.icl_examples, dataset=args.benchmark_name,
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

        if idx == 10:
            break

    # ── 2. Batch call LLM in parallel (num_workers threads) ──────────
    responses = llm_client.batch_chat(all_messages, desc="Baselines")

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

    print(parser.parse_args())

    return parser.parse_args()


def main() -> None:
    args = parse_args()

    eval_dataset = None
    if args.benchmark_name == "asynchow":
        eval_dataset = load_dataset("fangrulin/asynchow", split="test")
    
    os.makedirs(args.save_path, exist_ok=True)

    llm_client = build_llm_client(args.model_name, args.temperature, args.max_tokens, num_workers=args.batch)
    run_task(llm_client, eval_dataset, args)


if __name__ == "__main__":
    main()
