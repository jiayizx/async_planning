import datasets
from src.llms import get_model
from src.evaluation.metrics import (
    exact_match,
    parse_gold_seconds,
    parse_prediction_seconds,
)

SYSTEM_PROMPT_TEMPLATE = """You are a helpful plan organizer."""


def _format_example(example: dict, cot: bool, example_idx: int) -> str:
    if cot:
        question = example['question'] + "\n" + "Let's think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>).\n"
        
        llm_client = get_model(model_name="openai/gpt-4.1-mini", config={"temperature": 0.0, "max_tokens": 2048})
        messages = [
            {"role": "system", "content": SYSTEM_PROMPT_TEMPLATE},
            {"role": "user", "content": question},
        ]
        response = llm_client.chat(messages)
        return f"<Example_{example_idx}>\n{question}\n{response}\n</Example_{example_idx}>"
    else:
        question = example["question"] + "\n" + "Do NOT explain your reasoning. Output ONLY your final answer inside <answer></answer> tags (e.g. <answer>1 min</answer>)."
        golden_answer = parse_gold_seconds(example['answer'])
        return f"<Example_{example_idx}>\n{question}\n<answer>{golden_answer} seconds</answer>\n</Example_{example_idx}>"


def _format_query(question: str, cot: bool) -> str:
    if cot:
        return (
            f"{question}\n"
            "Let's think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>)."
        )
    return (
        f"{question}\n"
        "Do NOT explain your reasoning. Output ONLY your final answer inside <answer></answer> tags (e.g. <answer>1 min</answer>)."
    )


def get_prompts(
    system_prompt: bool,
    question: str,
    CoT: bool,
    icl_examples: int,
    dataset: str,
) -> str:
    if system_prompt:
        return SYSTEM_PROMPT_TEMPLATE

    if dataset == "asynchow":
        train_ds = datasets.load_dataset("fangrulin/asynchow", split="train")
    else:
        raise ValueError(f"Unknown dataset: {dataset}")

    prompt_parts = []
    if icl_examples > 0:
        prompt_parts.append("### Examples:")
        examples = train_ds.shuffle(seed=42).select(range(icl_examples))

        for example_idx, example in enumerate(examples):
            prompt_parts.append(_format_example(example, cot=CoT, example_idx=example_idx+1))

    prompt_parts.append(_format_query(question, cot=CoT))
    return "\n\n".join(prompt_parts)