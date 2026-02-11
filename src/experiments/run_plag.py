from __future__ import annotations

import argparse
import asyncio
import json
import os
import pickle
import random
import sys
from pathlib import Path

from src.llms import OpenAIClient, OpenAIConfig, claude_from_env, openrouter_from_env, vllm_from_env


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Run the PLaG method using src/llms backends."
    )
    parser.add_argument("--llm", choices=["openrouter", "vllm", "claude", "openai"], required=True)
    parser.add_argument("--model-name", required=True)
    parser.add_argument("--benchmark-path", required=True)
    parser.add_argument("--save-path", required=True)
    parser.add_argument("--task", default="vary_prompt_template")
    parser.add_argument("--batch", type=int, default=30)
    parser.add_argument("--best-prompt-template", default=None)
    parser.add_argument("--best-graph", default=None)
    return parser.parse_args()


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


def load_benchmark(path: Path) -> dict:
    if path.suffix == ".pkl":
        with path.open("rb") as f:
            return pickle.load(f)
    with path.open("r", encoding="utf-8") as f:
        return json.load(f)


def ensure_dir(path: Path) -> None:
    path.mkdir(parents=True, exist_ok=True)


def patch_plag(plag_module, utils_module, llm_client):
    async def generate_from_openai_chat_completion(
        client,
        task_prompts,
        nshot_prompt="",
        model="gpt-4",
        system_prompt="",
        n_choices=1,
        temperature=0.0,
    ):
        responses = []
        for prompt in task_prompts:
            if not prompt:
                responses.append({"choices": [{"message": {"content": ""}}]})
                continue
            text = llm_client.complete(nshot_prompt + prompt, temperature=temperature).text
            responses.append({"choices": [{"message": {"content": text}}]})
        return responses

    async def benchmark_model(
        model_name,
        prompts,
        client=None,
        model=None,
        tokenizer=None,
        batch_size=1,
    ):
        responses = []
        for prompt in prompts:
            if not prompt:
                responses.append({"choices": [{"message": {"content": ""}}]})
                continue
            text = llm_client.complete(prompt, temperature=0.0).text
            responses.append({"choices": [{"message": {"content": text}}]})
        return responses

    utils_module.generate_from_openai_chat_completion = generate_from_openai_chat_completion
    utils_module.benchmark_model = benchmark_model
    plag_module.generate_from_openai_chat_completion = generate_from_openai_chat_completion
    plag_module.benchmark_model = benchmark_model


async def run_task(plag, benchmark_dic: dict, args: argparse.Namespace) -> dict:
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

    if args.task == "vary_graph":
        nshot_idx = benchmark_dic["nshot_instructions"]["idxs"]
        random.seed(0)
        sampled_idxs = random.sample(
            [_ for _ in range(len(benchmark_dic["titles"])) if _ not in nshot_idx], 100
        )
        response_dic = await plag.prompt_model_graph(
            model_name=args.model_name,
            benchmark_dic=benchmark_dic,
            sampled_idxs=sampled_idxs,
            nshot_idx=nshot_idx,
            nshot_template_dic=benchmark_dic["nshot_instructions"],
            best_prompt=args.best_prompt_template,
            cot=False,
            nshot=True,
            graph="graph",
            model=None,
            tokenizer=None,
            client=None,
            batch=args.batch,
        )
        res_dic = {}
        for graph in ["adjacency_list", "adjacency_matrix", "csr", "edge_list"]:
            res_dic[graph] = plag.calc_acc(
                responses=response_dic,
                sampled_idxs=sampled_idxs,
                gold_timedelta=[benchmark_dic["task_time"][i] for i in sampled_idxs],
            )
        res_dic["responses"] = response_dic
        return res_dic

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

    if args.task == "explicit_graph":
        sampled_idxs = random.sample(range(len(benchmark_dic["titles"])), 100)
        response_dic = await plag.prompt_model_graph_full_res(
            model_name=args.model_name,
            benchmark_dic=benchmark_dic,
            nshot_idx=benchmark_dic["nshot_instructions"]["idxs"],
            nshot_template_dic=benchmark_dic["bag_instruction"]["templates"],
            best_prompt=args.best_prompt_template,
            cot=False,
            nshot=True,
            graph=args.best_graph,
            model=None,
            tokenizer=None,
            client=None,
            batch=args.batch,
        )
        res_dic = plag.calc_acc(
            responses=response_dic,
            sampled_idxs=sampled_idxs,
            gold_timedelta=[benchmark_dic["task_time"][i] for i in sampled_idxs],
        )
        res_dic["responses"] = response_dic
        return res_dic

    if args.task == "bag":
        sampled_idxs = random.sample(range(len(benchmark_dic["titles"])), 100)
        response_dic = await plag.prompt_model_bag_full_res(
            model_name=args.model_name,
            benchmark_dic=benchmark_dic,
            nshot_idx=benchmark_dic["nshot_instructions"]["idxs"],
            nshot_template_dic=benchmark_dic["bag"]["templates"][args.best_graph],
            best_prompt=args.best_prompt_template,
            best_graph=args.best_graph,
            nshot=True,
            combined="",
            model=None,
            tokenizer=None,
            client=None,
            batch=args.batch,
        )
        res_dic = plag.calc_acc(
            responses=response_dic,
            sampled_idxs=sampled_idxs,
            gold_timedelta=[benchmark_dic["task_time"][i] for i in sampled_idxs],
        )
        res_dic["responses"] = response_dic
        return res_dic

    raise ValueError(f"Invalid task: {args.task}")


def main() -> None:
    args = parse_args()
    repo_root = Path(__file__).resolve().parents[2]
    plag_root = repo_root / "baselines" / "graph-llm-asynchow-plan"
    if not plag_root.exists():
        raise FileNotFoundError(f"Missing submodule at {plag_root}")

    sys.path.insert(0, str(plag_root / "benchmark_llm"))
    sys.path.insert(0, str(plag_root / "utils"))

    import benchmark_llm as plag  # noqa: E402
    import utils as plag_utils  # noqa: E402

    llm_client = build_llm_client(args.llm, args.model_name)
    patch_plag(plag, plag_utils, llm_client)

    benchmark_path = Path(args.benchmark_path)
    benchmark_dic = load_benchmark(benchmark_path)

    ensure_dir(Path(args.save_path))
    result = asyncio.run(run_task(plag, benchmark_dic, args))
    save_path = Path(args.save_path) / f"{args.task}_{args.model_name}.pkl"
    with save_path.open("wb") as f:
        pickle.dump(result, f)


if __name__ == "__main__":
    main()
