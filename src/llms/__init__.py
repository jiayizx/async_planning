import os
from typing import Dict, Type

from .base import BaseLLM
# from .embed import get_embedding_model
from .claude import ClaudeLLM
from .openrouter import OpenRouterLLM
from .vllm import VLLMOpenAI
from .openai import OpenAILLM
from .gemini import GeminiLLM
# from .litellm import LiteLLM

__all__ = ["get_model"]

LLM_REGISTRY: Dict[str, Type[BaseLLM]] = {
    "claude": ClaudeLLM,
    "openai": OpenAILLM,
    "openrouter": OpenRouterLLM,
    "vllm": VLLMOpenAI,
    "gemini": GeminiLLM,
    # "litellm": LiteLLM,
}


def get_model(
    model_name: str,
    config: dict,
    use_vllm: bool = False,
    num_workers: int = 128,
    strict_json: bool = False,
) -> BaseLLM:
    """Get a model instance."""
    if model_name.startswith("openrouter/"):
        model_name = model_name[len("openrouter/"):]
        model_class = LLM_REGISTRY["openrouter"]
    elif "claude" in model_name:
        has_anthropic_key = os.environ.get("ANTHROPIC_API_KEY") is not None
        has_bedrock_bearer = bool(os.environ.get("AWS_BEARER_TOKEN_BEDROCK"))
        if has_anthropic_key or has_bedrock_bearer:
            model_class = LLM_REGISTRY["claude"]
        else:
            print(
                "ANTHROPIC_API_KEY and AWS_BEARER_TOKEN_BEDROCK are not set, "
                "falling back to openrouter"
            )
            model_class = LLM_REGISTRY["openrouter"]
    elif "openai" in model_name:
        model_class = LLM_REGISTRY["openai"]
    elif "gemini" in model_name:
        model_class = LLM_REGISTRY["gemini"]
    else:
        model_class = LLM_REGISTRY["vllm" if use_vllm else "openrouter"]

    print("Model class: ", model_class)
    print("Model name: ", model_name)

    return model_class(
        model_name=model_name, config=config, num_workers=num_workers, strict_json=strict_json
    )
