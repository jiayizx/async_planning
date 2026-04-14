#!/usr/bin/env python3
"""
Generate the Robo-Async challenge split.

The split is intentionally not a 1:1 copy of Robotouille. It combines latent
action-model dependencies, final assembly constraints, and station bottlenecks.

Solvability guarantee:
  - Every generated item comes from a known state-transition chain.
  - Tasks are solved exactly by enumerating station orders. Hard tasks keep
    each station's operation count small enough for exact enumeration while
    mixing several station bottlenecks in one instance.
  - Every task is written only after its witness_plan is executed by the engine.
"""
from __future__ import annotations

import argparse
import itertools
import json
import sys
from dataclasses import dataclass
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from src.envs.robo_async.engine import ACTION_STATION, Task, evaluate_from_text


DURATIONS = {
    "grill": 10.0,
    "cut": 3.0,
    "fry": 8.0,
    "boil": 12.0,
    "toast": 5.0,
    "marinate": 6.0,
    "mash": 4.0,
    "stack": 1.0,
}

STATIONS = {
    "grill": 1,
    "cutting_board": 1,
    "fryer": 1,
    "boiler": 1,
    "toaster": 1,
    "marinator": 1,
}


@dataclass(frozen=True)
class Op:
    name: str
    action: str
    item: str
    duration: float
    station: str | None


@dataclass(frozen=True)
class Spec:
    task_id: str
    difficulty: str
    items: dict
    required: dict
    stack_order: list[str]
    schedule_kind: str = "exact"


def ready_item() -> dict:
    return {"state": "ready", "predicates": []}


def cut_item() -> dict:
    return {"state": "raw", "predicates": ["iscuttable"]}


def grill_item() -> dict:
    return {"state": "raw", "predicates": ["iscookable"]}


def fry_item() -> dict:
    return {"state": "raw", "predicates": ["isfryable"]}


def fry_after_cut_item() -> dict:
    return {
        "state": "raw",
        "predicates": ["iscuttable", "isfryableifcut"],
        "fry_requires_cut": True,
    }


def marinated_grill_item() -> dict:
    return {
        "state": "raw",
        "predicates": ["iscuttable", "ismarinatable", "iscookableifmarinated"],
        "grill_requires_marinated": True,
    }


def boil_item() -> dict:
    return {"state": "raw", "predicates": ["isboilable"]}


def mash_item() -> dict:
    return {
        "state": "raw",
        "predicates": ["isboilable"],
        "mash_requires_boiled": True,
    }


def chain_for(item: str, info: dict, required_state: str) -> list[tuple[str, str]]:
    if required_state == "cut":
        return [("cut", item)]
    if required_state == "fried":
        return [("cut", item), ("fry", item)] if info.get("fry_requires_cut") else [("fry", item)]
    if required_state == "grilled":
        if info.get("grill_requires_marinated"):
            return [("cut", item), ("marinate", item), ("grill", item)]
        return [("grill", item)]
    if required_state == "boiled":
        return [("boil", item)]
    if required_state == "mashed":
        return [("boil", item), ("mash", item)]
    if required_state == "toasted":
        return [("toast", item)]
    return []


def build_ops(task: dict) -> tuple[list[Op], list[tuple[int, int]]]:
    ops: list[Op] = []
    edges: list[tuple[int, int]] = []
    last_for_item: dict[str, int] = {}

    for item, required in task["goal"]["required_states"].items():
        prev: int | None = None
        for action, arg in chain_for(item, task["items"][item], required):
            idx = len(ops)
            ops.append(Op(
                name=f"{action}_{arg}",
                action=action,
                item=arg,
                duration=DURATIONS[action],
                station=ACTION_STATION[action],
            ))
            if prev is not None:
                edges.append((prev, idx))
            prev = idx
        if prev is not None:
            last_for_item[item] = prev

    prev_stack: int | None = None
    for item in task["goal"].get("stack_order", []):
        idx = len(ops)
        ops.append(Op(
            name=f"stack_{item}",
            action="stack",
            item=item,
            duration=DURATIONS["stack"],
            station=None,
        ))
        if prev_stack is not None:
            edges.append((prev_stack, idx))
        if item in last_for_item:
            edges.append((last_for_item[item], idx))
        prev_stack = idx

    return ops, edges


def longest_path_schedule(
    ops: list[Op],
    edges: list[tuple[int, int]],
) -> tuple[float, dict[int, float]] | None:
    succ = {i: [] for i in range(len(ops))}
    indeg = {i: 0 for i in range(len(ops))}
    for u, v in edges:
        succ[u].append(v)
        indeg[v] += 1

    queue = [i for i in range(len(ops)) if indeg[i] == 0]
    order = []
    while queue:
        i = queue.pop(0)
        order.append(i)
        for j in succ[i]:
            indeg[j] -= 1
            if indeg[j] == 0:
                queue.append(j)
    if len(order) != len(ops):
        return None

    start = {i: 0.0 for i in range(len(ops))}
    for i in order:
        finish = start[i] + ops[i].duration
        for j in succ[i]:
            start[j] = max(start[j], finish)

    makespan = max(start[i] + op.duration for i, op in enumerate(ops)) if ops else 0.0
    return makespan, start


def exact_schedule(task: dict) -> tuple[float, dict[int, float]]:
    ops, base_edges = build_ops(task)
    by_station: dict[str, list[int]] = {}
    for i, op in enumerate(ops):
        if op.station is not None:
            by_station.setdefault(op.station, []).append(i)

    station_orders = []
    for station in sorted(by_station):
        ids = by_station[station]
        station_orders.append(list(itertools.permutations(ids)))

    best: tuple[float, dict[int, float]] | None = None
    for orders in itertools.product(*station_orders):
        edges = list(base_edges)
        for order in orders:
            for a, b in zip(order, order[1:]):
                edges.append((a, b))
        result = longest_path_schedule(ops, edges)
        if result is not None and (best is None or result[0] < best[0] - 1e-9):
            best = result

    if best is None:
        raise RuntimeError(f"no feasible station ordering found for {task['id']}")
    return best


def plan_text(task: dict, start: dict[int, float]) -> str:
    ops, _ = build_ops(task)
    rows = [(start[i], op.action, op.item, op.duration) for i, op in enumerate(ops)]
    rows.sort(key=lambda r: (r[0], r[1], r[2]))
    return "\n".join(
        f"{t:.3f}: ({action} {item})  [{duration:.3f}]"
        for t, action, item, duration in rows
    )


def queue_plan(task: dict, kind: str) -> tuple[float, str]:
    stack = task["goal"]["stack_order"]
    items = [x for x in stack if x in task["goal"]["required_states"]]
    rows: list[tuple[float, str, str, float]] = [(0.0, "stack", stack[0], DURATIONS["stack"])]

    if kind == "fry_queue":
        for i, item in enumerate(items):
            rows.append((3.0 * i, "cut", item, DURATIONS["cut"]))
            rows.append((3.0 + 8.0 * i, "fry", item, DURATIONS["fry"]))
            rows.append((11.0 + 8.0 * i, "stack", item, DURATIONS["stack"]))
        optimal = 8.0 * len(items) + 4.0
    elif kind == "grill_queue":
        for i, item in enumerate(items):
            rows.append((3.0 * i, "cut", item, DURATIONS["cut"]))
            rows.append((3.0 + 6.0 * i, "marinate", item, DURATIONS["marinate"]))
            rows.append((9.0 + 10.0 * i, "grill", item, DURATIONS["grill"]))
            rows.append((19.0 + 10.0 * i, "stack", item, DURATIONS["stack"]))
        optimal = 10.0 * len(items) + 10.0
    elif kind == "mash_queue":
        for i, item in enumerate(items):
            rows.append((12.0 * i, "boil", item, DURATIONS["boil"]))
            rows.append((12.0 + 12.0 * i, "mash", item, DURATIONS["mash"]))
            rows.append((16.0 + 12.0 * i, "stack", item, DURATIONS["stack"]))
        optimal = 12.0 * len(items) + 5.0
    else:
        raise ValueError(kind)

    rows.sort(key=lambda r: (r[0], r[1], r[2]))
    text = "\n".join(
        f"{t:.3f}: ({action} {item})  [{duration:.3f}]"
        for t, action, item, duration in rows
    )
    return optimal, text


def sequential_makespan(task: dict) -> float:
    ops, _ = build_ops(task)
    return round(sum(op.duration for op in ops), 3)


def dependency_types(task: dict) -> set[str]:
    types = {"prepare_before_stack", "station_capacity"}
    for item, info in task["items"].items():
        req = task["goal"]["required_states"].get(item)
        if req == "fried" and info.get("fry_requires_cut"):
            types.add("cut_to_fry")
        if req == "grilled" and info.get("grill_requires_marinated"):
            types.add("cut_to_marinate_to_grill")
        if req == "mashed":
            types.add("boil_to_mash")
    return types


def make_task(spec: Spec) -> dict:
    task = {
        "id": spec.task_id,
        "affordance_mode": "action_model",
        "items": spec.items,
        "goal": {
            "required_states": spec.required,
            "stack_order": spec.stack_order,
        },
        "action_durations": DURATIONS,
        "stations": STATIONS,
    }

    if spec.schedule_kind == "exact":
        optimal, start = exact_schedule(task)
        witness = plan_text(task, start)
    else:
        optimal, witness = queue_plan(task, spec.schedule_kind)

    seq = sequential_makespan(task)
    speedup = round(seq / optimal, 3) if optimal > 0 else 1.0
    task.update({
        "optimal_makespan": round(optimal, 3),
        "sequential_makespan": seq,
        "speedup_ratio": speedup,
        "difficulty": spec.difficulty,
        "witness_plan": witness,
        "dependency_types": sorted(dependency_types(task)),
    })

    result = evaluate_from_text(witness, Task.from_dict(task))
    if not result.success:
        raise RuntimeError(f"witness failed for {spec.task_id}: {result.error}\n{witness}")
    if abs(result.makespan - task["optimal_makespan"]) > 1e-6:
        raise RuntimeError(
            f"witness makespan mismatch for {spec.task_id}: "
            f"{result.makespan} != {task['optimal_makespan']}"
        )
    return task


def combo_specs(difficulty: str, limit: int) -> list[Spec]:
    proteins = [
        ("patty", grill_item(), "grilled"),
        ("chicken", fry_item(), "fried"),
        ("marinated_chicken", marinated_grill_item(), "grilled"),
    ]
    sides = [
        ("potato", fry_after_cut_item(), "fried"),
        ("onion", fry_after_cut_item(), "fried"),
        ("yam", mash_item(), "mashed"),
        ("carrot", cut_item(), "cut"),
    ]
    greens = [("lettuce", cut_item(), "cut"), ("tomato", cut_item(), "cut")]

    specs = []
    for p_name, p_info, p_req in proteins:
        for side_name, side_info, side_req in sides:
            for green_name, green_info, green_req in greens:
                specs.append(Spec(
                    task_id=f"{p_name}_{green_name}_{side_name}_combo",
                    difficulty=difficulty,
                    items={
                        p_name: p_info,
                        green_name: green_info,
                        side_name: side_info,
                        "bun_bot": ready_item(),
                        "bun_top": ready_item(),
                    },
                    required={p_name: p_req, green_name: green_req, side_name: side_req},
                    stack_order=["bun_bot", p_name, green_name, "bun_top"],
                ))
    return specs[:limit]


def queue_spec(kind: str, n: int) -> Spec:
    if kind == "fry":
        items = {"plate": ready_item()}
        required = {}
        stack = ["plate"]
        for i in range(1, n + 1):
            item = f"onion{i}"
            items[item] = fry_after_cut_item()
            required[item] = "fried"
            stack.append(item)
        return Spec(f"hard_fryer_queue_{n}", "hard", items, required, stack, "fry_queue")

    if kind == "grill":
        items = {"bun_bot": ready_item()}
        required = {}
        stack = ["bun_bot"]
        for i in range(1, n + 1):
            item = f"chicken{i}"
            items[item] = marinated_grill_item()
            required[item] = "grilled"
            stack.append(item)
        return Spec(f"hard_marinated_grill_queue_{n}", "hard", items, required, stack, "grill_queue")

    if kind == "mash":
        items = {"bowl": ready_item()}
        required = {}
        stack = ["bowl"]
        for i in range(1, n + 1):
            item = f"potato{i}"
            items[item] = mash_item()
            required[item] = "mashed"
            stack.append(item)
        return Spec(f"hard_mash_queue_{n}", "hard", items, required, stack, "mash_queue")

    raise ValueError(kind)


def mixed_hard_specs() -> list[Spec]:
    """Hard tasks with intertwined station bottlenecks instead of one queue.

    Each task contains:
      - one cut -> marinate -> grill stacked main item,
      - one raw -> grill stacked main item,
      - multiple cut-board consumers, including cut-only vegetables and mash,
      - both raw-fry and cut-then-fry side dishes,
      - side dishes that are not stacked but still required by the goal.
    """
    marinated_mains = ["chicken", "tofu", "steak", "mushroom", "tempeh"]
    direct_grill_mains = ["patty", "salmon", "eggplant", "sausage", "portobello"]
    cut_fry_sides = ["potato", "onion", "zucchini", "okra", "plantain"]
    raw_fry_sides = ["nugget", "fish", "falafel", "shrimp", "tofu_bite"]
    mash_sides = ["yam", "turnip", "cassava", "sweet_potato", "parsnip"]
    greens = ["lettuce", "tomato", "pickle", "cucumber", "pepper", "carrot"]
    boiled_sides = ["broth", "beans", "peas", "corn", "stock"]

    specs: list[Spec] = []
    for i in range(30):
        n = i + 1
        marinated_main = f"{marinated_mains[i % len(marinated_mains)]}{n}"
        grilled_main = f"{direct_grill_mains[(i * 2) % len(direct_grill_mains)]}{n}"
        cut_fry_side = f"{cut_fry_sides[(i * 3) % len(cut_fry_sides)]}{n}"
        raw_fry_side = f"{raw_fry_sides[(i * 2 + 1) % len(raw_fry_sides)]}{n}"
        mash_side = f"{mash_sides[(i * 2) % len(mash_sides)]}{n}"
        green_a = f"{greens[i % len(greens)]}{n}"
        green_b = f"{greens[(i + 3) % len(greens)]}{n}"

        items = {
            marinated_main: marinated_grill_item(),
            grilled_main: grill_item(),
            cut_fry_side: fry_after_cut_item(),
            raw_fry_side: fry_item(),
            mash_side: mash_item(),
            green_a: cut_item(),
            green_b: cut_item(),
            "bun_bot": ready_item(),
            "bun_top": ready_item(),
        }
        required = {
            marinated_main: "grilled",
            grilled_main: "grilled",
            cut_fry_side: "fried",
            raw_fry_side: "fried",
            mash_side: "mashed",
            green_a: "cut",
            green_b: "cut",
        }

        if i % 2 == 0:
            boiled_side = f"{boiled_sides[(i // 2) % len(boiled_sides)]}{n}"
            items[boiled_side] = boil_item()
            required[boiled_side] = "boiled"

        if i % 4 == 0:
            extra_cut_fry = f"{cut_fry_sides[(i + 2) % len(cut_fry_sides)]}_extra{n}"
            items[extra_cut_fry] = fry_after_cut_item()
            required[extra_cut_fry] = "fried"
        elif i % 4 == 1:
            extra_mash = f"{mash_sides[(i + 3) % len(mash_sides)]}_extra{n}"
            items[extra_mash] = mash_item()
            required[extra_mash] = "mashed"
        elif i % 4 == 2:
            extra_grill = f"{direct_grill_mains[(i + 1) % len(direct_grill_mains)]}_extra{n}"
            items[extra_grill] = grill_item()
            required[extra_grill] = "grilled"
        else:
            extra_raw_fry = f"{raw_fry_sides[(i + 4) % len(raw_fry_sides)]}_extra{n}"
            items[extra_raw_fry] = fry_item()
            required[extra_raw_fry] = "fried"

        if i % 3 == 0:
            stack_order = ["bun_bot", marinated_main, green_a, grilled_main, green_b, "bun_top"]
        elif i % 3 == 1:
            stack_order = ["bun_bot", grilled_main, green_a, marinated_main, green_b, "bun_top"]
        else:
            stack_order = ["bun_bot", green_a, marinated_main, grilled_main, green_b, "bun_top"]

        specs.append(Spec(
            task_id=f"hard_mixed_station_combo_{n:02d}",
            difficulty="hard",
            items=items,
            required=required,
            stack_order=stack_order,
        ))
    return specs


def easy_specs() -> list[Spec]:
    return [
        Spec("easy_grilled_chicken_sandwich", "easy",
             {"chicken": grill_item(), "bun_bot": ready_item(), "bun_top": ready_item()},
             {"chicken": "grilled"}, ["bun_bot", "chicken", "bun_top"]),
        Spec("easy_fried_chicken_plate", "easy",
             {"chicken": fry_item(), "plate": ready_item()},
             {"chicken": "fried"}, ["plate", "chicken"]),
        Spec("easy_tomato_lettuce_salad", "easy",
             {"tomato": cut_item(), "lettuce": cut_item(), "plate": ready_item()},
             {"tomato": "cut", "lettuce": "cut"}, ["plate", "tomato", "lettuce"]),
        Spec("easy_patty_tomato_burger", "easy",
             {"patty": grill_item(), "tomato": cut_item(), "bun_bot": ready_item(), "bun_top": ready_item()},
             {"patty": "grilled", "tomato": "cut"}, ["bun_bot", "patty", "tomato", "bun_top"]),
        Spec("easy_potato_mash_bowl", "easy",
             {"potato": mash_item(), "bowl": ready_item()},
             {"potato": "mashed"}, ["bowl", "potato"]),
        Spec("easy_onion_soup", "easy",
             {"water": boil_item(), "onion": cut_item(), "bowl": ready_item()},
             {"water": "boiled", "onion": "cut"}, ["bowl", "water", "onion"]),
        Spec("easy_marinated_chicken_plate", "easy",
             {"chicken": marinated_grill_item(), "plate": ready_item()},
             {"chicken": "grilled"}, ["plate", "chicken"]),
        Spec("easy_carrot_side", "easy",
             {"carrot": cut_item(), "plate": ready_item()},
             {"carrot": "cut"}, ["plate", "carrot"]),
        Spec("easy_two_fried_chicken_plate", "easy",
             {"chicken1": fry_item(), "chicken2": fry_item(), "plate": ready_item()},
             {"chicken1": "fried", "chicken2": "fried"}, ["plate", "chicken1", "chicken2"]),
        Spec("easy_boiled_water_bowl", "easy",
             {"water": boil_item(), "bowl": ready_item()},
             {"water": "boiled"}, ["bowl", "water"]),
    ]


def medium_seed_specs() -> list[Spec]:
    return [
        Spec("double_fries_burger", "medium",
             {"patty": grill_item(), "tomato": cut_item(), "potato1": fry_after_cut_item(),
              "potato2": fry_after_cut_item(), "bun_bot": ready_item(), "bun_top": ready_item()},
             {"patty": "grilled", "tomato": "cut", "potato1": "fried", "potato2": "fried"},
             ["bun_bot", "patty", "tomato", "bun_top"]),
        Spec("festival_combo_plate", "medium",
             {"patty": marinated_grill_item(), "tomato": cut_item(), "potato": fry_after_cut_item(),
              "yam": mash_item(), "bun_bot": ready_item(), "bun_top": ready_item()},
             {"patty": "grilled", "tomato": "cut", "potato": "fried", "yam": "mashed"},
             ["bun_bot", "patty", "tomato", "bun_top"]),
        Spec("fryer_bottleneck_sampler", "medium",
             {"chicken": fry_item(), "potato": fry_after_cut_item(), "onion": fry_after_cut_item(),
              "zucchini": fry_after_cut_item(), "plate": ready_item()},
             {"chicken": "fried", "potato": "fried", "onion": "fried", "zucchini": "fried"},
             ["plate", "chicken", "potato", "onion", "zucchini"]),
        Spec("marinated_double_chicken_club", "medium",
             {"chicken1": marinated_grill_item(), "chicken2": marinated_grill_item(),
              "lettuce": cut_item(), "tomato": cut_item(), "bun_bot": ready_item(), "bun_top": ready_item()},
             {"chicken1": "grilled", "chicken2": "grilled", "lettuce": "cut", "tomato": "cut"},
             ["bun_bot", "chicken1", "lettuce", "chicken2", "tomato", "bun_top"]),
        Spec("mashed_potato_soup_duo", "medium",
             {"water": boil_item(), "potato1": mash_item(), "potato2": mash_item(),
              "onion": cut_item(), "bowl": ready_item()},
             {"water": "boiled", "potato1": "mashed", "potato2": "mashed", "onion": "cut"},
             ["bowl", "water", "potato1", "potato2", "onion"]),
    ]


def all_specs() -> list[Spec]:
    return easy_specs() + medium_seed_specs() + combo_specs("medium", 15) + mixed_hard_specs()


def write_dataset(out_dir: Path, count: int | None):
    out_dir.mkdir(parents=True, exist_ok=True)
    for old in out_dir.glob("*.json"):
        old.unlink()

    specs = all_specs()
    if count is not None:
        specs = specs[:count]
    tasks = [make_task(spec) for spec in specs]

    for task in tasks:
        path = out_dir / f"{task['id']}.json"
        path.write_text(json.dumps(task, indent=2) + "\n")

    counts: dict[str, int] = {}
    for task in tasks:
        counts[task["difficulty"]] = counts.get(task["difficulty"], 0) + 1
    print(f"Wrote {len(tasks)} solvable challenge tasks to {out_dir}")
    print(f"Difficulty counts: {dict(sorted(counts.items()))}")
    for task in tasks:
        print(
            f"  {task['id']:<42s} {task['difficulty']:<6s} "
            f"opt={task['optimal_makespan']:>5.1f}s "
            f"seq={task['sequential_makespan']:>5.1f}s "
            f"speedup={task['speedup_ratio']:>4.2f} "
            f"deps={','.join(task['dependency_types'])}"
        )


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--out", default="data/robo_async_challenge/tasks")
    parser.add_argument("--count", type=int, default=None,
                        help="Optional prefix size; default writes the full 60-task split")
    args = parser.parse_args()
    write_dataset(Path(args.out), args.count)


if __name__ == "__main__":
    main()
