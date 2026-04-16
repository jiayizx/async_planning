"""Tag filtering helpers for Robo-Async experiment runners."""
from __future__ import annotations


def task_tags(task_dict: dict) -> set[str]:
    tags: set[str] = set()
    for key in ("challenge_features", "tags", "dependency_types"):
        value = task_dict.get(key)
        if isinstance(value, list):
            tags.update(str(v) for v in value)
        elif isinstance(value, str):
            tags.add(value)
    for key in ("hard_type", "challenge_type", "variant"):
        value = task_dict.get(key)
        if value:
            tags.add(str(value))
    difficulty = task_dict.get("difficulty")
    if difficulty:
        tags.add(str(difficulty))
    return tags


def tag_filter_match(
    task_dict: dict,
    include_tags: set[str],
    exclude_tags: set[str],
) -> bool:
    tags = task_tags(task_dict)
    if include_tags and not include_tags.issubset(tags):
        return False
    if exclude_tags and tags.intersection(exclude_tags):
        return False
    return True


def parse_tag_arg(value: str) -> set[str]:
    return {part.strip() for part in value.split(",") if part.strip()}
