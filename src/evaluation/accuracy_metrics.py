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
}

def parse_gold_seconds(answer: Any) -> int:
    if isinstance(answer, timedelta):
        return int(answer.total_seconds())
    if isinstance(answer, str):
        s = eval(answer)
        return int(s[0].total_seconds())
    raise ValueError(f"Unrecognized answer format: {answer}")


def parse_duration_text(text: str) -> Optional[int]:
    if not text:
        return None
    text = text.lower().strip()

    # Accept variants like "100 minutes", "100 min", and also "Match: 100 minutes"
    # Try to extract a number and a valid time unit from anywhere in string
    match = re.search(
        r"(\d+(?:\.\d+)?)\s*(day|days|hour|hours|minute|minutes|min|mins|second|seconds|sec|secs)",
        text
    )
    if not match:
        return None
    value, unit = match.groups()
    total = float(value) * UNIT_SECONDS[unit]
    return int(round(total))


def parse_prediction_seconds(text: str) -> Optional[int]:
    if not text:
        return None
    match = re.search(r"<answer>(.*?)</answer>", text, re.DOTALL | re.IGNORECASE)
    if match:
        text = match.group(1).strip()
    parsed = parse_duration_text(text)
    return parsed



def exact_match(pred_seconds: Optional[int], gold_seconds: int) -> bool:
    return pred_seconds == gold_seconds
