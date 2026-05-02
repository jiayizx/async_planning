"""
Task list for async-planning DAG generation.

Loads tasks from tasks.json and provides random sampling.
Durations are decoupled from tasks — use a single duration_range for all nodes.
"""

from __future__ import annotations

import json
import random
from pathlib import Path

_TASKS_PATH = Path(__file__).parent / "tasks.json"

_tasks_cache: list[str] | None = None


def load_tasks() -> list[str]:
    """Load task names from tasks.json."""
    global _tasks_cache
    if _tasks_cache is None:
        _tasks_cache = json.loads(_TASKS_PATH.read_text(encoding="utf-8"))
    return _tasks_cache


def sample_task(rng: random.Random) -> str:
    """Sample one task name uniformly from the task list."""
    tasks = load_tasks()
    return rng.choice(tasks)
