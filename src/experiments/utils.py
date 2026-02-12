from src.llms.base import BaseLLM
from src.llms import get_model

def build_llm_client(model_name: str, temperature: float, max_tokens: int, num_workers: int = 1, strict_json: bool = False) -> BaseLLM:
    return get_model(model_name=model_name, config={"temperature": temperature, "max_tokens": max_tokens}, num_workers=num_workers, strict_json=strict_json)


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