"""Plan validity checker for async planning evaluation.

Given a solver plan and the gold DAG graph, verifies whether the plan
correctly respects all dependency constraints and step durations.

The four-quadrant analysis this enables:

    answer_correct  &  plan_valid   → formalizer got everything right
    answer_correct  &  plan_invalid → lucky: wrong PDDL, coincidentally correct makespan
    answer_wrong    &  plan_valid   → overconstrained PDDL (extra edges push CP longer)
    answer_wrong    &  plan_invalid → complete failure

Note: plan validity requires the gold graph (only available for synthetic gen-data,
not for asynchow).

Validation strategy
───────────────────
When ``step_actions`` is provided (preferred):
  - Direct name-based matching: step_actions[i] = PDDL action name for Step i+1.
  - O(n), unambiguous, no search required.

When ``step_actions`` is absent (legacy fallback):
  - Map by step-object number: the action that consumed "stepK" is assumed to
    be gold Step K (topo_order[K-1]).
"""
from __future__ import annotations

import re
from collections import deque


# ── Helpers ──────────────────────────────────────────────────────────────────


def _topo_order_from_edges(n: int, edges: list) -> list[int]:
    """Compute topological order (Kahn's / FIFO queue) from edge list.

    Produces the same order as gen_dag._topo_step_order so that it matches
    the step numbering in the NL question even for old datasets that were
    generated before topo_order was saved.
    """
    adj: list[list[int]] = [[] for _ in range(n)]
    indeg = [0] * n
    for edge in edges:
        u, v = edge[0], edge[1]
        adj[u].append(v)
        indeg[v] += 1
    q = deque(i for i in range(n) if indeg[i] == 0)
    order: list[int] = []
    while q:
        u = q.popleft()
        order.append(u)
        for v in adj[u]:
            indeg[v] -= 1
            if indeg[v] == 0:
                q.append(v)
    return order


def _extract_action_times(
    plan: list[tuple[float, str, float]],
) -> dict[str, tuple[float, float]]:
    """Return {action_name → (start_time, finish_time)} from solver plan.

    The action name is the first whitespace-delimited token of the action
    string.  When an action name appears more than once, only the first
    (earliest-starting) occurrence is kept.
    """
    times: dict[str, tuple[float, float]] = {}
    for start, action, dur in plan:
        name = action.split()[0]
        if name not in times:
            times[name] = (start, start + dur)
    return times


def _extract_step_times(
    plan: list[tuple[float, str, float]],
) -> dict[int, tuple[float, float]]:
    """Return {step_number (1-indexed) → (start_time, finish_time)} from solver plan.

    Used only by the legacy fallback path (when step_actions is unavailable).
    """
    step_times: dict[int, tuple[float, float]] = {}
    for start, action, dur in plan:
        matches = re.findall(r"\bstep(\d+)\b", action, re.IGNORECASE)
        if matches:
            k = int(matches[0])
            if k not in step_times:
                step_times[k] = (start, start + dur)
    return step_times


# ── Public API ────────────────────────────────────────────────────────────────


def check_plan_validity(
    plan: list[tuple[float, str, float]],
    graph: dict,
    duration_tolerance: float = 1.0,
    step_actions: list[str] | None = None,
) -> tuple[bool, str]:
    """Verify that the solver plan respects all gold DAG constraints.

    When *step_actions* is provided, uses direct name-based matching:
    step_actions[i] is the PDDL action name for Step i+1 (gold node topo_order[i]).
    This is O(n) and unambiguous.

    Falls back to legacy step-object-number mapping when step_actions is absent.

    Args:
        plan: Solver plan as ``[(start_time, action_string, duration), ...]``.
        graph: Dict with keys:
            ``"durations"``  – list[int], gold duration per node (seconds).
            ``"edges"``      – list of [u, v] pairs, directed precedence edges.
            ``"topo_order"`` – (optional) list[int], used only by legacy path.
        duration_tolerance: Allowed per-step duration deviation in seconds.
        step_actions: Action names in step order (step_actions[i] = action for Step i+1).

    Returns:
        ``(is_valid, error_message)`` where ``error_message`` is ``""`` when valid.
    """
    gold_durations: list[int] = graph["durations"]
    gold_edges: list = graph["edges"]
    n = len(gold_durations)

    # ── Name-based matching (preferred) ──────────────────────────────────────
    if step_actions and len(step_actions) == n:
        action_times = _extract_action_times(plan)
        topo_order = _topo_order_from_edges(n, gold_edges)
        node_to_action = {topo_order[i]: step_actions[i] for i in range(n)}
        step_of = {node: i + 1 for i, node in enumerate(topo_order)}

        for node, action_name in node_to_action.items():
            if action_name not in action_times:
                return False, (
                    f"Action '{action_name}' (Step {step_of[node]}) not found in plan"
                )

        for node, action_name in node_to_action.items():
            gold_dur = gold_durations[node]
            start, finish = action_times[action_name]
            plan_dur = finish - start
            if abs(plan_dur - gold_dur) > duration_tolerance:
                return False, (
                    f"Node {node} (action '{action_name}') duration mismatch: "
                    f"gold={gold_dur}s, plan={plan_dur:.1f}s"
                )

        for edge in gold_edges:
            u, v = edge[0], edge[1]
            a_u, a_v = node_to_action[u], node_to_action[v]
            _, finish_u = action_times[a_u]
            start_v, _ = action_times[a_v]
            if start_v < finish_u - duration_tolerance:
                return False, (
                    f"Dependency violated: '{a_u}' (node {u}) must finish before "
                    f"'{a_v}' (node {v}) starts. "
                    f"finish_u={finish_u:.1f}s, start_v={start_v:.1f}s"
                )

        return True, ""

    # ── Legacy: step-object-number-based validation ───────────────────────────
    topo_order = graph.get("topo_order") or _topo_order_from_edges(n, gold_edges)
    step_to_node: dict[int, int] = {k: topo_order[k - 1] for k in range(1, n + 1)}
    node_to_step: dict[int, int] = {v: k for k, v in step_to_node.items()}

    step_times = _extract_step_times(plan)

    missing = [k for k in range(1, n + 1) if k not in step_times]
    if missing:
        return False, f"Missing steps in plan: {missing}"

    for k in range(1, n + 1):
        node = step_to_node[k]
        gold_dur = gold_durations[node]
        start, finish = step_times[k]
        plan_dur = finish - start
        if abs(plan_dur - gold_dur) > duration_tolerance:
            return False, (
                f"Step {k} (node {node}) duration mismatch: "
                f"gold={gold_dur}s, plan={plan_dur:.1f}s"
            )

    for edge in gold_edges:
        u, v = edge[0], edge[1]
        k_u = node_to_step[u]
        k_v = node_to_step[v]
        _, finish_u = step_times[k_u]
        start_v, _ = step_times[k_v]
        if start_v < finish_u - duration_tolerance:
            return False, (
                f"Dependency violated: Step {k_u} (node {u}) must finish before "
                f"Step {k_v} (node {v}) starts. "
                f"finish_u={finish_u:.1f}s, start_v={start_v:.1f}s"
            )

    return True, ""
