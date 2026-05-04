"""Tag filtering helpers for Robo-Async experiment runners."""
from __future__ import annotations


SUMMARY_SPLIT_TAGS = (
    "easy",
    "medium",
    "hard_station",
    "hard_temporal",
    "hard_multiagent",
    "hard_optimization",
    "hard_high_speedup",
    "online_easy",
    "online_medium",
    "online_station",
    "online_multiagent",
    "online_deadline",
    "online_optimization",
    "online_speedup",
)


def task_tags(task_dict: dict) -> set[str]:
    tags: set[str] = set()
    for key in ("challenge_features", "tags", "dependency_types"):
        value = task_dict.get(key)
        if isinstance(value, list):
            tags.update(str(v) for v in value)
        elif isinstance(value, str):
            tags.add(value)
    for key in ("split", "hard_type", "challenge_type", "variant"):
        value = task_dict.get(key)
        if value:
            tags.add(str(value))
    difficulty = task_dict.get("difficulty")
    if difficulty:
        tags.add(str(difficulty))
    return tags


def summary_tags(task_dict: dict) -> set[str]:
    """Primary split tags used for summary tables."""
    tags = task_tags(task_dict)
    primary = {tag for tag in SUMMARY_SPLIT_TAGS if tag in tags}
    if primary:
        return primary
    if task_dict.get("difficulty"):
        return {str(task_dict["difficulty"])}
    return set()


def summarize_by_tag(task_dicts: list[dict], results: list[dict]) -> dict:
    present = {tag for task in task_dicts for tag in summary_tags(task)}
    ordered_tags = [tag for tag in SUMMARY_SPLIT_TAGS if tag in present]
    extra_tags = sorted(present - set(SUMMARY_SPLIT_TAGS))
    tags = ordered_tags + extra_tags
    summary = {}
    for tag in tags:
        tagged = [
            result
            for task, result in zip(task_dicts, results)
            if tag in summary_tags(task)
        ]
        ratios = [
            result.get("makespan_ratio")
            for result in tagged
            if result.get("success") and result.get("makespan_ratio") is not None
        ]
        n = len(tagged)
        n_success = sum(1 for result in tagged if result.get("success"))
        summary[tag] = {
            "n": n,
            "n_success": n_success,
            "success_rate": round(n_success / n, 4) if n else 0,
            "avg_makespan_ratio": round(sum(ratios) / len(ratios), 4) if ratios else 0,
        }
    return summary


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
