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
    parsed = parse_duration_text(text.lower())
    return parsed



def exact_match(pred_seconds: Optional[int], gold_seconds: int) -> bool:
    return pred_seconds == gold_seconds


answer = """
I need to find the shortest time to complete all steps while respecting the ordering constraints.

Let me first list the constraints:
- Step 1 → Step 5
- Step 2 → Step 3
- Step 3 → Step 4
- Step 4 → Step 5

And the durations:
- Step 1: 30 min
- Step 2: 30 min
- Step 3: 10 min
- Step 4: 30 min
- Step 5: 30 min

Since we have infinite resources, I can work on independent tasks in parallel.

Let me identify the dependency chains:
- Chain A: Step 1 → Step 5 (30 + 30 = 60 min)
- Chain B: Step 2 → Step 3 → Step 4 → Step 5 (30 + 10 + 30 + 30 = 100 min)

Step 5 depends on both Step 1 and Step 4, so I need both chains to complete before Step 5 can start.

The critical path is:
- Start Step 2 and Step 1 in parallel (time 0)
- Step 2 completes at 30 min
- Step 3 starts at 30 min, completes at 40 min
- Step 4 starts at 40 min, completes at 70 min
- Step 1 completes at 30 min
- Step 5 can start when both Step 1 (30 min) and Step 4 (70 min) are complete
- Step 5 starts at 70 min, completes at 100 min

The longest chain is: Step 2 → Step 3 → Step 4 → Step 5 = 30 + 10 + 30 + 30 = 100 minutes

<answer>100 minutes</answer>
"""

seconds = parse_prediction_seconds(answer)
print("Seconds: ", seconds)