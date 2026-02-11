from __future__ import annotations

import re
from typing import Optional


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


def parse_timedelta_string(text: str) -> Optional[int]:
    match = re.search(r"datetime\\.timedelta\\(([^)]*)\\)", text)
    if not match:
        return None
    args = match.group(1).split(",")
    total = 0
    for arg in args:
        if "=" not in arg:
            continue
        key, value = [part.strip() for part in arg.split("=", 1)]
        if key == "days":
            total += int(float(value)) * 86400
        elif key == "seconds":
            total += int(float(value))
    return total


def parse_duration_text(text: str) -> Optional[int]:
    if not text:
        return None
    text = text.lower().strip()
    total = 0.0
    matches = re.findall(
        r"(\\d+(?:\\.\\d+)?)\\s*(day|days|hour|hours|minute|minutes|min|mins|second|seconds|sec|secs)",
        text,
    )
    if not matches:
        return None
    for value, unit in matches:
        total += float(value) * UNIT_SECONDS[unit]
    return int(round(total))


def parse_gold_seconds(answer) -> int:
    if isinstance(answer, list):
        answer = answer[0]
    if isinstance(answer, (int, float)):
        return int(answer)
    if isinstance(answer, str):
        parsed = parse_timedelta_string(answer)
        if parsed is not None:
            return parsed
        parsed = parse_duration_text(answer)
        if parsed is not None:
            return parsed
    raise ValueError(f"Unrecognized answer format: {answer}")


def parse_prediction_seconds(text: str) -> Optional[int]:
    if not text:
        return None
    match = re.search(r"<answer>(.*?)</answer>", text, re.DOTALL | re.IGNORECASE)
    if match:
        text = match.group(1).strip()
    parsed = parse_duration_text(text)
    return parsed


def canonical_answer_text(seconds: int) -> str:
    days, rem = divmod(seconds, 86400)
    hours, rem = divmod(rem, 3600)
    minutes, seconds = divmod(rem, 60)
    parts = []
    if days:
        parts.append(f"{days} days")
    if hours:
        parts.append(f"{hours} hours")
    if minutes:
        parts.append(f"{minutes} minutes")
    if seconds or not parts:
        parts.append(f"{seconds} seconds")
    return " ".join(parts)


def exact_match(pred_seconds: Optional[int], gold_seconds: int) -> bool:
    return pred_seconds == gold_seconds
