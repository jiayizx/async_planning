from __future__ import annotations

import argparse
import asyncio
import json
import os
import pickle
import random
import sys
from pathlib import Path
from datasets import load_dataset

from src.llms import OpenAIClient, OpenAIConfig, claude_from_env, openrouter_from_env, vllm_from_env


def build_llm_client(provider: str, model: str) -> OpenAIClient:
    if provider == "openrouter":
        return openrouter_from_env(model)
    if provider == "vllm":
        return vllm_from_env(model)
    if provider == "claude":
        return claude_from_env(model)
    if provider == "openai":
        api_key = os.environ["OPENAI_API_KEY"]
        base_url = os.getenv("OPENAI_BASE_URL")
        return OpenAIClient(OpenAIConfig(model=model, api_key=api_key, base_url=base_url))
    raise ValueError(f"Unknown llm provider: {provider}")


async def run_task(plag, benchmark_dic: dict, args: argparse.Namespace) -> dict:
    if args.task == "vary_shot_cot":
        response_dic = {}
        for cot in [True, False]:
            for nshot in [True, False]:
                response_dic[f"cot_{cot}_nshot_{nshot}"] = await plag.prompt_model_nshot_cot(
                    model_name=args.model_name,
                    benchmark_dic=benchmark_dic,
                    nshot_idx=benchmark_dic["nshot_instructions"]["idxs"],
                    nshot_template_dic=benchmark_dic["nshot_instructions"],
                    best_prompt=args.best_prompt_template,
                    cot=cot,
                    nshot=nshot,
                    model=None,
                    tokenizer=None,
                    client=None,
                    batch=args.batch,
                )
        res_dic = {}
        eval_idxs = [
            i for i in range(len(benchmark_dic["titles"]))
            if i not in benchmark_dic["nshot_instructions"]["idxs"]
        ]
        for key, val in response_dic.items():
            res_dic[key] = plag.calc_acc(
                responses=val,
                sampled_idxs=eval_idxs,
                gold_timedelta=[benchmark_dic["task_time"][i] for i in eval_idxs],
            )
        res_dic["responses"] = response_dic
        return res_dic

    if args.task == "vary_prompt_template":
        response_dic = await plag.prompt_model_for_all_templates(
            model_name=args.model_name,
            benchmark_dic=benchmark_dic,
            client=None,
            model=None,
            tokenizer=None,
            batch=args.batch,
        )
        res_dic = plag.eval_different_templates(response_dic=response_dic, benchmark_dic=benchmark_dic)
        res_dic["responses"] = response_dic
        return res_dic

    if args.task == "vary_economic_prompt":
        response_dic = await plag.prompt_model_for_combined_templates(
            model_name=args.model_name,
            best_prompt=args.best_prompt_template,
            benchmark_dic=benchmark_dic,
            client=None,
            model=None,
            tokenizer=None,
            batch=args.batch,
        )
        sampled_idxs = random.sample(range(len(benchmark_dic["titles"])), 100)
        res_dic = plag.calc_acc(
            responses=response_dic,
            sampled_idxs=sampled_idxs,
            gold_timedelta=[benchmark_dic["task_time"][i] for i in sampled_idxs],
        )
        res_dic["responses"] = response_dic
        return res_dic

    raise ValueError(f"Invalid baseline task: {args.task}")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Baselines: Prompting-based LLM-as-a-planner with ICL and CoT."
    )
    parser.add_argument("--model-name", default="claude-4.5-haiku", required=True) # claude, vllm, openrouter
    parser.add_argument("--benchmark-name", required=True) # Name of the benchmark data
    parser.add_argument("--save-path", required=True) # Path to save the results

    # Task-specific arguments
    parser.add_argument("--icl-examples", type=int, default=0)
    parser.add_argument("--cot", type=str, default="false")
    parser.add_argument("--batch", type=int, default=30)
    return parser.parse_args()


def main() -> None:
    args = parse_args()

    dataset = None
    if args.benchmark_name == "asynchow":
        dataset = load_dataset("fangru-lin/asynchow", split="test")
    
    if os.path.exists(args.save_path):
        raise FileExistsError(f"Save path already exists: {args.save_path}")
    os.makedirs(args.save_path, exist_ok=True)

    llm_client = build_llm_client(args.model_name)
    result = asyncio.run(run_task(llm_client, dataset, args))


if __name__ == "__main__":
    main()
