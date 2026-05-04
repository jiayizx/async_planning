#!/usr/bin/env python3
"""Generate the Robo-Async online benchmark episodes."""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from scripts.gen_robo_async_challenge import (  # noqa: E402
    DURATIONS,
    STATIONS,
    boil_item,
    cut_item,
    fry_after_cut_item,
    fry_item,
    grill_item,
    marinated_grill_item,
    mash_item,
    ready_item,
)


ONLINE_SPLITS = (
    "online_easy",
    "online_medium",
    "online_station",
    "online_multiagent",
    "online_deadline",
    "online_optimization",
    "online_speedup",
)


def _numbered(base: str, n: int) -> str:
    return f"{base}{n:02d}"


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


def _base_episode(
    episode_id: str,
    source_split: str,
    difficulty: str,
    features: list[str],
    initial_task: dict,
    events: list[dict],
) -> dict:
    return {
        "id": episode_id,
        "protocol": "robo_async_online_v1",
        "source_dataset": "robo_async_challenge_v2",
        "source_split": source_split,
        "difficulty": difficulty,
        "challenge_features": ["online", *features],
        "initial_task": initial_task,
        "events": events,
        "oracle": {
            "replan_points": [float(ev["trigger_time"]) for ev in events],
            "notes": "",
        },
    }


def online_medium_specs(n: int) -> list[dict]:
    greens = ["tomato", "cucumber", "pepper", "radish"]
    mains = ["patty", "salmon", "sausage", "eggplant"]
    specs = []
    for i in range(n):
        idx = i + 1
        patty = _numbered(mains[i % len(mains)], idx)
        lettuce = _numbered(["lettuce", "arugula", "slaw", "spinach"][i % 4], idx)
        side_a = _numbered(greens[i % len(greens)], idx + 20)
        side_b = _numbered(greens[(i + 1) % len(greens)], idx + 20)
        plate = _numbered("plate", idx + 20)
        trigger = float(2 + (i % 3))
        initial_task = {
            "items": {
                patty: grill_item(),
                lettuce: cut_item(),
                "bun_bot": ready_item(),
                "bun_top": ready_item(),
            },
            "deliveries": [
                _delivery(
                    "burger_main",
                    {patty: "grilled", lettuce: "cut"},
                    ["bun_bot", patty, lettuce, "bun_top"],
                )
            ],
            "action_durations": dict(DURATIONS),
            "stations": dict(STATIONS),
            "robots": [],
        }
        events = [
            {
                "id": "event_1",
                "trigger_time": trigger,
                "type": "add_delivery",
                "description": "A fresh side order arrives while the main burger is already underway.",
                "delta": {
                    "add_items": {
                        side_a: cut_item(),
                        side_b: cut_item(),
                        plate: ready_item(),
                    },
                    "add_deliveries": [
                        _delivery(
                            "late_salad",
                            {side_a: "cut", side_b: "cut"},
                            [plate, side_a, side_b],
                        )
                    ],
                    "add_temporal_constraints": [],
                    "set_deadline": None,
                },
            }
        ]
        specs.append(_base_episode(
            f"online_medium_{idx:02d}_side_insert",
            "medium",
            "online_medium",
            ["dynamic_goal_injection", "replanning", "light_conflict"],
            initial_task,
            events,
        ))
    return specs


def online_easy_specs(n: int) -> list[dict]:
    mains = ["chicken", "fish", "patty", "eggplant"]
    sides = ["tomato", "cucumber", "carrot", "radish"]
    specs = []
    for i in range(n):
        idx = i + 1
        main = _numbered(mains[i % 4], idx)
        late_side = _numbered(sides[i % 4], idx + 40)
        bowl = _numbered("bowl", idx + 40)
        initial_task = {
            "items": {
                main: grill_item(),
            },
            "deliveries": [
                _delivery(
                    "simple_main",
                    {main: "grilled"},
                    [],
                )
            ],
            "action_durations": dict(DURATIONS),
            "stations": dict(STATIONS),
            "robots": [],
        }
        events = [
            {
                "id": "event_1",
                "trigger_time": 2.0,
                "type": "add_delivery",
                "description": "A very small side order arrives during a simple one-item task.",
                "delta": {
                    "add_items": {
                        late_side: cut_item(),
                        bowl: ready_item(),
                    },
                    "add_deliveries": [
                        _delivery(
                            "late_simple_side",
                            {late_side: "cut"},
                            [bowl, late_side],
                        )
                    ],
                    "add_temporal_constraints": [],
                    "set_deadline": None,
                },
            }
        ]
        specs.append(_base_episode(
            f"online_easy_{idx:02d}_simple_insert",
            "easy",
            "online_easy",
            ["dynamic_goal_injection", "replanning", "simple_online_baseline"],
            initial_task,
            events,
        ))
    return specs


def online_station_specs(n: int) -> list[dict]:
    fry_raw = ["fish", "falafel", "shrimp", "nugget"]
    fry_cut = ["potato", "onion", "okra", "plantain"]
    greens = ["lettuce", "pickle", "cabbage", "celery"]
    specs = []
    for i in range(n):
        idx = i + 1
        raw_main = _numbered(fry_raw[i % 4], idx)
        cut_side = _numbered(fry_cut[i % 4], idx)
        green = _numbered(greens[i % 4], idx)
        late_side = _numbered(fry_cut[(i + 1) % 4], idx + 20)
        trigger = float(5 + (i % 2))
        initial_task = {
            "items": {
                raw_main: fry_item(),
                cut_side: fry_after_cut_item(),
                green: cut_item(),
                "plate01": ready_item(),
            },
            "deliveries": [
                _delivery(
                    "fried_plate",
                    {raw_main: "fried", cut_side: "fried", green: "cut"},
                    ["plate01", raw_main, cut_side, green],
                )
            ],
            "action_durations": dict(DURATIONS),
            "stations": {
                **STATIONS,
                "cutting_board": 2,
                "fryer": 1,
            },
            "robots": [],
        }
        events = [
            {
                "id": "event_1",
                "trigger_time": trigger,
                "type": "add_delivery",
                "description": "A late fried side arrives and competes for the only fryer.",
                "delta": {
                    "add_items": {
                        late_side: fry_after_cut_item(),
                    },
                    "add_deliveries": [
                        _delivery(
                            "late_fried_side",
                            {late_side: "fried"},
                            [],
                        )
                    ],
                    "add_temporal_constraints": [],
                    "set_deadline": None,
                },
            }
        ]
        specs.append(_base_episode(
            f"online_station_{idx:02d}_fryer_insert",
            "hard_station",
            "online_station",
            ["dynamic_goal_injection", "replanning", "shared_station", "bottleneck_station"],
            initial_task,
            events,
        ))
    return specs


def online_multiagent_specs(n: int) -> list[dict]:
    proteins = ["patty", "salmon", "sausage", "eggplant"]
    marinated = ["chicken", "tofu", "mushroom", "tempeh"]
    greens = ["lettuce", "tomato", "pickle", "cucumber"]
    sides = ["shrimp", "nugget", "falafel", "fish"]
    specs = []
    for i in range(n):
        idx = i + 1
        p = _numbered(proteins[i % 4], idx)
        m = _numbered(marinated[i % 4], idx)
        g1 = _numbered(greens[i % 4], idx)
        g2 = _numbered(greens[(i + 1) % 4], idx)
        side = _numbered(sides[i % 4], idx + 30)
        deadline = float(18 + (i % 3))
        initial_task = {
            "items": {
                p: grill_item(),
                m: marinated_grill_item(),
                g1: cut_item(),
                g2: cut_item(),
                "bun_bot": ready_item(),
                "bun_top": ready_item(),
            },
            "deliveries": [
                _delivery(
                    "double_protein_burger",
                    {p: "grilled", m: "grilled", g1: "cut", g2: "cut"},
                    ["bun_bot", p, g1, m, g2, "bun_top"],
                )
            ],
            "action_durations": dict(DURATIONS),
            "stations": {
                **STATIONS,
                "grill": 2,
                "cutting_board": 2,
            },
            "robots": ["robot1", "robot2"],
        }
        events = [
            {
                "id": "event_1",
                "trigger_time": 6.0,
                "type": "add_delivery",
                "description": "A rush fried side arrives and forces the planner to reassign robots.",
                "delta": {
                    "add_items": {
                        side: fry_item(),
                    },
                    "add_deliveries": [
                        _delivery(
                            "rush_side",
                            {side: "fried"},
                            [],
                            deadline=deadline,
                        )
                    ],
                    "add_temporal_constraints": [],
                    "set_deadline": None,
                },
            }
        ]
        specs.append(_base_episode(
            f"online_multiagent_{idx:02d}_rush_combo",
            "hard_multiagent",
            "online_multiagent",
            ["dynamic_goal_injection", "replanning", "multiagent", "robot_reassignment"],
            initial_task,
            events,
        ))
    return specs


def online_deadline_specs(n: int) -> list[dict]:
    mains = ["patty", "salmon", "eggplant", "tofu"]
    mashes = ["yam", "turnip", "cassava", "parsnip"]
    greens = ["lettuce", "spinach", "slaw", "arugula"]
    soups = ["stock", "broth", "beans", "peas"]
    specs = []
    for i in range(n):
        idx = i + 1
        main = _numbered(mains[i % 4], idx)
        mash = _numbered(mashes[i % 4], idx)
        green = _numbered(greens[i % 4], idx)
        soup = _numbered(soups[i % 4], idx + 30)
        deadline = float(17 + (i % 3))
        initial_task = {
            "items": {
                main: grill_item(),
                mash: mash_item(),
                green: cut_item(),
                "bun_bot": ready_item(),
                "bun_top": ready_item(),
            },
            "deliveries": [
                _delivery(
                    "burger_combo",
                    {main: "grilled", mash: "mashed", green: "cut"},
                    ["bun_bot", main, green, "bun_top"],
                )
            ],
            "action_durations": dict(DURATIONS),
            "stations": dict(STATIONS),
            "robots": [],
        }
        events = [
            {
                "id": "event_1",
                "trigger_time": float(4 + (i % 2)),
                "type": "add_delivery",
                "description": "A rush soup must be completed on a much tighter deadline than the original work.",
                "delta": {
                    "add_items": {
                        soup: boil_item(),
                        _numbered("bowl", idx + 30): ready_item(),
                    },
                    "add_deliveries": [
                        _delivery(
                            "rush_soup",
                            {soup: "boiled"},
                            [],
                            deadline=deadline,
                        )
                    ],
                    "add_temporal_constraints": [],
                    "set_deadline": None,
                },
            }
        ]
        specs.append(_base_episode(
            f"online_deadline_{idx:02d}_rush_soup",
            "hard_temporal",
            "online_deadline",
            ["dynamic_goal_injection", "replanning", "deadline", "temporal_tradeoff"],
            initial_task,
            events,
        ))
    return specs


def online_optimization_specs(n: int) -> list[dict]:
    mains = ["patty", "salmon", "sausage", "eggplant"]
    fries = ["fish", "falafel", "shrimp", "nugget"]
    cutfries = ["potato", "onion", "okra", "plantain"]
    greens = ["lettuce", "tomato", "pickle", "carrot"]
    soups = ["stock", "broth", "beans", "peas"]
    late = ["chicken", "tofu", "mushroom", "steak"]
    specs = []
    for i in range(n):
        idx = i + 1
        main = _numbered(mains[i % 4], idx)
        fried = _numbered(fries[i % 4], idx)
        side = _numbered(cutfries[i % 4], idx)
        green = _numbered(greens[i % 4], idx)
        soup = _numbered(soups[i % 4], idx)
        vip = _numbered(late[i % 4], idx + 40)
        initial_task = {
            "items": {
                main: grill_item(),
                fried: fry_item(),
                side: fry_after_cut_item(),
                green: cut_item(),
                soup: boil_item(),
            },
            "deliveries": [],
            "candidate_goals": [
                {"id": "grilled_main", "item": main, "state": "grilled", "reward": 9, "cost": {"protein": 1}},
                {"id": "fried_main", "item": fried, "state": "fried", "reward": 8, "cost": {"protein": 1, "fryer_oil": 1}},
                {"id": "fried_side", "item": side, "state": "fried", "reward": 7, "cost": {"fryer_oil": 1, "fresh": 1}},
                {"id": "fresh_side", "item": green, "state": "cut", "reward": 4, "cost": {"fresh": 1}},
                {"id": "soup_side", "item": soup, "state": "boiled", "reward": 6, "cost": {"root": 1}},
            ],
            "deadline": float(24 + (i % 2)),
            "inventory_limits": {
                "protein": 2,
                "fryer_oil": 2,
                "root": 1,
                "fresh": 2,
            },
            "action_durations": dict(DURATIONS),
            "stations": {
                **STATIONS,
                "cutting_board": 2,
            },
            "robots": ["robot1", "robot2"],
        }
        events = [
            {
                "id": "event_1",
                "trigger_time": 4.0,
                "type": "add_candidate_goal",
                "description": "A VIP grilled item appears and changes the best reward-maximizing subset.",
                "delta": {
                    "add_items": {
                        vip: marinated_grill_item(),
                    },
                    "add_candidate_goals": [
                        {
                            "id": "vip_marinated_grill",
                            "item": vip,
                            "state": "grilled",
                            "reward": 16,
                            "cost": {"protein": 1, "fresh": 1},
                        }
                    ],
                    "set_deadline": float(24 + (i % 2)),
                },
            }
        ]
        specs.append(_base_episode(
            f"online_optimization_{idx:02d}_vip_shift",
            "hard_optimization",
            "online_optimization",
            ["dynamic_goal_injection", "replanning", "reward_maximization", "subset_change"],
            initial_task,
            events,
        ))
    return specs


def online_speedup_specs(n: int) -> list[dict]:
    grills = ["patty", "salmon", "sausage", "eggplant"]
    fryers = ["shrimp", "nugget", "fish", "falafel"]
    cutfries = ["potato", "onion", "okra", "plantain"]
    soups = ["stock", "broth", "beans", "peas"]
    extras = ["tofu", "mushroom", "tempeh", "chicken"]
    specs = []
    for i in range(n):
        idx = i + 1
        grill_main = _numbered(grills[i % 4], idx)
        fryer_main = _numbered(fryers[i % 4], idx)
        cut_side = _numbered(cutfries[i % 4], idx)
        boil_side = _numbered(soups[i % 4], idx)
        extra = _numbered(extras[i % 4], idx + 50)
        deadline = float(26 + (i % 2))
        initial_task = {
            "items": {
                grill_main: grill_item(),
                fryer_main: fry_item(),
                cut_side: fry_after_cut_item(),
                boil_side: boil_item(),
                "plate01": ready_item(),
            },
            "deliveries": [
                _delivery(
                    "parallel_combo",
                    {
                        grill_main: "grilled",
                        fryer_main: "fried",
                        cut_side: "fried",
                        boil_side: "boiled",
                    },
                    ["plate01", fryer_main, cut_side, grill_main],
                )
            ],
            "action_durations": dict(DURATIONS),
            "stations": {
                **STATIONS,
                "grill": 2,
                "cutting_board": 2,
            },
            "robots": ["robot1", "robot2"],
        }
        events = [
            {
                "id": "event_1",
                "trigger_time": 4.0,
                "type": "add_delivery",
                "description": "A new high-value item arrives and the planner must reorganize parallel work to preserve speedup.",
                "delta": {
                    "add_items": {
                        extra: marinated_grill_item(),
                    },
                    "add_deliveries": [
                        _delivery(
                            "rush_parallel_bonus",
                            {extra: "grilled"},
                            [],
                            deadline=deadline,
                        )
                    ],
                    "add_temporal_constraints": [],
                    "set_deadline": None,
                },
            }
        ]
        specs.append(_base_episode(
            f"online_speedup_{idx:02d}_parallel_shift",
            "hard_high_speedup",
            "online_speedup",
            ["dynamic_goal_injection", "replanning", "parallel_restructuring", "high_speedup"],
            initial_task,
            events,
        ))
    return specs


def build_episodes(per_family: int) -> list[dict]:
    return (
        online_easy_specs(per_family)
        + online_medium_specs(per_family)
        + online_station_specs(per_family)
        + online_multiagent_specs(per_family)
        + online_deadline_specs(per_family)
        + online_optimization_specs(per_family)
        + online_speedup_specs(per_family)
    )


def write_dataset(out_dir: Path, per_family: int) -> list[dict]:
    out_dir.mkdir(parents=True, exist_ok=True)
    for old in out_dir.glob("*.json"):
        old.unlink()

    episodes = build_episodes(per_family)
    for episode in episodes:
        (out_dir / f"{episode['id']}.json").write_text(json.dumps(episode, indent=2) + "\n")

    split_root = out_dir.parent / "by_split"
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
        print(f"  {split:<20s} n={counts.get(split, 0):2d}")
    return episodes


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", default="data/robo_async_online/episodes")
    parser.add_argument("--per-family", type=int, default=5)
    args = parser.parse_args()
    write_dataset(Path(args.out), args.per_family)


if __name__ == "__main__":
    main()
