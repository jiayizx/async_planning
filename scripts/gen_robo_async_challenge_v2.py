#!/usr/bin/env python3
"""Generate Robo-Async Challenge v2."""
from __future__ import annotations

import argparse
import json
import sys
from dataclasses import dataclass
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
from src.envs.robo_async.engine import Task, evaluate_from_text  # noqa: E402
from src.experiments.robo_async.run_cpsat_formalizer import oracle_schedule_spec  # noqa: E402
from src.method.cpsat_scheduler import parse_schedule_spec, solve_schedule  # noqa: E402


IMPLEMENTED_SPLITS = (
    "easy",
    "medium",
    "hard_station",
    "hard_temporal",
    "hard_multiagent",
    "hard_optimization",
    "hard_high_speedup",
)

ALL_SPLITS = (
    "easy",
    "medium",
    "hard_station",
    "hard_temporal",
    "hard_multiagent",
    "hard_optimization",
    "hard_high_speedup",
)


@dataclass(frozen=True)
class V2Spec:
    task_id: str
    split: str
    items: dict
    required: dict
    stack_order: list[str]
    stations: dict | None = None
    temporal_constraints: tuple[dict, ...] = ()
    robots: tuple[str, ...] = ()
    deadline: float | None = None
    candidate_goals: tuple[dict, ...] = ()
    inventory_limits: dict | None = None
    selected_goal_ids: tuple[str, ...] = ()
    optimal_reward: int | None = None
    features: tuple[str, ...] = ()


def _task_from_spec(spec: V2Spec) -> dict:
    task = {
        "id": spec.task_id,
        "split": spec.split,
        "difficulty": "hard" if spec.split.startswith("hard_") else spec.split,
        "challenge_features": [spec.split, *spec.features],
        "implicit_style": "rule_based",
        "objective_type": "minimize_makespan",
        "affordance_mode": "action_model",
        "items": spec.items,
        "goal": {
            "required_states": spec.required,
            "stack_order": spec.stack_order,
        },
        "action_durations": DURATIONS,
        "stations": dict(spec.stations or STATIONS),
        "temporal_constraints": list(spec.temporal_constraints),
    }
    if spec.robots:
        task["robots"] = list(spec.robots)
    if spec.deadline is not None:
        task["deadline"] = spec.deadline
    if spec.candidate_goals:
        task["objective_type"] = "maximize_reward_under_deadline"
        task["candidate_goals"] = list(spec.candidate_goals)
        task["selected_goal_ids"] = list(spec.selected_goal_ids)
        task["optimal_reward"] = spec.optimal_reward
    if spec.inventory_limits:
        task["inventory_limits"] = dict(spec.inventory_limits)

    schedule_spec = oracle_schedule_spec(task)
    actions, deps = parse_schedule_spec(
        schedule_spec,
        valid_items=set(task["items"]),
        station_capacities=task["stations"],
        robots=task.get("robots"),
    )
    result = solve_schedule(
        actions,
        deps,
        station_capacities=task["stations"],
        robots=task.get("robots"),
        timeout=120.0,
    )
    if not result.optimal:
        raise RuntimeError(f"CP-SAT failed for {task['id']}: {result.status} {result.error}")

    witness = result.to_plan_text()
    seq = round(sum(action.duration for action in actions), 3)
    optimal = round(float(result.makespan), 3)
    speedup = round(seq / optimal, 3) if optimal > 0 else 1.0

    task.update({
        "optimal_makespan": optimal,
        "sequential_makespan": seq,
        "speedup_ratio": speedup,
        "witness_plan": witness,
        "groundtruth_solver": "cp-sat",
        "groundtruth_solver_status": result.status,
    })

    eval_result = evaluate_from_text(witness, Task.from_dict(task))
    if not eval_result.success:
        raise RuntimeError(f"witness failed for {task['id']}: {eval_result.error}\n{witness}")
    if abs(eval_result.makespan - optimal) > 1e-6:
        raise RuntimeError(
            f"witness makespan mismatch for {task['id']}: {eval_result.makespan} != {optimal}"
        )
    return task


def _numbered(base: str, n: int) -> str:
    return f"{base}{n:02d}"


def easy_specs(n: int = 20) -> list[V2Spec]:
    templates = [
        ("grilled_chicken_sandwich", {"chicken": grill_item(), "bun_bot": ready_item(), "bun_top": ready_item()}, {"chicken": "grilled"}, ["bun_bot", "chicken", "bun_top"]),
        ("fried_fish_plate", {"fish": fry_item(), "plate": ready_item()}, {"fish": "fried"}, ["plate", "fish"]),
        ("patty_lettuce_burger", {"patty": grill_item(), "lettuce": cut_item(), "bun_bot": ready_item(), "bun_top": ready_item()}, {"patty": "grilled", "lettuce": "cut"}, ["bun_bot", "patty", "lettuce", "bun_top"]),
        ("tomato_salad_plate", {"tomato": cut_item(), "cucumber": cut_item(), "plate": ready_item()}, {"tomato": "cut", "cucumber": "cut"}, ["plate", "tomato", "cucumber"]),
        ("boiled_stock_bowl", {"stock": boil_item(), "bowl": ready_item()}, {"stock": "boiled"}, ["bowl", "stock"]),
        ("mashed_yam_bowl", {"yam": mash_item(), "bowl": ready_item()}, {"yam": "mashed"}, ["bowl", "yam"]),
        ("marinated_chicken_plate", {"chicken": marinated_grill_item(), "plate": ready_item()}, {"chicken": "grilled"}, ["plate", "chicken"]),
        ("fried_chicken_cut_carrot", {"chicken": fry_item(), "carrot": cut_item(), "plate": ready_item()}, {"chicken": "fried", "carrot": "cut"}, ["plate", "chicken", "carrot"]),
        ("toastless_breakfast_plate", {"patty": grill_item(), "potato": mash_item(), "plate": ready_item()}, {"patty": "grilled", "potato": "mashed"}, ["plate", "patty", "potato"]),
        ("simple_soup_side", {"water": boil_item(), "onion": cut_item(), "bowl": ready_item()}, {"water": "boiled", "onion": "cut"}, ["bowl", "water", "onion"]),
    ]
    specs: list[V2Spec] = []
    for i in range(n):
        name, items, required, stack = templates[i % len(templates)]
        if i >= len(templates):
            items = {(_numbered(k, i + 1) if k not in {"plate", "bowl", "bun_bot", "bun_top"} else k): v for k, v in items.items()}
            mapping = {
                k: (_numbered(k, i + 1) if k not in {"plate", "bowl", "bun_bot", "bun_top"} else k)
                for k in set(required) | set(stack)
            }
            required = {mapping[k]: v for k, v in required.items()}
            stack = [mapping[k] for k in stack]
        specs.append(V2Spec(f"easy_{i+1:02d}_{name}", "easy", items, required, stack))
    return specs


def medium_specs(n: int = 20) -> list[V2Spec]:
    specs: list[V2Spec] = []
    proteins = [
        ("chicken", fry_item(), "fried"),
        ("patty", grill_item(), "grilled"),
        ("marinated_chicken", marinated_grill_item(), "grilled"),
        ("tofu", marinated_grill_item(), "grilled"),
    ]
    sides = [
        ("potato", fry_after_cut_item(), "fried"),
        ("onion", fry_after_cut_item(), "fried"),
        ("yam", mash_item(), "mashed"),
        ("turnip", mash_item(), "mashed"),
    ]
    greens = [("lettuce", cut_item(), "cut"), ("tomato", cut_item(), "cut"), ("cucumber", cut_item(), "cut")]
    for i in range(n):
        idx = i + 1
        p_name, p_info, p_req = proteins[i % len(proteins)]
        s_name, s_info, s_req = sides[(i * 2) % len(sides)]
        g_name, g_info, g_req = greens[(i * 3) % len(greens)]
        p = _numbered(p_name, idx)
        s = _numbered(s_name, idx)
        g = _numbered(g_name, idx)
        items = {
            p: p_info,
            s: s_info,
            g: g_info,
            "bun_bot": ready_item(),
            "bun_top": ready_item(),
        }
        required = {p: p_req, s: s_req, g: g_req}
        # Side item is often required but not stacked.
        stack = ["bun_bot", p, g, "bun_top"] if i % 2 == 0 else ["bun_bot", g, p, "bun_top"]
        specs.append(V2Spec(f"medium_{idx:02d}_{p_name}_{g_name}_{s_name}_combo", "medium", items, required, stack))
    return specs


def hard_station_specs(n: int = 20) -> list[V2Spec]:
    specs: list[V2Spec] = []
    stations = {
        **STATIONS,
        "cutting_board": 2,
        "boiler": 2,
        "grill": 1,
        "fryer": 1,
    }
    for i in range(n):
        idx = i + 1
        main = _numbered(["chicken", "tofu", "steak", "mushroom"][i % 4], idx)
        grill_main = _numbered(["patty", "salmon", "eggplant", "sausage"][i % 4], idx)
        fry_side = _numbered(["potato", "onion", "okra", "plantain"][i % 4], idx)
        raw_fry = _numbered(["fish", "falafel", "shrimp", "nugget"][i % 4], idx)
        mash_side = _numbered(["yam", "turnip", "cassava", "parsnip"][i % 4], idx)
        green_a = _numbered(["lettuce", "tomato", "pickle", "carrot"][i % 4], idx)
        green_b = _numbered(["cucumber", "pepper", "radish", "celery"][i % 4], idx)
        soup = _numbered(["stock", "broth", "beans", "peas"][i % 4], idx)
        items = {
            main: marinated_grill_item(),
            grill_main: grill_item(),
            fry_side: fry_after_cut_item(),
            raw_fry: fry_item(),
            mash_side: mash_item(),
            green_a: cut_item(),
            green_b: cut_item(),
            soup: boil_item(),
            "bun_bot": ready_item(),
            "bun_top": ready_item(),
        }
        required = {
            main: "grilled",
            grill_main: "grilled",
            fry_side: "fried",
            raw_fry: "fried",
            mash_side: "mashed",
            green_a: "cut",
            green_b: "cut",
            soup: "boiled",
        }
        stack = ["bun_bot", main, green_a, grill_main, green_b, "bun_top"]
        specs.append(V2Spec(
            f"hard_station_{idx:02d}_combo_plate",
            "hard_station",
            items,
            required,
            stack,
            stations=stations,
            features=("shared_station", "capacity_gt_1"),
        ))
    return specs


def hard_high_speedup_specs(n: int = 20) -> list[V2Spec]:
    specs: list[V2Spec] = []
    stations = {
        "grill": 3,
        "cutting_board": 4,
        "fryer": 3,
        "boiler": 3,
        "toaster": 1,
        "marinator": 3,
    }
    for i in range(n):
        idx = i + 1
        items = {"feast_plate": ready_item()}
        required = {}
        for base, maker, state in [
            ("patty", grill_item, "grilled"),
            ("salmon", grill_item, "grilled"),
            ("chicken", marinated_grill_item, "grilled"),
            ("tofu", marinated_grill_item, "grilled"),
            ("fish", fry_item, "fried"),
            ("falafel", fry_item, "fried"),
            ("potato", fry_after_cut_item, "fried"),
            ("onion", fry_after_cut_item, "fried"),
            ("yam", mash_item, "mashed"),
            ("turnip", mash_item, "mashed"),
            ("stock", boil_item, "boiled"),
            ("beans", boil_item, "boiled"),
            ("lettuce", cut_item, "cut"),
            ("tomato", cut_item, "cut"),
            ("cucumber", cut_item, "cut"),
            ("carrot", cut_item, "cut"),
        ]:
            name = _numbered(base, idx)
            items[name] = maker()
            required[name] = state
        specs.append(V2Spec(
            f"hard_high_speedup_{idx:02d}_feast",
            "hard_high_speedup",
            items,
            required,
            ["feast_plate"],
            stations=stations,
            features=("high_speedup", "shared_station", "capacity_gt_1"),
        ))
    return specs


def _lag(before_action: str, before_item: str, after_action: str, after_item: str, seconds: int) -> dict:
    return {
        "before": {"action": before_action, "item": before_item},
        "after": {"action": after_action, "item": after_item},
        "min_lag": seconds,
    }


def hard_temporal_specs(n: int = 20) -> list[V2Spec]:
    specs: list[V2Spec] = []
    for i in range(n):
        idx = i + 1
        protein = _numbered(["patty", "salmon", "chicken", "tofu"][i % 4], idx)
        side = _numbered(["yam", "turnip", "cassava", "potato"][i % 4], idx)
        fried = _numbered(["onion", "okra", "plantain", "zucchini"][i % 4], idx)
        green_a = _numbered(["lettuce", "tomato", "pickle", "carrot"][i % 4], idx)
        green_b = _numbered(["cucumber", "pepper", "radish", "celery"][i % 4], idx)
        soup = _numbered(["stock", "broth", "beans", "peas"][i % 4], idx)

        protein_info = marinated_grill_item() if i % 2 else grill_item()
        items = {
            protein: protein_info,
            side: mash_item(),
            fried: fry_after_cut_item(),
            green_a: cut_item(),
            green_b: cut_item(),
            soup: boil_item(),
            "bun_bot": ready_item(),
            "bun_top": ready_item(),
        }
        required = {
            protein: "grilled",
            side: "mashed",
            fried: "fried",
            green_a: "cut",
            green_b: "cut",
            soup: "boiled",
        }
        stack = ["bun_bot", protein, green_a, green_b, "bun_top"]
        constraints = [
            _lag("grill", protein, "stack", protein, 3 + (i % 3)),
            _lag("mash", side, "stack", "bun_top", 2 + (i % 2)),
            _lag("boil", soup, "stack", "bun_top", 4),
        ]
        specs.append(V2Spec(
            f"hard_temporal_{idx:02d}_rested_combo",
            "hard_temporal",
            items,
            required,
            stack,
            temporal_constraints=tuple(constraints),
            features=("time_lag", "and_join"),
        ))
    return specs


def hard_multiagent_specs(n: int = 20) -> list[V2Spec]:
    specs: list[V2Spec] = []
    stations = {
        "grill": 3,
        "cutting_board": 3,
        "fryer": 2,
        "boiler": 2,
        "toaster": 1,
        "marinator": 2,
    }
    for i in range(n):
        idx = i + 1
        robots = ("robot1", "robot2") if i % 3 else ("robot1", "robot2", "robot3")
        protein = _numbered(["patty", "salmon", "chicken", "tofu"][i % 4], idx)
        marinated = _numbered(["steak", "mushroom", "tempeh", "eggplant"][i % 4], idx)
        fried = _numbered(["fish", "falafel", "shrimp", "nugget"][i % 4], idx)
        fry_side = _numbered(["potato", "onion", "okra", "plantain"][i % 4], idx)
        mash_side = _numbered(["yam", "turnip", "cassava", "parsnip"][i % 4], idx)
        green_a = _numbered(["lettuce", "tomato", "pickle", "carrot"][i % 4], idx)
        green_b = _numbered(["cucumber", "pepper", "radish", "celery"][i % 4], idx)
        soup = _numbered(["stock", "broth", "beans", "peas"][i % 4], idx)
        items = {
            protein: grill_item(),
            marinated: marinated_grill_item(),
            fried: fry_item(),
            fry_side: fry_after_cut_item(),
            mash_side: mash_item(),
            green_a: cut_item(),
            green_b: cut_item(),
            soup: boil_item(),
            "bun_bot": ready_item(),
            "bun_top": ready_item(),
        }
        required = {
            protein: "grilled",
            marinated: "grilled",
            fried: "fried",
            fry_side: "fried",
            mash_side: "mashed",
            green_a: "cut",
            green_b: "cut",
            soup: "boiled",
        }
        stack = ["bun_bot", protein, green_a, marinated, green_b, "bun_top"]
        specs.append(V2Spec(
            f"hard_multiagent_{idx:02d}_robot_team_service",
            "hard_multiagent",
            items,
            required,
            stack,
            stations=stations,
            robots=robots,
            features=("multiagent", "robot_capacity"),
        ))
    return specs


def _resource_feasible(candidates: list[dict], limits: dict[str, int]) -> bool:
    usage: dict[str, int] = {}
    for candidate in candidates:
        for resource, amount in candidate.get("cost", {}).items():
            usage[resource] = usage.get(resource, 0) + int(amount)
    return all(usage.get(resource, 0) <= limit for resource, limit in limits.items())


def _select_optimization_subset(
    task_id: str,
    items: dict,
    candidates: list[dict],
    stations: dict,
    robots: tuple[str, ...],
    deadline: int,
    inventory_limits: dict[str, int],
) -> tuple[tuple[str, ...], dict[str, str], int]:
    best: tuple[int, int, float, tuple[str, ...], dict[str, str]] | None = None
    total = len(candidates)
    for mask in range(1, 1 << total):
        subset = [candidates[j] for j in range(total) if mask & (1 << j)]
        if not _resource_feasible(subset, inventory_limits):
            continue
        required = {c["item"]: c["state"] for c in subset}
        reward = sum(int(c["reward"]) for c in subset)
        selected_ids = tuple(c["id"] for c in subset)
        probe = V2Spec(
            f"{task_id}_probe_{mask}",
            "hard_optimization",
            items,
            required,
            [],
            stations=stations,
            robots=robots,
            features=("deadline", "limited_inventory", "reward_maximization"),
        )
        try:
            solved = _task_from_spec(probe)
        except RuntimeError:
            continue
        makespan = float(solved["optimal_makespan"])
        if makespan > deadline:
            continue
        candidate_key = (reward, len(subset), -makespan, selected_ids, required)
        if best is None or candidate_key[:3] > best[:3]:
            best = candidate_key

    if best is None:
        raise RuntimeError(f"no feasible optimization subset for {task_id}")
    reward, _, _, selected_ids, required = best
    return selected_ids, required, reward


def hard_optimization_specs(n: int = 20) -> list[V2Spec]:
    specs: list[V2Spec] = []
    stations = {
        "grill": 1,
        "cutting_board": 2,
        "fryer": 1,
        "boiler": 1,
        "toaster": 1,
        "marinator": 1,
    }
    robots = ("robot1", "robot2")
    for i in range(n):
        idx = i + 1
        deadline = 24 + (i % 4)
        inventory_limits = {
            "protein": 2,
            "fryer_oil": 2,
            "root": 1,
            "fresh": 2,
        }
        names = {
            "patty": _numbered(["patty", "salmon", "sausage", "eggplant"][i % 4], idx),
            "chicken": _numbered(["chicken", "tofu", "mushroom", "steak"][i % 4], idx),
            "fish": _numbered(["fish", "falafel", "shrimp", "nugget"][i % 4], idx),
            "potato": _numbered(["potato", "onion", "okra", "plantain"][i % 4], idx),
            "yam": _numbered(["yam", "turnip", "cassava", "parsnip"][i % 4], idx),
            "lettuce": _numbered(["lettuce", "tomato", "pickle", "carrot"][i % 4], idx),
            "soup": _numbered(["stock", "broth", "beans", "peas"][i % 4], idx),
        }
        items = {
            names["patty"]: grill_item(),
            names["chicken"]: marinated_grill_item(),
            names["fish"]: fry_item(),
            names["potato"]: fry_after_cut_item(),
            names["yam"]: mash_item(),
            names["lettuce"]: cut_item(),
            names["soup"]: boil_item(),
        }
        candidates = [
            {"id": "grilled_main", "item": names["patty"], "state": "grilled", "reward": 9, "cost": {"protein": 1}},
            {"id": "marinated_grill", "item": names["chicken"], "state": "grilled", "reward": 14, "cost": {"protein": 1, "fresh": 1}},
            {"id": "fried_main", "item": names["fish"], "state": "fried", "reward": 8, "cost": {"protein": 1, "fryer_oil": 1}},
            {"id": "fried_side", "item": names["potato"], "state": "fried", "reward": 7, "cost": {"fryer_oil": 1, "fresh": 1}},
            {"id": "mashed_root", "item": names["yam"], "state": "mashed", "reward": 10, "cost": {"root": 1}},
            {"id": "fresh_side", "item": names["lettuce"], "state": "cut", "reward": 4, "cost": {"fresh": 1}},
            {"id": "soup_side", "item": names["soup"], "state": "boiled", "reward": 6, "cost": {"root": 1}},
        ]
        task_id = f"hard_optimization_{idx:02d}_deadline_menu"
        selected_ids, required, reward = _select_optimization_subset(
            task_id,
            items,
            candidates,
            stations,
            robots,
            deadline,
            inventory_limits,
        )
        specs.append(V2Spec(
            task_id,
            "hard_optimization",
            items,
            required,
            [],
            stations=stations,
            robots=robots,
            deadline=deadline,
            candidate_goals=tuple(candidates),
            inventory_limits=inventory_limits,
            selected_goal_ids=selected_ids,
            optimal_reward=reward,
            features=("deadline", "limited_inventory", "reward_maximization"),
        ))
    return specs


def build_specs(per_split: int) -> list[V2Spec]:
    return (
        easy_specs(per_split)
        + medium_specs(per_split)
        + hard_station_specs(per_split)
        + hard_temporal_specs(per_split)
        + hard_multiagent_specs(per_split)
        + hard_optimization_specs(per_split)
        + hard_high_speedup_specs(per_split)
    )


def write_dataset(out_dir: Path, per_split: int) -> list[dict]:
    out_dir.mkdir(parents=True, exist_ok=True)
    for old in out_dir.glob("*.json"):
        old.unlink()

    tasks = [_task_from_spec(spec) for spec in build_specs(per_split)]
    high = [t for t in tasks if t["split"] == "hard_high_speedup"]
    avg_high = sum(t["speedup_ratio"] for t in high) / len(high)
    if avg_high < 5.0:
        raise RuntimeError(f"hard_high_speedup average speedup is {avg_high:.3f}, expected >= 5")

    for task in tasks:
        (out_dir / f"{task['id']}.json").write_text(json.dumps(task, indent=2) + "\n")

    # Also mirror tasks into split-specific directories for inspection:
    # data/robo_async_challenge_v2/{easy,medium,...}/*.json when out_dir is
    # data/robo_async_challenge_v2/tasks.
    split_root = out_dir.parent if out_dir.name == "tasks" else out_dir / "by_split"
    for split in ALL_SPLITS:
        split_dir = split_root / split
        split_dir.mkdir(parents=True, exist_ok=True)
        for old in split_dir.glob("*.json"):
            old.unlink()
    for task in tasks:
        split_dir = split_root / task["split"]
        (split_dir / f"{task['id']}.json").write_text(json.dumps(task, indent=2) + "\n")

    counts: dict[str, int] = {}
    speedups: dict[str, list[float]] = {}
    for task in tasks:
        counts[task["split"]] = counts.get(task["split"], 0) + 1
        speedups.setdefault(task["split"], []).append(task["speedup_ratio"])

    print(f"Wrote {len(tasks)} challenge_v2 tasks to {out_dir}")
    for split in IMPLEMENTED_SPLITS:
        vals = speedups.get(split, [])
        if vals:
            print(f"  {split:<18s} n={len(vals):2d} avg_speedup={sum(vals)/len(vals):.3f}")
    return tasks


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", default="data/robo_async_challenge_v2/tasks")
    parser.add_argument("--per-split", type=int, default=20)
    args = parser.parse_args()
    write_dataset(Path(args.out), args.per_split)


if __name__ == "__main__":
    main()
