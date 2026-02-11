import datasets
from src.llms import get_model
from src.evaluation.metrics import (
    exact_match,
    parse_gold_seconds,
    parse_prediction_seconds,
)

SYSTEM_PROMPT_TEMPLATE = """You are a helpful plan organizer."""


def _format_example_no_cot(example: dict, example_idx: int) -> str:
    question = example["question"] + "\n" + "Do NOT explain your reasoning. Output ONLY your final answer inside <answer></answer> tags (e.g. <answer>1 min</answer>)."
    golden_answer = parse_gold_seconds(example['answer'])
    return f"<Example_{example_idx}>\n{question}\n<answer>{golden_answer} seconds</answer>\n</Example_{example_idx}>"


def _build_cot_examples(examples: list) -> list[str]:
    """Generate CoT few-shot examples in parallel via batch_chat."""
    llm_client = get_model(model_name="openai/gpt-4.1-mini", config={"temperature": 0.0, "max_tokens": 2048}, num_workers=len(examples))

    questions = []
    all_messages = []
    for example in examples:
        q = example['question'] + "\n" + "Let's think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>).\n"
        questions.append(q)
        all_messages.append([
            {"role": "system", "content": SYSTEM_PROMPT_TEMPLATE},
            {"role": "user", "content": q},
        ])

    responses = llm_client.batch_chat(all_messages, desc="Generating CoT examples")

    results = []
    for idx, (q, resp) in enumerate(zip(questions, responses)):
        results.append(f"<Example_{idx+1}>\n{q}\n{resp}\n</Example_{idx+1}>")
    return results


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


def build_icl_prefix(
    CoT: bool,
    icl_examples: int,
    dataset: str,
) -> str:
    """Build the ICL examples prefix ONCE. Returns empty string if icl_examples == 0."""
    if icl_examples <= 0:
        return ""

    if dataset == "asynchow":
        train_ds = datasets.load_dataset("fangrulin/asynchow", split="train")
    else:
        raise ValueError(f"Unknown dataset: {dataset}")

    examples = train_ds.shuffle(seed=42).select(range(icl_examples))

    parts = ["### Examples:"]
    if CoT:
        parts.extend(_build_cot_examples(list(examples)))
    else:
        for example_idx, example in enumerate(examples):
            parts.append(_format_example_no_cot(example, example_idx=example_idx + 1))

    return "\n\n".join(parts)


def get_prompts(
    question: str,
    CoT: bool,
    icl_prefix: str = "",
) -> str:
    """Build the final user prompt for a single test question."""
    parts = []
    if icl_prefix:
        parts.append(icl_prefix)
    parts.append(_format_query(question, cot=CoT))
    return "\n\n".join(parts)