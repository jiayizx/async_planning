"""
Synthetic async-planning DAG generator with controllable graph-theory complexity.

Model: task-on-node (each node is a step with a duration; edges = precedence constraints).
This matches AsyncHow's "Step X must precede Step Y" format.

Primary control parameters
---------------------------
n_steps       : total number of steps
dag_depth     : length of critical path in hops (2 ≤ dag_depth ≤ n_steps)
extra_edge_prob : probability of adding cross-layer shortcut edges (adds alt. paths)
and_join_frac : fraction of multi-predecessor nodes that use AND semantics
                (remaining use OR = multiple independent rules into same target)
time_range    : (min_sec, max_sec) for each step duration

Computed complexity metrics (stored per sample)
------------------------------------------------
min_seconds       : optimal makespan (critical path sum)
sequential_seconds: sum of ALL step durations (naive sequential execution)
par_ratio         : sequential_seconds / min_seconds  ≥ 1.0
                    1.0 = fully sequential, 5.0 = heavy parallelism
path_count        : number of distinct source→sink paths in the DAG
dag_depth_actual  : longest path in hops from any source to any sink
and_join_count    : number of steps that wait for ALL predecessors
cp_node_frac      : fraction of steps on the critical path (1.0 = all steps on CP = sequential)

Usage
-----
python -m src.gen_data.gen_dag \\
    --n-samples 500 \\
    --n-steps-range 5 9 \\
    --dag-depth-range 3 5 \\
    --extra-edge-prob 0.2 \\
    --time-range 300 3600 \\
    --output data/synthetic/medium_500.json
"""

from __future__ import annotations

import argparse
import json
import math
import random
import re
from collections import defaultdict, deque
from datetime import timedelta
from pathlib import Path
from typing import Optional


# ── Critical-path analysis ────────────────────────────────────────────────────


def _topo_sort(n_steps: int, adj: list[list[int]]) -> list[int]:
    """Kahn's algorithm; returns node order or raises if cycle detected."""
    indeg = [0] * n_steps
    for u in range(n_steps):
        for v in adj[u]:
            indeg[v] += 1
    q = deque(i for i in range(n_steps) if indeg[i] == 0)
    order = []
    while q:
        u = q.popleft()
        order.append(u)
        for v in adj[u]:
            indeg[v] -= 1
            if indeg[v] == 0:
                q.append(v)
    if len(order) != n_steps:
        raise ValueError("Cycle detected in generated DAG")
    return order


def compute_critical_path(
    durations: list[int],
    adj: list[list[int]],          # adj[u] = list of successors
    predecessors: list[list[int]],  # predecessors[v] = list of predecessors
) -> tuple[int, list[int]]:
    """
    Returns (min_makespan_seconds, finish_time_per_node).

    Uses task-on-node CPM:
      finish[v] = duration[v] + max(finish[pred] for pred in predecessors[v])
      (if no predecessors, finish[v] = duration[v])

    This gives AND semantics: v starts only when ALL predecessors finish.
    """
    n = len(durations)
    order = _topo_sort(n, adj)
    finish = [0] * n
    for u in order:
        start = max((finish[p] for p in predecessors[u]), default=0)
        finish[u] = start + durations[u]
    makespan = max(finish)
    return makespan, finish


def count_paths(
    n_steps: int,
    adj: list[list[int]],
    predecessors: list[list[int]],
) -> int:
    """Count distinct source→sink paths via DP (capped at 1e9 to avoid overflow)."""
    CAP = 10 ** 9
    order = _topo_sort(n_steps, adj)
    sources = {u for u in range(n_steps) if not predecessors[u]}
    sinks = {u for u in range(n_steps) if not adj[u]}

    paths_from_source = [0] * n_steps
    for u in order:
        if u in sources:
            paths_from_source[u] = 1
        else:
            paths_from_source[u] = min(
                sum(paths_from_source[p] for p in predecessors[u]), CAP
            )

    total = sum(paths_from_source[s] for s in sinks)
    return min(total, CAP)


def critical_path_nodes(
    durations: list[int],
    adj: list[list[int]],
    predecessors: list[list[int]],
    optimal_finish: list[int],
) -> list[int]:
    """Return the set of nodes on the critical path (slack == 0)."""
    n = len(durations)
    order = _topo_sort(n, adj)
    makespan = max(optimal_finish)
    lf = [makespan] * n
    for u in reversed(order):
        for v in adj[u]:
            lf[u] = min(lf[u], lf[v] - durations[v])
    # Critical node: LF == EF (zero slack)
    return [u for u in range(n) if lf[u] == optimal_finish[u]]


# ── DAG generation ─────────────────────────────────────────────────────────────


def _distribute_nodes(n: int, n_layers: int) -> list[int]:
    """Distribute n nodes across n_layers layers (≥1 node per layer)."""
    assert n >= n_layers, f"n_steps ({n}) must be ≥ dag_depth ({n_layers - 1})"
    base = n // n_layers
    extra = n % n_layers
    counts = [base + (1 if i < extra else 0) for i in range(n_layers)]
    return counts


def generate_dag(
    n_steps: int,
    dag_depth: int,
    time_range: tuple[int, int] = (300, 3600),
    extra_edge_prob: float = 0.15,
    seed: Optional[int] = None,
) -> dict:
    """
    Generate a layered DAG with n_steps nodes and a critical path of ≥ dag_depth hops.

    Returns a dict with keys:
      durations        : list[int], one per step (seconds)
      edges            : list[tuple[int,int]], directed precedence edges
      layer_of         : list[int], which layer each step belongs to
      n_steps          : int
      dag_depth_target : int (requested dag_depth)
    """
    if seed is not None:
        random.seed(seed)

    # dag_depth hops → dag_depth+1 layers
    n_layers = dag_depth + 1
    if n_steps < n_layers:
        raise ValueError(f"n_steps ({n_steps}) must be ≥ dag_depth+1 ({n_layers})")

    counts = _distribute_nodes(n_steps, n_layers)

    # Assign step IDs to layers
    layer_of: list[int] = []
    layers: list[list[int]] = [[] for _ in range(n_layers)]
    step_id = 0
    for l, cnt in enumerate(counts):
        for _ in range(cnt):
            layer_of.append(l)
            layers[l].append(step_id)
            step_id += 1

    # Assign durations snapped to 5-minute increments (more realistic)
    lo, hi = time_range
    n_buckets = max(1, (hi - lo) // 300)
    durations = [lo + random.randint(0, n_buckets) * 300 for _ in range(n_steps)]

    # Build adjacency: each node in layer l gets ≥1 predecessor from layer l-1
    edge_set: set[tuple[int, int]] = set()
    for l in range(1, n_layers):
        prev = layers[l - 1]
        for v in layers[l]:
            # At least one predecessor (AND semantics for multi-pred)
            k = random.randint(1, min(len(prev), 2))
            for u in random.sample(prev, k):
                edge_set.add((u, v))

    # Add cross-layer "skip" edges (creates alternative shorter paths → more path_count)
    if extra_edge_prob > 0 and n_layers > 2:
        for u_layer in range(n_layers - 2):
            for u in layers[u_layer]:
                for skip in range(2, n_layers - u_layer):
                    target_layer = u_layer + skip
                    for v in layers[target_layer]:
                        if random.random() < extra_edge_prob:
                            edge_set.add((u, v))

    edges = list(edge_set)

    return {
        "durations": durations,
        "edges": edges,
        "layer_of": layer_of,
        "n_steps": n_steps,
        "dag_depth_target": dag_depth,
    }


def compute_metrics(dag: dict) -> dict:
    """
    Compute graph-theory complexity metrics for a DAG.

    Returns dict with:
      min_seconds        : optimal makespan (critical path)
      sequential_seconds : sum of all step durations
      par_ratio          : sequential / min  (≥1.0; 1.0=sequential, 5.0=heavy parallel)
      path_count         : distinct source→sink paths (capped at 1e9)
      dag_depth_actual   : longest hop-path from source to sink
      and_join_count     : nodes with ≥2 predecessors (synchronization points)
      cp_node_frac       : fraction of steps on critical path (1.0 = fully sequential)
    """
    n = dag["n_steps"]
    durations = dag["durations"]
    edges = dag["edges"]

    # Build forward and backward adjacency
    adj: list[list[int]] = [[] for _ in range(n)]
    pred: list[list[int]] = [[] for _ in range(n)]
    for u, v in edges:
        adj[u].append(v)
        pred[v].append(u)

    min_seconds, finish = compute_critical_path(durations, adj, pred)
    sequential_seconds = sum(durations)
    par_ratio = sequential_seconds / min_seconds if min_seconds > 0 else 1.0
    path_count = count_paths(n, adj, pred)
    and_join_count = sum(1 for v in range(n) if len(pred[v]) >= 2)

    # DAG depth (longest hop path)
    order = _topo_sort(n, adj)
    hop = [0] * n
    for u in order:
        for v in adj[u]:
            hop[v] = max(hop[v], hop[u] + 1)
    dag_depth_actual = max(hop)

    # Critical path node fraction (proportion of steps that are bottlenecks)
    cp_nodes = critical_path_nodes(durations, adj, pred, finish)
    cp_node_frac = len(cp_nodes) / n if n > 0 else 1.0

    return {
        "min_seconds": min_seconds,
        "sequential_seconds": sequential_seconds,
        "par_ratio": round(par_ratio, 4),
        "path_count": path_count,
        "dag_depth_actual": dag_depth_actual,
        "and_join_count": and_join_count,
        "cp_node_frac": round(cp_node_frac, 4),
    }


# ── NL formatting ─────────────────────────────────────────────────────────────

TASK_TEMPLATES = [
    "complete the project",
    "prepare the meal",
    "set up the event",
    "finish the home renovation",
    "assemble the product",
    "organize the workshop",
    "run the experiment",
    "plan the trip",
    "build the prototype",
    "execute the deployment",
]

STEP_VERB_TEMPLATES = [
    "Perform task {}",
    "Complete phase {}",
    "Execute step {}",
    "Finish component {}",
    "Process unit {}",
]


def _format_duration(seconds: int) -> str:
    """Convert seconds to a human-readable duration string."""
    if seconds % 86400 == 0:
        d = seconds // 86400
        return f"{d} day{'s' if d != 1 else ''}"
    if seconds % 3600 == 0:
        h = seconds // 3600
        return f"{h} hour{'s' if h != 1 else ''}"
    if seconds % 60 == 0:
        m = seconds // 60
        return f"{m} minute{'s' if m != 1 else ''}"
    return f"{seconds} seconds"


def _topo_step_order(n: int, edges: list[tuple[int, int]]) -> list[int]:
    """Return steps in topological order (for readable NL listing)."""
    adj: list[list[int]] = [[] for _ in range(n)]
    indeg = [0] * n
    for u, v in edges:
        adj[u].append(v)
        indeg[v] += 1
    q = deque(i for i in range(n) if indeg[i] == 0)
    order = []
    while q:
        u = q.popleft()
        order.append(u)
        for v in adj[u]:
            indeg[v] -= 1
            if indeg[v] == 0:
                q.append(v)
    return order


def format_nl_question(
    dag: dict,
    task_title: Optional[str] = None,
    step_names: Optional[list[str]] = None,
    rng: Optional[random.Random] = None,
) -> str:
    """
    Convert a DAG to an AsyncHow-style NL question.

    Output format:
        To <task>, here are the steps and the times needed for each step.
        Step 1. <name>. (<duration>)
        Step 2. <name>. (<duration>)
        ...
        These ordering constraints need to be obeyed when executing above steps:
        Step X must precede Step Y.
    """
    rng = rng or random
    n = dag["n_steps"]
    durations = dag["durations"]
    edges = dag["edges"]

    if task_title is None:
        task_title = rng.choice(TASK_TEMPLATES)

    topo_order = _topo_step_order(n, edges)
    # step_idx[original_node_id] → 1-based step number in the NL question
    step_idx: dict[int, int] = {node: i + 1 for i, node in enumerate(topo_order)}

    if step_names is None:
        template = rng.choice(STEP_VERB_TEMPLATES)
        step_names = [template.format(chr(64 + i + 1)) for i in range(n)]

    lines = [f"To {task_title}, here are the steps and the times needed for each step."]
    for i, node in enumerate(topo_order):
        dur_str = _format_duration(durations[node])
        lines.append(f"Step {i + 1}. {step_names[node]}. ({dur_str})")

    # Ordering constraints
    constraints = []
    for u, v in edges:
        su, sv = step_idx[u], step_idx[v]
        constraints.append(f"Step {su} must precede Step {sv}.")

    if constraints:
        lines.append("")
        lines.append(
            "These ordering constraints need to be obeyed when executing above steps:"
        )
        lines.extend(sorted(set(constraints)))

    return "\n".join(lines)


def format_answer(min_seconds: int, sequential_seconds: int) -> str:
    """Format answer in AsyncHow timedelta string representation."""
    td_min = repr(timedelta(seconds=min_seconds))
    td_seq = repr(timedelta(seconds=sequential_seconds))
    return f"[{td_min}, {td_seq}]"


# ── Batch generation ───────────────────────────────────────────────────────────


def generate_dataset(
    n_samples: int,
    n_steps_range: tuple[int, int] = (5, 9),
    dag_depth_range: tuple[int, int] = (3, 5),
    time_range: tuple[int, int] = (300, 3600),
    extra_edge_prob: float = 0.15,
    min_par_ratio: float = 1.0,
    max_par_ratio: float = float("inf"),
    min_path_count: int = 1,
    seed: Optional[int] = None,
    max_attempts_per_sample: int = 20,
) -> list[dict]:
    """
    Generate n_samples DAGs satisfying the given complexity constraints.

    Filters on par_ratio and path_count; retries if constraints not met.
    """
    rng = random.Random(seed)
    samples = []
    total_attempts = 0

    while len(samples) < n_samples:
        total_attempts += 1
        if total_attempts > n_samples * max_attempts_per_sample:
            print(
                f"Warning: could only generate {len(samples)}/{n_samples} samples "
                f"within {total_attempts} attempts. Relaxing constraints."
            )
            break

        n_steps = rng.randint(*n_steps_range)
        dag_depth = rng.randint(*dag_depth_range)
        dag_depth = min(dag_depth, n_steps - 1)  # depth ≤ n_steps - 1

        sample_seed = rng.randint(0, 2**31)
        try:
            dag = generate_dag(
                n_steps=n_steps,
                dag_depth=dag_depth,
                time_range=time_range,
                extra_edge_prob=extra_edge_prob,
                seed=sample_seed,
            )
        except ValueError:
            continue

        metrics = compute_metrics(dag)

        # Apply filters
        if metrics["par_ratio"] < min_par_ratio:
            continue
        if metrics["par_ratio"] > max_par_ratio:
            continue
        if metrics["path_count"] < min_path_count:
            continue

        question = format_nl_question(dag, rng=rng)
        answer = format_answer(metrics["min_seconds"], metrics["sequential_seconds"])

        topo_order = _topo_step_order(n_steps, dag["edges"])
        sample = {
            "id": len(samples) + 1,
            "question": question,
            "answer": answer,
            # Complexity metadata
            "n_steps": n_steps,
            "min_seconds": metrics["min_seconds"],
            "sequential_seconds": metrics["sequential_seconds"],
            "par_ratio": metrics["par_ratio"],
            "path_count": metrics["path_count"],
            "dag_depth_actual": metrics["dag_depth_actual"],
            "and_join_count": metrics["and_join_count"],
            "cp_node_frac": metrics["cp_node_frac"],
            # Raw graph (for NL regeneration or analysis)
            "graph": {
                "durations": dag["durations"],
                "edges": dag["edges"],
                "layer_of": dag["layer_of"],
                # topo_order[k-1] = graph node id for NL "Step k"
                # Used for plan validity checking after formalizer evaluation
                "topo_order": topo_order,
            },
        }
        samples.append(sample)

    return samples


# ── CLI ────────────────────────────────────────────────────────────────────────


def _print_stats(samples: list[dict]) -> None:
    import statistics as st

    def pct(key):
        vals = [s[key] for s in samples if s[key] is not None]
        if not vals:
            return "n/a"
        return (
            f"mean={st.mean(vals):.2f}  "
            f"median={st.median(vals):.2f}  "
            f"min={min(vals):.2f}  "
            f"max={max(vals):.2f}"
        )

    print(f"\nGenerated {len(samples)} samples")
    print(f"  n_steps      : {pct('n_steps')}")
    print(f"  par_ratio    : {pct('par_ratio')}")
    print(f"  path_count   : {pct('path_count')}")
    print(f"  dag_depth    : {pct('dag_depth_actual')}")
    print(f"  and_join_cnt : {pct('and_join_count')}")
    print(f"  cp_node_frac : {pct('cp_node_frac')}")


def main():
    parser = argparse.ArgumentParser(description="Generate synthetic async-planning DAG datasets.")
    parser.add_argument("--n-samples", type=int, default=200)
    parser.add_argument("--n-steps-range", type=int, nargs=2, default=[5, 9],
                        metavar=("MIN", "MAX"))
    parser.add_argument("--dag-depth-range", type=int, nargs=2, default=[3, 5],
                        metavar=("MIN", "MAX"))
    parser.add_argument("--time-range", type=int, nargs=2, default=[300, 3600],
                        metavar=("MIN_SEC", "MAX_SEC"),
                        help="Step duration range in seconds (default: 5min–1h)")
    parser.add_argument("--extra-edge-prob", type=float, default=0.15,
                        help="Probability of adding cross-layer shortcut edges (more paths)")
    parser.add_argument("--min-par-ratio", type=float, default=1.0,
                        help="Minimum parallelism ratio filter (1.0 = any)")
    parser.add_argument("--max-par-ratio", type=float, default=float("inf"),
                        help="Maximum parallelism ratio filter")
    parser.add_argument("--min-path-count", type=int, default=1,
                        help="Minimum path count filter")
    parser.add_argument("--seed", type=int, default=42)
    parser.add_argument("--output", type=str, default="data/synthetic/output.json")
    args = parser.parse_args()

    out_path = Path(args.output)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    samples = generate_dataset(
        n_samples=args.n_samples,
        n_steps_range=tuple(args.n_steps_range),
        dag_depth_range=tuple(args.dag_depth_range),
        time_range=tuple(args.time_range),
        extra_edge_prob=args.extra_edge_prob,
        min_par_ratio=args.min_par_ratio,
        max_par_ratio=args.max_par_ratio,
        min_path_count=args.min_path_count,
        seed=args.seed,
    )

    with out_path.open("w", encoding="utf-8") as f:
        json.dump(samples, f, ensure_ascii=False, indent=2)

    print(f"Saved to {out_path}")
    _print_stats(samples)

    # Print one example
    if samples:
        print("\n── Example sample ──")
        s = samples[0]
        print(s["question"])
        print(f"\nAnswer : {s['answer']}")
        print(f"Metrics: par_ratio={s['par_ratio']}, path_count={s['path_count']}, "
              f"dag_depth={s['dag_depth_actual']}, and_joins={s['and_join_count']}, "
              f"cp_frac={s['cp_node_frac']}")


if __name__ == "__main__":
    main()
