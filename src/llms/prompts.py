import os
import datasets

STANDARD_PROMPT_TEMPLATE = """
You are a helpful assistant.
"""


def get_prompts(icl_examples: int, CoT: bool, dataset: str) -> str:
    dataset = None
    if dataset == "asynchow":
        dataset = datasets.load_dataset("fangrulin/asynchow", split="train")
    else:
        raise ValueError(f"Unknown dataset: {dataset}")

    
    prompt = STANDARD_PROMPT_TEMPLATE

    if icl_examples > 0:
        prompt += "\n\n" + "\n\n".join(dataset.select(range(icl_examples), seed=42, shuffle=True)["instruction"])
 

    if CoT:
        prompt += "\n\n" + "Think step by step and then reply with the numerical value of the shortest path enclosed by <result></result> tags."

    return prompt