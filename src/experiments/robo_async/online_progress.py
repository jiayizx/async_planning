"""Progress helpers for Robo-Async online runners."""
from __future__ import annotations

import sys
from collections import Counter
from typing import Any

try:
    from tqdm import tqdm
except Exception:  # pragma: no cover - tqdm is in requirements, fallback for minimal envs.
    tqdm = None


ONLINE_PROGRESS_ORDER = (
    "online_easy",
    "online_medium",
    "online_hard_station",
    "online_hard_temporal",
    "online_hard_multiagent",
    "online_hard_optimization",
    "online_hard_high_speedup",
)


def sort_online_episodes(episodes: list[dict[str, Any]]) -> list[dict[str, Any]]:
    order = {name: idx for idx, name in enumerate(ONLINE_PROGRESS_ORDER)}
    return sorted(
        episodes,
        key=lambda ep: (
            order.get(str(ep.get("difficulty", "")), len(order)),
            str(ep.get("id", "")),
        ),
    )


class OnlineSubsetProgress:
    def __init__(self, episodes: list[dict[str, Any]], *, unit: str = "ep") -> None:
        self.counts = Counter(str(ep.get("difficulty", "online")) for ep in episodes)
        self.unit = unit
        self.current: str | None = None
        self.bar = None

    def start_episode(self, episode: dict[str, Any]) -> None:
        difficulty = str(episode.get("difficulty", "online"))
        if difficulty == self.current:
            return
        self.close()
        self.current = difficulty
        if tqdm is not None:
            self.bar = tqdm(
                total=self.counts[difficulty],
                desc=f"{difficulty:26s}",
                unit=self.unit,
                dynamic_ncols=True,
                file=sys.stdout,
            )

    def update(self) -> None:
        if self.bar is not None:
            self.bar.update(1)

    def close(self) -> None:
        if self.bar is not None:
            self.bar.close()
            self.bar = None
