#!/usr/bin/env python3
"""Generate Robo-Async online episodes from Challenge v2 tasks.

Each online episode maps 1:1 to a static v2 task. The initial online task is the
full static task, and later events inject extra dynamic work. This preserves the
static task's initial difficulty while testing autonomous replanning under
multiple online perturbations.
"""
from __future__ import annotations

import argparse
import copy
import json
import shutil
from pathlib import Path


STATIC_TO_ONLINE = (
    ("easy", "online_easy"),
    ("medium", "online_medium"),
    ("hard_station", "online_hard_station"),
    ("hard_temporal", "online_hard_temporal"),
    ("hard_multiagent", "online_hard_multiagent"),
    ("hard_optimization", "online_hard_optimization"),
    ("hard_high_speedup", "online_hard_high_speedup"),
)

ONLINE_SPLITS = tuple(online for _, online in STATIC_TO_ONLINE)


def _delivery(
    delivery_id: str,
    required_states: dict[str, str],
    stack_order: list[str],
    deadline: float | None = None,
    reward: int | None = None,
) -> dict:
    return {
        "id": delivery_id,
        "required_states": dict(required_states),
        "stack_order": list(stack_order),
        "deadline": deadline,
        "reward": reward,
    }


def _trigger_times(task: dict, count: int, idx: int) -> list[float]:
    optimal = float(task.get("optimal_makespan") or 12.0)
    fractions = (0.22, 0.46) if count == 2 else (0.18, 0.38, 0.62)
    jitter = 0.35 * ((idx % 3) - 1)
    times = []
    last = 0.0
    for rank, frac in enumerate(fractions):
        lower = 2.0 + rank * 1.5
        upper = max(lower + 0.5, optimal * 0.82)
        t = min(max(optimal * frac + jitter, lower), upper)
        t = max(t, last + 1.0)
        times.append(round(t, 3))
        last = t
    return times


def _base_episode(
    episode_id: str,
    source_task: dict,
    online_split: str,
    initial_task: dict,
    events: list[dict],
) -> dict:
    oracle = {
        "replan_points": [float(ev["trigger_time"]) for ev in events],
        "source_task_id": source_task["id"],
        "source_optimal_makespan": source_task.get("optimal_makespan"),
        "oracle_final_makespan": None,
        "source_sequential_makespan": source_task.get("sequential_makespan"),
        "source_speedup_ratio": source_task.get("speedup_ratio"),
        "notes": (
            "Initial task is the full matching Robo-Async Challenge v2 task; "
            "online events add extra dynamic perturbations. Use continuation "
            "oracle fields computed during evaluation for final online optima."
        ),
    }
    if source_task.get("optimal_reward") is not None:
        oracle["source_optimal_reward"] = source_task["optimal_reward"]
        oracle["source_selected_goal_ids"] = list(source_task.get("selected_goal_ids", []))

    return {
        "id": episode_id,
        "protocol": "robo_async_online_v2",
        "source_dataset": "robo_async_challenge_v2",
        "source_task_id": source_task["id"],
        "source_split": source_task["split"],
        "difficulty": online_split,
        "challenge_features": ["online", "dynamic_goal_injection", "replanning", *source_task.get("challenge_features", [])],
        "initial_task": initial_task,
        "events": events,
        "oracle": oracle,
    }


def _episode_id(task: dict, online_split: str) -> str:
    static_prefix = f"{task['split']}_"
    suffix = task["id"][len(static_prefix):] if task["id"].startswith(static_prefix) else task["id"]
    return f"{online_split}_{suffix}"


ITEM_TEMPLATES = {
    "cut": (
        {"state": "raw", "predicates": ["iscuttable"]},
        "cut",
        "cut",
        3,
    ),
    "fry_raw": (
        {"state": "raw", "predicates": ["isfryable"]},
        "fried",
        "fry",
        8,
    ),
    "fry_cut": (
        {"state": "raw", "predicates": ["iscuttable", "isfryableifcut"], "fry_requires_cut": True},
        "fried",
        "fry",
        11,
    ),
    "grill_raw": (
        {"state": "raw", "predicates": ["iscookable"]},
        "grilled",
        "grill",
        10,
    ),
    "marinated_grill": (
        {
            "state": "raw",
            "predicates": ["iscuttable", "ismarinatable", "iscookableifmarinated"],
            "grill_requires_marinated": True,
        },
        "grilled",
        "grill",
        19,
    ),
    "boil": (
        {"state": "raw", "predicates": ["isboilable"]},
        "boiled",
        "boil",
        12,
    ),
    "mash": (
        {"state": "raw", "predicates": ["isboilable"], "mash_requires_boiled": True},
        "mashed",
        "mash",
        16,
    ),
}


def _extra_item_name(task: dict, idx: int, event_idx: int, kind: str) -> str:
    stem = kind.replace("_raw", "").replace("_cut", "")
    name = f"online_{stem}_{idx + 1:02d}_{event_idx}"
    suffix = 2
    while name in task["items"]:
        name = f"online_{stem}_{idx + 1:02d}_{event_idx}_{suffix}"
        suffix += 1
    return name


def _event_count(online_split: str) -> int:
    return 2 if online_split in {"online_easy", "online_medium"} else 3


def _event_specs(online_split: str) -> list[list[dict]]:
    if online_split == "online_easy":
        return [
            [{"kind": "cut", "stack": True, "rush": False}],
            [{"kind": "grill_raw", "stack": True, "rush": True}],
        ]
    if online_split == "online_medium":
        return [
            [{"kind": "fry_cut", "stack": False, "rush": False}],
            [{"kind": "mash", "stack": True, "rush": True}],
        ]
    if online_split == "online_hard_station":
        return [
            [{"kind": "fry_cut", "stack": False, "rush": False}],
            [{"kind": "marinated_grill", "stack": True, "rush": True}],
            [{"kind": "mash", "stack": False, "rush": False}],
        ]
    if online_split == "online_hard_temporal":
        return [
            [{"kind": "mash", "stack": True, "rush": False, "lag": 3}],
            [{"kind": "boil", "stack": True, "rush": True, "lag": 4}],
            [{"kind": "marinated_grill", "stack": True, "rush": True, "lag": 2}],
        ]
    if online_split == "online_hard_multiagent":
        return [
            [{"kind": "mash", "stack": False, "rush": False}],
            [{"kind": "fry_cut", "stack": False, "rush": True}],
            [{"kind": "marinated_grill", "stack": True, "rush": True}],
        ]
    if online_split == "online_hard_high_speedup":
        return [
            [
                {"kind": "fry_cut", "stack": False, "rush": False},
                {"kind": "grill_raw", "stack": False, "rush": False},
            ],
            [
                {"kind": "mash", "stack": False, "rush": True},
                {"kind": "boil", "stack": False, "rush": True},
            ],
            [
                {"kind": "marinated_grill", "stack": True, "rush": True},
                {"kind": "cut", "stack": True, "rush": True},
            ],
        ]
    return [[{"kind": "cut", "stack": True, "rush": False}]]


def _deadline_for_event(trigger_time: float, specs: list[dict]) -> float | None:
    if not any(spec.get("rush") for spec in specs):
        return None
    longest = max(ITEM_TEMPLATES[spec["kind"]][3] + (1 if spec.get("stack") else 0) for spec in specs)
    return round(trigger_time + longest + 5.0, 3)


def _initial_task_from_static(task: dict) -> dict:
    initial_task = {
        "items": copy.deepcopy(task["items"]),
        "deliveries": [
            _delivery(
                "source_order",
                task["goal"].get("required_states", {}),
                task["goal"].get("stack_order", []),
                task.get("deadline"),
            )
        ],
        "action_durations": copy.deepcopy(task["action_durations"]),
        "stations": copy.deepcopy(task["stations"]),
        "temporal_constraints": copy.deepcopy(task.get("temporal_constraints", [])),
        "robots": list(task.get("robots", [])),
    }
    if task.get("deadline") is not None:
        initial_task["deadline"] = task.get("deadline")
    return initial_task


def _non_optimization_episode(task: dict, online_split: str, idx: int) -> dict:
    initial_task = {
        **_initial_task_from_static(task),
    }

    events = []
    times = _trigger_times(task, _event_count(online_split), idx)
    for event_idx, (trigger_time, specs) in enumerate(zip(times, _event_specs(online_split)), start=1):
        add_items = {}
        add_deliveries = []
        add_temporal_constraints = []
        deadline = _deadline_for_event(trigger_time, specs)
        for spec_idx, spec in enumerate(specs, start=1):
            item_name = _extra_item_name(task, idx, event_idx * 10 + spec_idx, spec["kind"])
            item_info, required_state, before_action, _duration = ITEM_TEMPLATES[spec["kind"]]
            add_items[item_name] = copy.deepcopy(item_info)
            delivery_id = f"{'rush_' if spec.get('rush') else ''}event_{event_idx}_order_{spec_idx}"
            add_deliveries.append(
                _delivery(
                    delivery_id,
                    {item_name: required_state},
                    [item_name] if spec.get("stack") else [],
                    deadline if spec.get("rush") else None,
                )
            )
            if spec.get("lag") and spec.get("stack"):
                add_temporal_constraints.append({
                    "before": {"action": before_action, "item": item_name},
                    "after": {"action": "stack", "item": item_name},
                    "min_lag": int(spec["lag"]),
                })

        events.append({
            "id": f"event_{event_idx}",
            "trigger_time": trigger_time,
            "type": "add_delivery",
            "description": "A new dynamic order arrives while the original static task is already underway.",
            "delta": {
                "add_items": add_items,
                "add_deliveries": add_deliveries,
                "add_temporal_constraints": add_temporal_constraints,
                "set_deadline": None,
            },
        })

    return _base_episode(
        _episode_id(task, online_split),
        task,
        online_split,
        initial_task,
        events,
    )


def _optimization_episode(task: dict, online_split: str, idx: int) -> dict:
    initial_task = {
        "items": copy.deepcopy(task["items"]),
        "deliveries": [],
        "candidate_goals": copy.deepcopy(task.get("candidate_goals", [])),
        "deadline": task.get("deadline"),
        "inventory_limits": copy.deepcopy(task.get("inventory_limits", {})),
        "action_durations": copy.deepcopy(task["action_durations"]),
        "stations": copy.deepcopy(task["stations"]),
        "temporal_constraints": [],
        "robots": list(task.get("robots", [])),
    }

    candidate_specs = [
        ("grill_raw", "dynamic_grilled_bonus", 16, {"protein": 1}),
        ("fry_cut", "dynamic_fried_bonus", 13, {"fryer_oil": 1, "fresh": 1}),
        ("mash", "dynamic_mashed_bonus", 15, {"root": 1}),
    ]
    events = []
    for event_idx, (trigger_time, (kind, goal_id, reward, cost)) in enumerate(
        zip(_trigger_times(task, 3, idx), candidate_specs),
        start=1,
    ):
        item_name = _extra_item_name(task, idx, event_idx, kind)
        item_info, required_state, _before_action, _duration = ITEM_TEMPLATES[kind]
        events.append({
            "id": f"event_{event_idx}",
            "trigger_time": trigger_time,
            "type": "add_candidate_goal",
            "description": "A new high-reward candidate goal becomes available during execution.",
            "delta": {
                "add_items": {item_name: copy.deepcopy(item_info)},
                "add_candidate_goals": [
                    {
                        "id": f"{goal_id}_{idx + 1:02d}_{event_idx}",
                        "item": item_name,
                        "state": required_state,
                        "reward": reward,
                        "cost": copy.deepcopy(cost),
                    }
                ],
                "set_deadline": task.get("deadline"),
            },
        })

    return _base_episode(
        _episode_id(task, online_split),
        task,
        online_split,
        initial_task,
        events,
    )


def build_episodes(source_root: Path, per_family: int) -> list[dict]:
    episodes: list[dict] = []
    for static_split, online_split in STATIC_TO_ONLINE:
        paths = sorted((source_root / static_split).glob("*.json"))[:per_family]
        for idx, path in enumerate(paths):
            task = json.loads(path.read_text())
            if task.get("objective_type") == "maximize_reward_under_deadline":
                episodes.append(_optimization_episode(task, online_split, idx))
            else:
                episodes.append(_non_optimization_episode(task, online_split, idx))
    return episodes


def write_dataset(out_dir: Path, source_root: Path, per_family: int) -> list[dict]:
    out_dir.mkdir(parents=True, exist_ok=True)
    for old in out_dir.glob("*.json"):
        old.unlink()

    episodes = build_episodes(source_root, per_family)
    for episode in episodes:
        (out_dir / f"{episode['id']}.json").write_text(json.dumps(episode, indent=2) + "\n")

    split_root = out_dir.parent / "by_split"
    if split_root.exists():
        for old_split_dir in split_root.iterdir():
            if old_split_dir.is_dir() and old_split_dir.name not in ONLINE_SPLITS:
                shutil.rmtree(old_split_dir)
    for split in ONLINE_SPLITS:
        split_dir = split_root / split
        split_dir.mkdir(parents=True, exist_ok=True)
        for old in split_dir.glob("*.json"):
            old.unlink()
    for episode in episodes:
        split_dir = split_root / episode["difficulty"]
        (split_dir / f"{episode['id']}.json").write_text(json.dumps(episode, indent=2) + "\n")

    counts: dict[str, int] = {}
    for episode in episodes:
        counts[episode["difficulty"]] = counts.get(episode["difficulty"], 0) + 1

    print(f"Wrote {len(episodes)} online episodes to {out_dir}")
    for split in ONLINE_SPLITS:
        print(f"  {split:<30s} n={counts.get(split, 0):2d}")
    return episodes


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", default="data/robo_async_online/episodes")
    parser.add_argument("--source", default="data/robo_async_challenge_v2")
    parser.add_argument("--per-family", type=int, default=20)
    args = parser.parse_args()
    write_dataset(Path(args.out), Path(args.source), args.per_family)


if __name__ == "__main__":
    main()
