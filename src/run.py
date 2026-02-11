from __future__ import annotations

import argparse
from pathlib import Path

from .baselines.PLaG.simple_baseline import run_baseline
from .llms import claude_from_env, openrouter_from_env, vllm_from_env


def build_llm_client(llm_name: str, model: str):
    if llm_name == "openrouter":
        return openrouter_from_env(model)
    if llm_name == "vllm":
        return vllm_from_env(model)
    if llm_name == "claude":
        return claude_from_env(model)
    raise ValueError(f"Unknown llm backend: {llm_name}")


def parse_args():
    parser = argparse.ArgumentParser(description="AsyncHow evaluation runner")
    parser.add_argument("--mode", choices=["baseline", "method"], default="baseline")
    parser.add_argument("--llm", choices=["openrouter", "vllm", "claude"], required=True)
    parser.add_argument("--model", required=True)
    parser.add_argument("--split", default="test")
    parser.add_argument("--k", type=int, default=0)
    parser.add_argument("--cot", type=str, default="false")
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--seed", type=int, default=42)
    parser.add_argument("--output-root", default="results")
    return parser.parse_args()


def main():
    args = parse_args()
    cot = str(args.cot).lower() in {"1", "true", "yes", "y"}
    limit = args.limit if args.limit > 0 else None
    llm_client = build_llm_client(args.llm, args.model)

    if args.mode == "baseline":
        output_dir = Path(args.output_root) / "baselines" / f"{args.llm}_{args.model}"
        evaluation_dir = (
            Path("evaluation") / "baselines" / f"{args.llm}_{args.model}"
        )
        run_baseline(
            llm_client=llm_client,
            split=args.split,
            k=args.k,
            cot=cot,
            limit=limit,
            seed=args.seed,
            output_dir=output_dir,
            evaluation_dir=evaluation_dir,
        )
        return

    raise NotImplementedError(
        "Method mode not wired yet. Implement in src/method/graph_llm_asyncow.py."
    )


if __name__ == "__main__":
    main()
