"""CP-SAT scheduling backend for structured temporal plans.

The solver expects a domain-specific scheduling representation rather than
PDDL.  Each action is an interval with a fixed duration, optional unary/capacity
resource, and precedence dependencies.  The objective is minimum makespan.
"""
from __future__ import annotations

from dataclasses import dataclass
from typing import Any


ALLOWED_ACTIONS = {
    "grill",
    "cut",
    "fry",
    "boil",
    "toast",
    "marinate",
    "mash",
    "stack",
}


@dataclass(frozen=True)
class ScheduleAction:
    id: str
    action: str
    item: str
    duration: int
    station: str | None = None


@dataclass(frozen=True)
class ScheduleResult:
    status: str
    optimal: bool
    makespan: float | None
    plan: list[tuple[float, str, float]]
    error: str = ""

    def to_plan_text(self) -> str:
        return "\n".join(
            f"{start:.3f}: ({action})  [{dur:.3f}]"
            for start, action, dur in self.plan
        )


def _coerce_duration(value: Any) -> int:
    if isinstance(value, str):
        value = value.strip().lower().replace("seconds", "").replace("second", "").strip()
    duration = float(value)
    if duration <= 0:
        raise ValueError(f"duration must be positive, got {value!r}")
    rounded = round(duration)
    if abs(duration - rounded) > 1e-6:
        raise ValueError(
            f"CP-SAT backend currently expects integer-second durations, got {duration}"
        )
    return int(rounded)


def parse_schedule_spec(
    spec: dict[str, Any],
    *,
    valid_items: set[str] | None = None,
    station_capacities: dict[str, int] | None = None,
) -> tuple[list[ScheduleAction], list[tuple[str, str]]]:
    """Validate and normalize a JSON scheduling spec.

    Expected shape:
      {"actions": [{"id", "action", "item", "duration", "station"}],
       "dependencies": [{"before", "after"}] or [["a", "b"]]}
    """
    if not isinstance(spec, dict):
        raise ValueError("schedule spec must be a JSON object")

    raw_actions = spec.get("actions")
    if not isinstance(raw_actions, list) or not raw_actions:
        raise ValueError("schedule spec must contain a non-empty actions list")

    capacities = station_capacities or {}
    actions: list[ScheduleAction] = []
    seen: set[str] = set()
    for raw in raw_actions:
        if not isinstance(raw, dict):
            raise ValueError("each action must be an object")
        action_id = str(raw.get("id", "")).strip()
        action = str(raw.get("action", "")).strip().lower()
        item = str(raw.get("item", "")).strip()
        station_raw = raw.get("station", None)
        station = None if station_raw in (None, "", "none", "null") else str(station_raw).strip()

        if not action_id:
            raise ValueError("each action needs a non-empty id")
        if action_id in seen:
            raise ValueError(f"duplicate action id: {action_id}")
        if action not in ALLOWED_ACTIONS:
            raise ValueError(f"unknown action '{action}' in {action_id}")
        if not item:
            raise ValueError(f"action {action_id} needs an item")
        if valid_items is not None and item not in valid_items:
            raise ValueError(f"action {action_id} references unknown item '{item}'")
        if action == "stack":
            station = None
        elif station is None:
            raise ValueError(f"non-stack action {action_id} needs a station")
        if station is not None and capacities and station not in capacities:
            raise ValueError(f"action {action_id} references unknown station '{station}'")

        actions.append(
            ScheduleAction(
                id=action_id,
                action=action,
                item=item,
                duration=_coerce_duration(raw.get("duration")),
                station=station,
            )
        )
        seen.add(action_id)

    raw_deps = spec.get("dependencies", [])
    if not isinstance(raw_deps, list):
        raise ValueError("dependencies must be a list")

    dependencies: list[tuple[str, str]] = []
    for raw in raw_deps:
        if isinstance(raw, dict):
            before = str(raw.get("before", "")).strip()
            after = str(raw.get("after", "")).strip()
        elif isinstance(raw, (list, tuple)) and len(raw) == 2:
            before = str(raw[0]).strip()
            after = str(raw[1]).strip()
        else:
            raise ValueError("each dependency must be {'before','after'} or [before, after]")
        if before not in seen or after not in seen:
            raise ValueError(f"dependency references unknown action: {before!r} -> {after!r}")
        if before == after:
            raise ValueError(f"self dependency is not allowed: {before}")
        dependencies.append((before, after))

    return actions, dependencies


def solve_schedule(
    actions: list[ScheduleAction],
    dependencies: list[tuple[str, str]],
    *,
    station_capacities: dict[str, int] | None = None,
    timeout: float = 120.0,
) -> ScheduleResult:
    """Solve a structured schedule optimally with OR-Tools CP-SAT."""
    try:
        from ortools.sat.python import cp_model
    except ImportError as exc:
        return ScheduleResult(
            status="MISSING_DEPENDENCY",
            optimal=False,
            makespan=None,
            plan=[],
            error="Missing dependency 'ortools'. Install requirements.txt to use CP-SAT.",
        )

    if not actions:
        return ScheduleResult("INVALID", False, None, [], "no actions to schedule")

    action_by_id = {a.id: a for a in actions}
    horizon = sum(a.duration for a in actions)
    model = cp_model.CpModel()

    starts = {}
    ends = {}
    intervals = {}
    for a in actions:
        starts[a.id] = model.NewIntVar(0, horizon, f"start_{a.id}")
        ends[a.id] = model.NewIntVar(0, horizon, f"end_{a.id}")
        intervals[a.id] = model.NewIntervalVar(
            starts[a.id],
            a.duration,
            ends[a.id],
            f"interval_{a.id}",
        )

    for before, after in dependencies:
        model.Add(starts[after] >= ends[before])

    capacities = station_capacities or {}
    by_station: dict[str, list[ScheduleAction]] = {}
    for a in actions:
        if a.station:
            by_station.setdefault(a.station, []).append(a)

    for station, station_actions in by_station.items():
        station_intervals = [intervals[a.id] for a in station_actions]
        cap = int(capacities.get(station, 1))
        if cap <= 1:
            model.AddNoOverlap(station_intervals)
        else:
            model.AddCumulative(station_intervals, [1] * len(station_intervals), cap)

    makespan = model.NewIntVar(0, horizon, "makespan")
    model.AddMaxEquality(makespan, [ends[a.id] for a in actions])
    model.Minimize(makespan)

    solver = cp_model.CpSolver()
    solver.parameters.max_time_in_seconds = float(timeout)
    status_code = solver.Solve(model)
    status = solver.StatusName(status_code)

    if status_code not in (cp_model.OPTIMAL, cp_model.FEASIBLE):
        return ScheduleResult(status, False, None, [], f"CP-SAT returned {status}")

    plan = []
    for action_id, a in action_by_id.items():
        start = float(solver.Value(starts[action_id]))
        plan.append((start, f"{a.action} {a.item}", float(a.duration)))
    plan.sort(key=lambda row: (row[0], row[1]))

    return ScheduleResult(
        status=status,
        optimal=(status_code == cp_model.OPTIMAL),
        makespan=float(solver.Value(makespan)),
        plan=plan,
        error="" if status_code == cp_model.OPTIMAL else "CP-SAT found a feasible plan but did not prove optimality",
    )
