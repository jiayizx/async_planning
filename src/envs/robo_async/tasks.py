"""
Robo-Async Task Definitions
----------------------------
Point-kitchen tasks based on original Robotouille content.

Item processing types (mirrors Robotouille predicates):
  iscookable      → grill  (raw → grilled)
  iscuttable      → cut    (raw → cut)
  isfryable       → fry    (raw → fried)
  isfryableifcut  → cut then fry  (raw → cut → fried)
  boilable        → boil   (raw → boiled)

Implicit dependencies (the async challenge):
  - stack(item) requires item to be in its required final state
  - fry(item) requires item to be cut first  [if fry_requires_cut=True]
  - These are NOT stated as explicit step orderings — LLM must infer them
    from the action preconditions in the PDDL it generates.
"""

import json
from pathlib import Path


# ── Duration config ───────────────────────────────────────────────────────────

DEFAULT_DURATIONS = {
    "grill": 10.0,   # iscookable (patty, chicken)
    "cut":    3.0,   # iscuttable (lettuce, tomato, onion, potato)
    "fry":    8.0,   # isfryable / isfryableifcut
    "boil":  12.0,   # water for soup
    "stack":  1.0,
}


# ── Critical path ─────────────────────────────────────────────────────────────

def _critical_path(chains: list[list[float]], n_stacks: int, stack_dur: float) -> float:
    """
    Each chain is a list of sequential durations (e.g. [cut_dur, fry_dur]).
    All chains run in parallel with each other.
    Optimal makespan = longest chain + stack time.
    """
    longest = max(sum(c) for c in chains) if chains else 0.0
    return longest + n_stacks * stack_dur


def _sequential(chains: list[list[float]], n_stacks: int, stack_dur: float) -> float:
    return sum(sum(c) for c in chains) + n_stacks * stack_dur


# ── Task builder ──────────────────────────────────────────────────────────────

def make_task(task_id: str, items: dict, goal: dict,
              durations: dict | None = None) -> dict:
    dur = {**DEFAULT_DURATIONS, **(durations or {})}

    # Build processing chains from items
    # Each item that needs processing = one chain
    chains = []
    for name, info in items.items():
        preds = info.get("predicates", [])
        chain = []
        if "iscookable" in preds:
            chain = [dur["grill"]]
        elif "isfryableifcut" in preds:
            chain = [dur["cut"], dur["fry"]]   # sequential dependency
        elif "iscuttable" in preds:
            chain = [dur["cut"]]
        elif "isfryable" in preds:
            chain = [dur["fry"]]
        elif "isboilable" in preds:
            chain = [dur["boil"]]
        if chain:
            chains.append(chain)

    n_stacks = max(0, len(goal.get("stack_order", [])) - 1)

    optimal    = round(_critical_path(chains, n_stacks, dur["stack"]), 3)
    sequential = round(_sequential(chains, n_stacks, dur["stack"]), 3)
    speedup    = round(sequential / optimal, 3) if optimal > 0 else 1.0
    difficulty = "easy" if speedup < 1.5 else "medium" if speedup < 2.5 else "hard"

    return {
        "id":                   task_id,
        "items":                items,
        "goal":                 goal,
        "action_durations":     dur,
        "optimal_makespan":     optimal,
        "sequential_makespan":  sequential,
        "speedup_ratio":        speedup,
        "difficulty":           difficulty,
    }


# ── Item constructors ─────────────────────────────────────────────────────────

def cookable(name):
    return {name: {"state": "raw", "predicates": ["iscookable"]}}

def cuttable(name):
    return {name: {"state": "raw", "predicates": ["iscuttable"]}}

def fryable(name):
    return {name: {"state": "raw", "predicates": ["isfryable"]}}

def fry_after_cut(name):
    # fry_requires_cut tells the engine fry(item) needs cut state first
    return {name: {"state": "raw", "predicates": ["iscuttable", "isfryableifcut"],
                   "fry_requires_cut": True}}

def boilable(name):
    return {name: {"state": "raw", "predicates": ["isboilable"]}}

def ready(name, item_type="ingredient"):
    return {name: {"state": "ready", "predicates": []}}


# ── Task library (mirrors original Robotouille 10 task types) ─────────────────

def _all_tasks() -> list[dict]:
    tasks = []

    # ── 1. Cheese Chicken Sandwich ────────────────────────────────────────────
    # grill chicken | no async peer → easy
    tasks.append(make_task(
        "cheese_chicken_sandwich",
        items={
            **cookable("chicken"),
            **ready("cheese"),
            **ready("bun_bot"), **ready("bun_top"),
        },
        goal={
            "required_states": {"chicken": "grilled"},
            "stack_order": ["bun_bot", "chicken", "cheese", "bun_top"],
        },
    ))

    # ── 2. Lettuce Chicken Sandwich ───────────────────────────────────────────
    # grill chicken ‖ cut lettuce → easy async
    tasks.append(make_task(
        "lettuce_chicken_sandwich",
        items={
            **cookable("chicken"),
            **cuttable("lettuce"),
            **ready("bun_bot"), **ready("bun_top"),
        },
        goal={
            "required_states": {"chicken": "grilled", "lettuce": "cut"},
            "stack_order": ["bun_bot", "chicken", "lettuce", "bun_top"],
        },
    ))

    # ── 3. Lettuce Tomato Fried Chicken Sandwich ──────────────────────────────
    # fry chicken ‖ cut lettuce ‖ cut tomato → medium
    tasks.append(make_task(
        "lettuce_tomato_fried_chicken_sandwich",
        items={
            **fryable("chicken"),
            **cuttable("lettuce"),
            **cuttable("tomato"),
            **ready("bun_bot"), **ready("bun_top"),
        },
        goal={
            "required_states": {"chicken": "fried", "lettuce": "cut", "tomato": "cut"},
            "stack_order": ["bun_bot", "chicken", "lettuce", "tomato", "bun_top"],
        },
    ))

    # ── 4. Tomato Burger and Fries ────────────────────────────────────────────
    # grill patty ‖ cut tomato ‖ (cut potato → fry potato)
    # potato chain = cut(3) + fry(8) = 11s; grill = 10s → potato is critical path
    tasks.append(make_task(
        "tomato_burger_and_fries",
        items={
            **cookable("patty"),
            **cuttable("tomato"),
            **fry_after_cut("potato"),
            **ready("bun_bot"), **ready("bun_top"),
        },
        goal={
            "required_states": {
                "patty": "grilled", "tomato": "cut", "potato": "fried",
            },
            "stack_order": ["bun_bot", "patty", "tomato", "bun_top"],
        },
    ))

    # ── 5. Onion Cheese Burger and Fried Onion ────────────────────────────────
    # grill patty ‖ cut tomato ‖ (cut onion1 → fry onion1) ‖ (cut onion2 → fry onion2)
    tasks.append(make_task(
        "onion_cheese_burger_and_fried_onion",
        items={
            **cookable("patty"),
            **cuttable("tomato"),
            **fry_after_cut("onion1"),
            **fry_after_cut("onion2"),
            **ready("cheese"),
            **ready("bun_bot"), **ready("bun_top"),
        },
        goal={
            "required_states": {
                "patty": "grilled", "tomato": "cut",
                "onion1": "fried", "onion2": "fried",
            },
            "stack_order": ["bun_bot", "patty", "tomato", "cheese", "bun_top"],
        },
    ))

    # ── 6. Potato Soup ────────────────────────────────────────────────────────
    # boil water ‖ cut potato → medium (boil=12 is critical path)
    tasks.append(make_task(
        "potato_soup",
        items={
            **boilable("water"),
            **cuttable("potato"),
            **ready("bowl"),
        },
        goal={
            "required_states": {"water": "boiled", "potato": "cut"},
            "stack_order": ["bowl", "water", "potato"],
        },
    ))

    # ── 7. Onion Soup ─────────────────────────────────────────────────────────
    # boil water ‖ cut onion1 ‖ cut onion2 ‖ cut onion3
    tasks.append(make_task(
        "onion_soup",
        items={
            **boilable("water"),
            **cuttable("onion1"),
            **cuttable("onion2"),
            **cuttable("onion3"),
            **ready("bowl"),
        },
        goal={
            "required_states": {
                "water": "boiled",
                "onion1": "cut", "onion2": "cut", "onion3": "cut",
            },
            "stack_order": ["bowl", "water", "onion1", "onion2", "onion3"],
        },
    ))

    # ── 8. Tomato Soup and Lettuce Chicken Sandwich ───────────────────────────
    # boil water ‖ cut tomato ‖ grill chicken ‖ cut lettuce → hard
    tasks.append(make_task(
        "tomato_soup_and_lettuce_chicken_sandwich",
        items={
            **boilable("water"),
            **cuttable("tomato"),
            **cookable("chicken"),
            **cuttable("lettuce"),
            **ready("bowl"),
            **ready("bun_bot"), **ready("bun_top"),
        },
        goal={
            "required_states": {
                "water": "boiled", "tomato": "cut",
                "chicken": "grilled", "lettuce": "cut",
            },
            "stack_order": ["bun_bot", "chicken", "lettuce", "bun_top"],
        },
    ))

    # ── 9. Onion Tomato Soup and Two Chicken Sandwiches ───────────────────────
    # boil water ‖ cut onion ‖ cut tomato ‖ grill chicken1 ‖ grill chicken2
    tasks.append(make_task(
        "onion_tomato_soup_and_two_chicken_sandwiches",
        items={
            **boilable("water"),
            **cuttable("onion"),
            **cuttable("tomato"),
            **cookable("chicken1"),
            **cookable("chicken2"),
            **ready("bowl"),
            **ready("bun_bot1"), **ready("bun_top1"),
            **ready("bun_bot2"), **ready("bun_top2"),
        },
        goal={
            "required_states": {
                "water": "boiled", "onion": "cut", "tomato": "cut",
                "chicken1": "grilled", "chicken2": "grilled",
            },
            "stack_order": ["bun_bot1", "chicken1", "bun_top1"],
        },
    ))

    # ── 10. Big Meal (onion+potato soup, fried onion rings, lettuce burger,
    #                  onion cheese sandwich) ──────────────────────────────────
    # All chains in parallel:
    #   boil water ‖ (cut onion_soup → fry onion_soup) ‖ (cut potato → fry potato)
    #   ‖ cut lettuce ‖ grill chicken
    #   ‖ (cut onion_ring1 → fry) ‖ (cut onion_ring2 → fry) ‖ (cut onion_ring3 → fry)
    tasks.append(make_task(
        "big_meal",
        items={
            **boilable("water"),
            **fry_after_cut("onion_soup"),
            **fry_after_cut("potato"),
            **cuttable("lettuce"),
            **cookable("chicken"),
            **fry_after_cut("onion_ring1"),
            **fry_after_cut("onion_ring2"),
            **fry_after_cut("onion_ring3"),
            **ready("bowl"),
            **ready("bun_bot"), **ready("bun_top"),
        },
        goal={
            "required_states": {
                "water": "boiled",
                "onion_soup": "fried", "potato": "fried",
                "lettuce": "cut", "chicken": "grilled",
                "onion_ring1": "fried", "onion_ring2": "fried", "onion_ring3": "fried",
            },
            "stack_order": ["bun_bot", "chicken", "lettuce", "bun_top"],
        },
    ))

    return tasks


# ── Save / load ───────────────────────────────────────────────────────────────

def generate_and_save(out_dir: str = "data/robo_async/tasks") -> list[dict]:
    path = Path(out_dir)
    path.mkdir(parents=True, exist_ok=True)

    tasks = _all_tasks()
    for t in tasks:
        (path / f"{t['id']}.json").write_text(json.dumps(t, indent=2), encoding="utf-8")

    print(f"Generated {len(tasks)} tasks → {path}/\n")
    print(f"{'Task':<48} {'diff':6} {'speedup':>7}  {'optimal':>7}  {'seq':>6}")
    print("-" * 80)
    for t in tasks:
        print(f"  {t['id']:<46} {t['difficulty']:6} "
              f"{t['speedup_ratio']:>6.2f}x  "
              f"{t['optimal_makespan']:>6.0f}s  "
              f"{t['sequential_makespan']:>5.0f}s")
    return tasks


def load_task(path: str) -> "Task":
    from src.envs.robo_async.engine import Task
    return Task.from_dict(json.loads(Path(path).read_text()))


def load_all_tasks(task_dir: str = "data/robo_async/tasks") -> list:
    return [load_task(str(p)) for p in sorted(Path(task_dir).glob("*.json"))]


if __name__ == "__main__":
    generate_and_save()
