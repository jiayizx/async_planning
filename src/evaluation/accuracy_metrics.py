from __future__ import annotations

import re
import datetime
from datetime import timedelta
from typing import Any, Optional

UNIT_SECONDS = {
    "day": 86400,
    "days": 86400,
    "hour": 3600,
    "hours": 3600,
    "minute": 60,
    "minutes": 60,
    "min": 60,
    "mins": 60,
    "second": 1,
    "seconds": 1,
    "sec": 1,
    "secs": 1,
    "week": 604800,
    "weeks": 604800,
}

def parse_gold_seconds(answer: Any) -> int:
    """Convert gold answer to seconds. Handles: int, timedelta, duration str, legacy [timedelta,...] str."""
    if isinstance(answer, int):
        return answer
    if isinstance(answer, timedelta):
        return int(answer.total_seconds())
    if isinstance(answer, str):
        parsed = parse_duration_text(answer)
        if parsed is not None:
            return parsed
        if answer.strip().replace("-", "").isdigit():
            return int(answer.strip())
        s = eval(answer)
        if isinstance(s, (list, tuple)) and len(s) > 0 and isinstance(s[0], timedelta):
            return int(s[0].total_seconds())
        if isinstance(s, (int, float)):
            return int(s)
    raise ValueError(f"Unrecognized answer format: {answer}")


def parse_duration_text(text: str, month_seconds: Optional[int] = None) -> Optional[int]:
    if not text:
        return None
    text = text.lower().strip()

    # Accept both single-unit answers ("100 minutes") and compound answers
    # ("7 days 2 hours 15 minutes"). Planner outputs often include the latter.
    unit_seconds = dict(UNIT_SECONDS)
    unit_pattern = r"weeks?|days?|hours?|minutes?|mins?|seconds?|secs?"
    if month_seconds is not None:
        unit_seconds["month"] = month_seconds
        unit_seconds["months"] = month_seconds
        unit_pattern = r"months?|" + unit_pattern
    matches = re.findall(
        rf"(\d+(?:\.\d+)?)\s*({unit_pattern})",
        text,
    )
    if not matches:
        return None
    total = sum(float(value) * unit_seconds[unit] for value, unit in matches)
    return int(round(total))


def parse_prediction_seconds(text: str, month_seconds: Optional[int] = None) -> Optional[int]:
    if not text:
        return None
    match = re.search(r"<answer>(.*?)</answer>", text, re.DOTALL | re.IGNORECASE)
    if match:
        text = match.group(1).strip()
    parsed = parse_duration_text(text, month_seconds=month_seconds)
    return parsed



def exact_match(pred_seconds: Optional[int], gold_seconds: int) -> bool:
    return pred_seconds == gold_seconds
