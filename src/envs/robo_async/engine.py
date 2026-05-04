"""
Robo-Async Engine
-----------------
Continuous-time simulator for point-kitchen async planning tasks.

Takes an OPTIC temporal plan and evaluates it against a task spec.
No stations, no navigation — pure async scheduling over durative actions.

OPTIC plan format (one action per line):
    0.000: (grill patty)    [10.000]
    0.000: (cut lettuce)    [3.000]
    10.000: (stack patty bun_bot)  [1.000]
"""

import re
import heapq
from dataclasses import dataclass, field
from typing import Optional


# ── Task spec ─────────────────────────────────────────────────────────────────

@dataclass
class Task:
    id: str
    items: dict        # item_name → {"state": "raw"/"ready", "type": str}
    goal: dict         # {"stack_order": [...], "required_states": {...}}
    action_durations: dict  # action_name → duration (seconds)
    station_capacities: dict  # station_name → max capacity
    optimal_makespan: float
    sequential_makespan: float
    temporal_constraints: list[dict] = field(default_factory=list)
    robots: list[str] = field(default_factory=list)
    deadline: float | None = None

    @classmethod
    def from_dict(cls, d: dict) -> "Task":
        return cls(
            id=d["id"],
            items=d["items"],
            goal=d["goal"],
            action_durations=d["action_durations"],
            station_capacities=d.get("stations", DEFAULT_STATION_CAPACITY),
            optimal_makespan=d["optimal_makespan"],
            sequential_makespan=d["sequential_makespan"],
            temporal_constraints=d.get("temporal_constraints", []),
            robots=d.get("robots", []),
            deadline=d.get("deadline"),
        )


# ── World state ───────────────────────────────────────────────────────────────

# Terminal states: actions have completed
TERMINAL = {"grilled", "cut", "fried", "boiled", "toasted", "ready", "marinated", "mashed"}

# In-progress states produced at action start
IN_PROGRESS = {
    "grill":    "grilling",
    "cut":      "cutting",
    "fry":      "frying",
    "boil":     "boiling",
    "toast":    "toasting",
    "marinate": "marinating",
    "mash":     "mashing",
}

# Terminal state produced at action end
RESULT = {
    "grill":    "grilled",
    "cut":      "cut",
    "fry":      "fried",
    "boil":     "boiled",
    "toast":    "toasted",
    "stack":    None,   # stack modifies the stack list, not item state
    "marinate": "marinated",
    "mash":     "mashed",
}

# Which station each action occupies
ACTION_STATION = {
    "grill":    "grill",
    "cut":      "cutting_board",
    "fry":      "fryer",
    "boil":     "boiler",
    "toast":    "toaster",
    "marinate": "marinator",
    "mash":     "cutting_board",   # shares the cutting board
}

# Required input state for each action (before item-specific overrides)
REQUIRED_INPUT_STATE = {
    "grill":    "raw",        # override: "marinated" if grill_requires_marinated
    "cut":      "raw",
    "fry":      "raw",        # override: "cut" if fry_requires_cut
    "boil":     "raw",
    "toast":    "raw",
    "marinate": "cut",
    "mash":     "boiled",
}

# Default station capacities (used when task has no "stations" field)
DEFAULT_STATION_CAPACITY = {
    "grill":         1,
    "cutting_board": 1,
    "fryer":         1,
    "boiler":        1,
    "toaster":       1,
    "marinator":     1,
}


class WorldState:
    def __init__(self, items: dict, station_capacities: dict | None = None,
                 required_states: dict | None = None,
                 robots: list[str] | None = None):
        # item_name → current state string
        self.item_state: dict[str, str] = {
            name: info["state"] for name, info in items.items()
        }
        # ordered list of items placed so far (bottom → top)
        self.stack: list[str] = []
        # station_name → current usage count
        self.station_usage: dict[str, int] = {s: 0 for s in set(ACTION_STATION.values())}
        # station_name → max capacity
        self.station_capacity: dict[str, int] = dict(
            station_capacities or DEFAULT_STATION_CAPACITY
        )
        # item_name → required goal state (for enforcing stack order legality)
        self.required_states: dict[str, str] = required_states or {}
        self.robots = set(robots or [])
        self.robot_busy: dict[str, bool] = {r: False for r in self.robots}

    def copy(self) -> "WorldState":
        s = WorldState.__new__(WorldState)
        s.item_state = dict(self.item_state)
        s.stack = list(self.stack)
        s.station_usage = dict(self.station_usage)
        s.station_capacity = dict(self.station_capacity)
        s.required_states = dict(self.required_states)
        s.robots = set(self.robots)
        s.robot_busy = dict(self.robot_busy)
        return s


# ── Precondition / effect logic ───────────────────────────────────────────────

class PreconditionError(Exception):
    pass


def _require(cond: bool, msg: str):
    if not cond:
        raise PreconditionError(msg)


def check_start(action: str, args: list[str], state: WorldState,
               fry_requires_cut: set[str] | None = None,
               grill_requires_marinated: set[str] | None = None):
    """
    fry_requires_cut:          items that must be cut before frying.
    grill_requires_marinated:  items that must be marinated before grilling.
    """
    if fry_requires_cut is None:
        fry_requires_cut = set()
    if grill_requires_marinated is None:
        grill_requires_marinated = set()

    robot, item = _robot_and_item(args, state)
    if state.robots:
        _require(robot is not None, f"{action} requires a robot argument")
        _require(not state.robot_busy.get(robot, False),
                 f"robot '{robot}' is busy")

    if action == "stack":
        _require(item in state.item_state, f"unknown item '{item}'")
        cur = state.item_state[item]
        _require(cur in TERMINAL,
                 f"cannot stack '{item}': state is '{cur}' (not ready)")
        # Item must be in its required goal state before stacking
        req = state.required_states.get(item)
        if req and req != "ready":
            _require(cur == req,
                     f"cannot stack '{item}': state is '{cur}', must be '{req}' before stacking")
    elif action in REQUIRED_INPUT_STATE:
        _require(item in state.item_state, f"unknown item '{item}'")
        cur = state.item_state[item]
        required = REQUIRED_INPUT_STATE[action]
        # Per-item overrides
        if action == "fry" and item in fry_requires_cut:
            required = "cut"
        elif action == "grill" and item in grill_requires_marinated:
            required = "marinated"
        _require(cur == required,
                 f"cannot {action} '{item}': state is '{cur}' (expected '{required}')")
        # Station capacity check
        if action in ACTION_STATION:
            station = ACTION_STATION[action]
            cap = state.station_capacity.get(station, 1)
            _require(state.station_usage.get(station, 0) < cap,
                     f"station '{station}' is full (capacity {cap})")
    else:
        raise PreconditionError(f"unknown action '{action}'")


def apply_start(action: str, args: list[str], state: WorldState):
    robot, item = _robot_and_item(args, state)
    if robot:
        state.robot_busy[robot] = True
    if action in IN_PROGRESS:
        state.item_state[item] = IN_PROGRESS[action]
        station = ACTION_STATION[action]
        state.station_usage[station] = state.station_usage.get(station, 0) + 1
    # stack has no start effect (instantaneous: start == end)


def apply_end(action: str, args: list[str], state: WorldState):
    robot, item = _robot_and_item(args, state)
    if action == "stack":
        state.stack.append(item)
    elif action in RESULT and RESULT[action] is not None:
        state.item_state[item] = RESULT[action]
        station = ACTION_STATION[action]
        state.station_usage[station] = max(0, state.station_usage.get(station, 0) - 1)
    if robot:
        state.robot_busy[robot] = False


def _robot_and_item(args: list[str], state: WorldState) -> tuple[str | None, str]:
    if state.robots:
        _require(len(args) == 2, "expected arguments: <robot> <item>")
        robot, item = args
        _require(robot in state.robots, f"unknown robot '{robot}'")
        return robot, item
    _require(len(args) == 1, "expected one item argument")
    return None, args[0]


# ── OPTIC plan parser ─────────────────────────────────────────────────────────

@dataclass(order=True)
class PlanStep:
    t_start: float
    duration: float
    action: str
    args: list[str] = field(compare=False)

    @property
    def t_end(self) -> float:
        return self.t_start + self.duration

    def __str__(self):
        args_str = " ".join(self.args)
        return f"{self.t_start:.3f}: ({self.action} {args_str})  [{self.duration:.3f}]"


# e.g. "0.000: (grill patty)  [10.000]"
_PLAN_LINE = re.compile(
    r"(\d+(?:\.\d+)?)\s*:\s*\((\w[\w-]*)((?:\s+\w[\w-]*)*)\)\s*\[(\d+(?:\.\d+)?)\]"
)


def parse_optic_plan(text: str) -> list[PlanStep]:
    steps = []
    for line in text.splitlines():
        line = line.strip()
        if not line or line.startswith(";"):
            continue
        m = _PLAN_LINE.match(line)
        if not m:
            continue
        t_start   = float(m.group(1))
        action    = m.group(2).lower()
        args      = m.group(3).split()
        duration  = float(m.group(4))
        # Ignore planner-only wait actions used to encode temporal lag constraints.
        if action.startswith("wait_"):
            continue
        # Normalize ground PDDL action names like stack_bun_bot or fry_potato
        # back into the engine's parameterized action vocabulary.
        for prefix in (
            "marinate", "grill", "cut", "fry", "boil",
            "toast", "mash", "stack",
        ):
            marker = f"{prefix}_"
            if not action.startswith(marker):
                continue
            item_name = action[len(marker):]
            if not args:
                args = [item_name]
                action = prefix
            elif len(args) == 1:
                # Robot-aware grounded action, e.g. (stack_bun_bot robot1)
                args = [args[0], item_name]
                action = prefix
            break
        steps.append(PlanStep(t_start, duration, action, args))
    return sorted(steps, key=lambda s: s.t_start)


# ── Goal checker ──────────────────────────────────────────────────────────────

def check_goal(state: WorldState, goal: dict) -> tuple[bool, str]:
    required_states = goal.get("required_states", {})
    for item, expected in required_states.items():
        actual = state.item_state.get(item)
        if actual != expected:
            return False, f"'{item}' is '{actual}', expected '{expected}'"

    stack_order = goal.get("stack_order", [])
    if stack_order:
        if state.stack != stack_order:
            return False, f"stack is {state.stack}, expected {stack_order}"

    return True, ""


def _step_id(action: str, args: list[str]) -> str | None:
    if not args:
        return None
    return f"{action}_{args[-1]}"


def check_temporal_constraints(
    plan: list[PlanStep],
    temporal_constraints: list[dict],
    tolerance: float = 1e-6,
) -> tuple[bool, str]:
    if not temporal_constraints:
        return True, ""

    times: dict[str, tuple[float, float]] = {}
    for step in plan:
        sid = _step_id(step.action, step.args)
        if sid and sid not in times:
            times[sid] = (step.t_start, step.t_end)

    for constraint in temporal_constraints:
        before = constraint.get("before", {})
        after = constraint.get("after", {})
        before_id = f"{before.get('action')}_{before.get('item')}"
        after_id = f"{after.get('action')}_{after.get('item')}"
        min_lag = float(constraint.get("min_lag", 0.0))
        if before_id not in times:
            return False, f"temporal constraint references missing action '{before_id}'"
        if after_id not in times:
            return False, f"temporal constraint references missing action '{after_id}'"
        _, before_end = times[before_id]
        after_start, _ = times[after_id]
        earliest = before_end + min_lag
        if after_start < earliest - tolerance:
            return False, (
                f"temporal constraint violated: '{after_id}' starts at {after_start:.3f}s, "
                f"but must start at least {min_lag:.3f}s after '{before_id}' ends "
                f"at {before_end:.3f}s"
            )
    return True, ""


# ── Engine ────────────────────────────────────────────────────────────────────

@dataclass
class EvalResult:
    success: bool
    error: str
    makespan: float
    optimal_makespan: float
    sequential_makespan: float

    @property
    def makespan_ratio(self) -> float:
        if self.optimal_makespan == 0:
            return 1.0
        return self.makespan / self.optimal_makespan

    def __str__(self):
        status = "✓ SUCCESS" if self.success else f"✗ FAILED  ({self.error})"
        return (
            f"{status}\n"
            f"  makespan:          {self.makespan:.1f}s\n"
            f"  optimal makespan:  {self.optimal_makespan:.1f}s\n"
            f"  sequential:        {self.sequential_makespan:.1f}s\n"
            f"  makespan ratio:    {self.makespan_ratio:.3f}  (1.000 = optimal)"
        )


def execute(plan: list[PlanStep], task: Task, verbose: bool = False) -> EvalResult:  # noqa: E501
    """
    Execute a temporal plan against a task and return evaluation results.

    Events are processed in chronological order.
    At t_start: check preconditions, apply start effects.
    At t_end:   apply end effects.
    After all events: check goal.
    """
    state = WorldState(task.items, task.station_capacities,
                       task.goal.get("required_states", {}),
                       task.robots)

    # Items that must be cut before frying (isfryableifcut)
    fry_requires_cut = {
        name for name, info in task.items.items()
        if info.get("fry_requires_cut", False)
    }
    # Items that must be marinated before grilling
    grill_requires_marinated = {
        name for name, info in task.items.items()
        if info.get("grill_requires_marinated", False)
    }

    # Build event queue: (time, kind, step_index)
    # kind: 0=end, 1=start  (END processed before START at same timestamp,
    # so a finishing cut at t=3 makes item available for fry starting at t=3)
    queue = []
    for i, step in enumerate(plan):
        heapq.heappush(queue, (step.t_start, 1, i))
        heapq.heappush(queue, (step.t_end,   0, i))

    t_final = 0.0

    while queue:
        t, kind, idx = heapq.heappop(queue)
        step = plan[idx]
        t_final = t
        kind_str = "END  " if kind == 0 else "START"

        try:
            if kind == 1:   # START
                check_start(step.action, step.args, state,
                            fry_requires_cut, grill_requires_marinated)
                apply_start(step.action, step.args, state)
            else:           # END
                apply_end(step.action, step.args, state)
        except PreconditionError as e:
            return EvalResult(
                success=False,
                error=f"t={t:.3f} {kind_str} ({step.action} {' '.join(step.args)}): {e}",
                makespan=t,
                optimal_makespan=task.optimal_makespan,
                sequential_makespan=task.sequential_makespan,
            )

        if verbose:
            args_str = " ".join(step.args)
            print(f"  t={t:6.1f} {kind_str}  ({step.action} {args_str})"
                  f"  → {dict(state.item_state)}  stack={state.stack}")

    ok, err = check_goal(state, task.goal)
    if ok:
        ok, err = check_temporal_constraints(plan, task.temporal_constraints)
    if ok and task.deadline is not None and t_final > float(task.deadline) + 1e-6:
        ok = False
        err = f"plan finishes at {t_final:.3f}s, exceeding deadline {float(task.deadline):.3f}s"
    return EvalResult(
        success=ok,
        error=err,
        makespan=t_final,
        optimal_makespan=task.optimal_makespan,
        sequential_makespan=task.sequential_makespan,
    )


def evaluate_from_text(plan_text: str, task: Task, verbose: bool = False) -> EvalResult:
    """Convenience wrapper: parse OPTIC plan text then execute."""
    steps = parse_optic_plan(plan_text)
    if not steps:
        return EvalResult(
            success=False,
            error="no valid plan steps found in output",
            makespan=0.0,
            optimal_makespan=task.optimal_makespan,
            sequential_makespan=task.sequential_makespan,
        )
    return execute(steps, task, verbose=verbose)
