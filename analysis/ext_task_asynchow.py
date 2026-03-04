import re
import datasets
import os
import json


def extract_task_title(text):
    """
    Extracts the task title (e.g., 'create a video game') from a given data instance string.
    Assumes the format starts with: "To [task title], here are the steps and the times needed for each step."
    """
    pattern = r"^To\s+(.*?),\s+here are the steps and the times needed for each step\."
    match = re.search(pattern, text, re.MULTILINE)
    if match:
        return match.group(1).strip()
    return None


# Example usage:
if __name__ == "__main__":
    # Load the 'fangrulin/asynchow' dataset using HuggingFace datasets
    dataset = datasets.load_dataset("fangrulin/asynchow", split="train")

    for example in dataset:
        print(extract_task_title(example['question']))

    # Extract all unique task titles from the dataset and save them to src/gen_data/tasks.json

    # Extract task titles from the dataset
    task_titles = set()
    for example in dataset:
        title = extract_task_title(example['question'])
        if title:
            task_titles.add(title)

    # Ensure the output directory exists
    output_path = os.path.join("src", "gen_data", "tasks.json")
    os.makedirs(os.path.dirname(output_path), exist_ok=True)

    # Save the unique task titles as a JSON array
    with open(output_path, "w", encoding="utf-8") as f:
        json.dump(sorted(task_titles), f, ensure_ascii=False, indent=2)

    print(f"Saved {len(task_titles)} unique task titles to {output_path}")

    # # Take an example from the dataset for demonstration
    # # We'll access the first split (often 'train', but let's handle any first split)
    # first_split = list(dataset.keys())[0]
    # example_instance = dataset[first_split][0]
    # # The instruction hints that the actual text is likely in a field called 'question' (common for planning problems)
    # if 'question' in example_instance:
    #     example = example_instance['question']
    # else:
    #     # Fallback to just str of the whole dict if unsure
    #     example = str(example_instance)
    
    # print(extract_task_title(example))  # Output: create a video game