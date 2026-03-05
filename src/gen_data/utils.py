"""
Graph-theory utilities for async planning difficulty quantification.

Exported:
    DiGraph                   lightweight directed graph
    compute_metrics(dag)       → dict of raw graph metrics
    compute_difficulty(...)    → (score: float, ranking: str)
    compute_gold_makespan(question, graph) → int (seconds)
"""

from __future__ import annotations

import math
import re
from collections import deque


# ═══════════════════════════════════════════════════════════════════════
# Graph algorithms
# ═══════════════════════════════════════════════════════════════════════


def _topo_sort(n: int, adj: list[list[int]]) -> list[int]:
    """Kahn's algorithm for topological sort."""
    indeg = [0] * n
    for u in range(n):
        for v in adj[u]:
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
    if len(order) != n:
        raise ValueError("Cycle detected")
    return order


def _compute_critical_path(
    durations: list[int],
    adj: list[list[int]],
    pred: list[list[int]],
) -> tuple[int, list[int]]:
    """CPM: returns (makespan, finish_time_per_node). AND-join semantics."""
    order = _topo_sort(len(durations), adj)
    finish = [0] * len(durations)
    for u in order:
        finish[u] = max((finish[p] for p in pred[u]), default=0) + durations[u]
    return max(finish), finish


def _count_paths(n: int, adj: list[list[int]], pred: list[list[int]]) -> int:
    """Count distinct source→sink paths (capped at 10^9)."""
    CAP = 10**9
    order = _topo_sort(n, adj)
    sources = {u for u in range(n) if not pred[u]}
    sinks   = {u for u in range(n) if not adj[u]}
    dp = [0] * n
    for u in order:
        dp[u] = 1 if u in sources else min(sum(dp[p] for p in pred[u]), CAP)
    return min(sum(dp[s] for s in sinks), CAP)


def _critical_path_nodes(
    durations: list[int],
    adj: list[list[int]],
    pred: list[list[int]],
    finish: list[int],
) -> list[int]:
    """Nodes with zero slack (on the critical path)."""
    order    = _topo_sort(len(durations), adj)
    makespan = max(finish)
    lf = [makespan] * len(durations)
    for u in reversed(order):
        for v in adj[u]:
            lf[u] = min(lf[u], lf[v] - durations[v])
    return [u for u in range(len(durations)) if lf[u] == finish[u]]


# ═══════════════════════════════════════════════════════════════════════
# Lightweight DiGraph
# ═══════════════════════════════════════════════════════════════════════


class DiGraph:
    def __init__(self):
        self._attrs: dict[int, dict] = {}
        self._succ:  dict[int, set]  = {}
        self._pred:  dict[int, set]  = {}

    def add_node(self, n: int, **attrs) -> None:
        if n not in self._attrs:
            self._attrs[n] = {}
            self._succ[n]  = set()
            self._pred[n]  = set()
        self._attrs[n].update(attrs)

    def add_edge(self, u: int, v: int) -> None:
        for n in (u, v):
            if n not in self._attrs:
                self.add_node(n)
        self._succ[u].add(v)
        self._pred[v].add(u)

    def nodes(self)           -> list[int]: return list(self._attrs)
    def edges(self)           -> list[tuple[int, int]]: return [(u, v) for u in self._succ for v in self._succ[u]]
    def successors(self, n)   -> list[int]: return list(self._succ.get(n, set()))
    def predecessors(self, n) -> list[int]: return list(self._pred.get(n, set()))
    def in_degree(self, n)    -> int: return len(self._pred.get(n, set()))
    def out_degree(self, n)   -> int: return len(self._succ.get(n, set()))
    def num_nodes(self)       -> int: return len(self._attrs)
    def num_edges(self)       -> int: return sum(len(s) for s in self._succ.values())
    def get_attr(self, n: int, k: str): return self._attrs[n][k]
    def set_attr(self, n: int, k: str, v) -> None: self._attrs[n][k] = v

    def topological_sort(self) -> list[int]:
        in_deg = {n: self.in_degree(n) for n in self._attrs}
        queue  = sorted(n for n, d in in_deg.items() if d == 0)
        result: list[int] = []
        while queue:
            node = queue.pop(0)
            result.append(node)
            for s in sorted(self._succ[node]):
                in_deg[s] -= 1
                if in_deg[s] == 0:
                    queue.append(s)
        if len(result) != len(self._attrs):
            raise ValueError("Cycle detected")
        return result

    def is_dag(self) -> bool:
        try:
            self.topological_sort()
            return True
        except ValueError:
            return False

    def width(self) -> int:
        """Level-based width: max number of nodes at any single depth level."""
        levels: dict[int, int] = {}
        for node in self.topological_sort():
            preds = self.predecessors(node)
            levels[node] = 0 if not preds else max(levels[p] + 1 for p in preds)
        counts: dict[int, int] = {}
        for lv in levels.values():
            counts[lv] = counts.get(lv, 0) + 1
        return max(counts.values()) if counts else 1


# ═══════════════════════════════════════════════════════════════════════
# Metrics & difficulty scoring
# ═══════════════════════════════════════════════════════════════════════


def compute_metrics(dag: dict) -> dict:
    """Compute graph-theory metrics for a generated DAG."""
    n         = dag["n_steps"]
    durations = dag["durations"]
    edges     = dag["edges"]

    adj  = [[] for _ in range(n)]
    pred = [[] for _ in range(n)]
    for u, v in edges:
        adj[u].append(v)
        pred[v].append(u)

    min_seconds, finish = _compute_critical_path(durations, adj, pred)
    sequential_seconds  = sum(durations)
    par_ratio           = sequential_seconds / min_seconds if min_seconds > 0 else 1.0
    path_count          = _count_paths(n, adj, pred)
    and_join_count      = sum(1 for v in range(n) if len(pred[v]) >= 2)

    order = _topo_sort(n, adj)
    hop   = [0] * n
    for u in order:
        for v in adj[u]:
            hop[v] = max(hop[v], hop[u] + 1)

    cp_nodes  = _critical_path_nodes(durations, adj, pred, finish)
    max_edges = n * (n - 1) / 2

    return {
        "min_seconds":        min_seconds,
        "sequential_seconds": sequential_seconds,
        "par_ratio":          round(par_ratio, 4),
        "path_count":         path_count,
        "dag_depth_actual":   max(hop) if hop else 0,
        "and_join_count":     and_join_count,
        "cp_node_frac":       round(len(cp_nodes) / n, 4),
        "edge_density":       round(len(edges) / max_edges, 4) if max_edges > 0 else 0.0,
        "n_edges":            len(edges),
    }


# Duration parsing for compute_gold_makespan
_DURATION_UNITS = {
    "second": 1, "seconds": 1, "sec": 1, "secs": 1,
    "minute": 60, "minutes": 60, "min": 60, "mins": 60,
    "hour": 3600, "hours": 3600, "hr": 3600, "hrs": 3600,
    "day": 86400, "days": 86400,
    "week": 604800, "weeks": 604800,
    "month": 2592000, "months": 2592000,  # ~30 days
    "year": 31536000, "years": 31536000,
}

_DURATION_PATTERN = re.compile(
    r"(\d+(?:\.\d+)?)\s*(" + "|".join(_DURATION_UNITS) + r")",
    re.IGNORECASE,
)


def parse_node_durations(question: str, graph: dict) -> list[int] | None:
    """Parse step durations from a question and map them to node-indexed list.

    Reads lines like "Step N. ... (X minutes)" and uses graph["step_to_node"]
    to map step numbers → node IDs, returning a list where durations[node_id]
    is the duration in seconds.  Returns None if any step is missing a duration.
    """
    step_to_node = graph.get("step_to_node")
    if not step_to_node:
        return None

    n = len(step_to_node)
    step_durations: dict[int, int] = {}

    for line in question.split("\n"):
        line = line.strip()
        step_match = re.match(r"^Step\s+(\d+)\.", line, re.IGNORECASE)
        if not step_match:
            continue
        step_num = int(step_match.group(1))
        dur_match = _DURATION_PATTERN.search(line)
        if not dur_match:
            continue
        value = float(dur_match.group(1))
        unit = dur_match.group(2).lower()
        step_durations[step_num] = int(round(value * _DURATION_UNITS[unit]))

    if len(step_durations) != n:
        return None

    durations = [0] * n
    for step, node in step_to_node.items():
        step_int = int(step) if isinstance(step, str) else step
        if step_int in step_durations:
            durations[node] = step_durations[step_int]

    return durations


def compute_gold_makespan(question: str, graph: dict) -> int | None:
    """Compute the gold makespan in seconds from a question with durations.

    Parses "Step N. ... (X minutes)" lines, uses graph["step_to_node"] to map
    to node IDs, runs CPM on graph["edges"], returns makespan. Returns None if
    any step is missing a duration.
    """
    durations = parse_node_durations(question, graph)
    if durations is None:
        return None

    edges = graph.get("edges", [])
    n = len(durations)
    adj = [[] for _ in range(n)]
    pred = [[] for _ in range(n)]
    for u, v in edges:
        adj[u].append(v)
        pred[v].append(u)

    makespan, _ = _compute_critical_path(durations, adj, pred)
    return makespan


def compute_difficulty(metrics: dict, n_steps: int) -> tuple[float, str]:
    """
    Composite difficulty score (0–1) and ranking (low/medium/high).

      par_ratio_norm  = 1 - 1/par_ratio          (weight 0.60)
      path_count_norm = log2(paths)/log2(n_steps) (weight 0.40)
    """
    par_norm  = 1.0 - 1.0 / metrics["par_ratio"] if metrics["par_ratio"] > 1.0 else 0.0
    max_log   = max(1.0, math.log2(n_steps))
    path_norm = min(1.0, math.log2(max(1, metrics["path_count"])) / max_log)

    score   = round(min(1.0, max(0.0, 0.6 * par_norm + 0.4 * path_norm)), 4)
    ranking = "low" if score < 0.3 else "medium" if score < 0.55 else "high"
    return score, ranking
