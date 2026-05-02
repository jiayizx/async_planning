"""
Async Planning DAG Generator.

Tasks are sampled from src/gen_data/tasks.json.
Outputs structure only (steps, dependencies, task title) — no durations or step names.
The LLM (rewrite_nl) generates reasonable step names and durations in natural language.

Hyperparameters
───────────────
  num_nodes        : number of task nodes
  edge_probability : base probability for dependency edges;
                     gap=1 → p,  gap 2–3 → 0.5p,  gap>3 → long_range_prob
  min_width        : minimum level-based parallelism; rejects trivially sequential DAGs
  long_range_prob  : probability of edges spanning 4+ topological ranks

Output format (structure only — LLM fills step names and durations)
──────────────────────────────────────────────────────────────────
  To [task], here are the steps needed.
  Step 1.
  Step 2.
  ...
  These ordering constraints need to be obeyed:
  Step X must precede Step Y.
  ...
  Question: What is the shortest possible time to [task]?

Usage
-----
  python -m src.gen_data.gen_dag --num-nodes 5 10 15 20
  python -m src.gen_data.rewrite_nl --input data/async_planning/nodes10_n50_s42.json \\
      --model openai/gpt-4.1-mini
"""

from __future__ import annotations

import argparse
import json
import random
from pathlib import Path

from src.gen_data.tasks import sample_task
from src.gen_data.utils import DiGraph, compute_metrics


# ═══════════════════════════════════════════════════════════════════════════════
# AsyncDAGGenerator
# ═══════════════════════════════════════════════════════════════════════════════

class AsyncDAGGenerator:
    """
    Args
    ----
    num_nodes        : Number of tasks.
    edge_probability : Base probability of a dependency edge between
                       topologically adjacent nodes (gap = 1).
                       Decays with rank distance:
                         gap = 1  → p
                         gap 2–3  → p * 0.5
                         gap > 3  → long_range_prob
    min_width        : Minimum level-based DAG width; rejects trivially
                       sequential graphs (width < min_width).
    long_range_prob  : Probability of edges that skip 4+ topological ranks.
    rng              : Optional seeded random.Random instance.
    """

    def __init__(
        self,
        num_nodes: int = 8,
        edge_probability: float = 0.3,
        min_width: int = 2,
        long_range_prob: float = 0.0,
        rng: random.Random | None = None,
    ):
        self.num_nodes        = num_nodes
        self.edge_probability = edge_probability
        self.min_width        = min_width
        self.long_range_prob  = long_range_prob
        self.rng              = rng or random.Random()

    def _build_dag(self) -> DiGraph:
        G = DiGraph()
        for i in range(self.num_nodes):
            G.add_node(i, duration=1)  # uniform weight for CPM; output has no durations

        # Random topological ordering so node IDs don't reveal structure
        topo_order = list(range(self.num_nodes))
        self.rng.shuffle(topo_order)
        rank = {node: r for r, node in enumerate(topo_order)}

        # Edges only from lower to higher rank → acyclic by construction
        for u in range(self.num_nodes):
            for v in range(self.num_nodes):
                if u == v or rank[u] >= rank[v]:
                    continue
                gap = rank[v] - rank[u]
                if gap == 1:
                    p = self.edge_probability
                elif gap <= 3:
                    p = self.edge_probability * 0.5
                else:
                    p = self.long_range_prob
                if self.rng.random() < p:
                    G.add_edge(u, v)

        # Fix isolated nodes by linking to their immediate topo neighbours
        for node in G.nodes():
            if G.in_degree(node) == 0 and G.out_degree(node) == 0:
                r = rank[node]
                if r > 0:
                    G.add_edge(topo_order[r - 1], node)
                if r < len(topo_order) - 1:
                    G.add_edge(node, topo_order[r + 1])

        return G

    def _critical_path(self, G: DiGraph) -> tuple[int, list[int], dict[int, int]]:
        """CPM: returns (makespan, path_nodes, earliest_finish_per_node)."""
        ef: dict[int, int]     = {}
        cp_pred: dict[int, int | None] = {}
        for node in G.topological_sort():
            dur   = G.get_attr(node, "duration")
            preds = G.predecessors(node)
            if not preds:
                ef[node], cp_pred[node] = dur, None
            else:
                best = max(preds, key=lambda p: ef[p])
                ef[node], cp_pred[node] = ef[best] + dur, best

        sinks = [n for n in G.nodes() if G.out_degree(n) == 0]
        end   = max(sinks, key=lambda n: ef[n])

        path, cur = [], end
        while cur is not None:
            path.append(cur)
            cur = cp_pred[cur]
        path.reverse()

        return ef[end], path, ef

    def generate(self, max_attempts: int = 200) -> tuple[DiGraph, int, list[int], dict[int, int]]:
        """Generate one valid DAG that satisfies all constraints."""
        for _ in range(max_attempts):
            G = self._build_dag()
            if not G.is_dag():
                continue
            if G.width() < self.min_width:
                continue
            makespan, cp, ef = self._critical_path(G)
            if len(cp) < 2:
                continue
            return G, makespan, cp, ef
        raise RuntimeError(
            f"Failed to generate valid DAG after {max_attempts} attempts "
            f"(num_nodes={self.num_nodes}, edge_prob={self.edge_probability}, "
            f"min_width={self.min_width})"
        )


# ═══════════════════════════════════════════════════════════════════════════════
# NL formatting  (AsyncHow format — compatible with rewrite_nl.py)
# ═══════════════════════════════════════════════════════════════════════════════

def format_question(
    G: DiGraph, task_title: str, rng: random.Random | None = None
) -> tuple[str, dict[int, int]]:
    """Output structure only — steps and dependencies. LLM adds names and durations.
    Returns (question_text, step_to_node) where step_to_node maps step number (1-indexed) to node id."""
    rng = rng or random.Random()
    n   = G.num_nodes()

    display_order = list(range(n))
    rng.shuffle(display_order)
    step_num = {node: i + 1 for i, node in enumerate(display_order)}
    step_to_node = {step_num[node]: node for node in G.nodes()}

    lines = [f"To {task_title}, here are the steps needed."]
    for node in display_order:
        lines.append(f"Step {step_num[node]}.")

    constraints = sorted(
        {f"Step {step_num[u]} must precede Step {step_num[v]}." for u, v in G.edges()},
        key=lambda s: (int(s.split()[1]), int(s.split()[5].rstrip("."))),
    )
    if constraints:
        lines += ["", "These ordering constraints need to be obeyed when executing above steps:"]
        lines += constraints

    lines += [
        "",
        f"Question: Assume that you need to execute all the steps to complete "
        f"the task and that infinite resources are available. What is the "
        f"shortest possible time to {task_title}?",
    ]
    return "\n".join(lines), step_to_node


def format_answer(critical_path_length: int) -> str:
    """Answer when durations are uniform (1): critical path length in hops."""
    return str(critical_path_length)


# ═══════════════════════════════════════════════════════════════════════════════
# Sample generation
# ═══════════════════════════════════════════════════════════════════════════════

def generate_samples(
    n_samples: int,
    num_nodes: int,
    *,
    edge_probs: list[float] | float = 0.3,
    min_width: int = 2,
    long_range_prob: float = 0.05,
    seed: int = 42,
) -> list[dict]:
    """
    Generate n_samples async-planning problems. Tasks from tasks.json.
    Output is structure only; LLM adds step names and durations.
    """
    rng             = random.Random(seed)
    edge_prob_list  = edge_probs if isinstance(edge_probs, list) else [edge_probs]

    samples: list[dict] = []
    while len(samples) < n_samples:
        task_title = sample_task(rng)
        ep         = rng.choice(edge_prob_list)

        gen = AsyncDAGGenerator(
            num_nodes        = num_nodes,
            edge_probability = ep,
            min_width        = min_width,
            long_range_prob  = long_range_prob,
            rng              = random.Random(rng.randint(0, 2**31)),
        )
        try:
            G, makespan, _cp, _ef = gen.generate()
        except RuntimeError:
            continue

        metrics = compute_metrics({
            "n_steps":   num_nodes,
            "durations": [1] * num_nodes,
            "edges":     G.edges(),
        })

        question_text, step_to_node = format_question(G, task_title, rng=rng)
        samples.append({
            "id":               len(samples) + 1,
            "question":        question_text,
            "answer":          format_answer(makespan),  # placeholder until rewrite adds durations
            "n_steps":         num_nodes,
            "n_edges":         metrics["n_edges"],
            "edge_probability": ep,
            "min_width":       min_width,
            "long_range_prob": long_range_prob,
            "critical_path_length": makespan,
            "task_title":      task_title,
            "par_ratio":       metrics["par_ratio"],
            "path_count":      metrics["path_count"],
            "dag_depth_actual": metrics["dag_depth_actual"],
            "and_join_count":  metrics["and_join_count"],
            "cp_node_frac":    metrics["cp_node_frac"],
            "edge_density":    metrics["edge_density"],
            "graph": {
                "edges":       G.edges(),
                "step_to_node": step_to_node,  # step number (1-indexed) -> node id
            },
        })

    return samples


# ═══════════════════════════════════════════════════════════════════════════════
# CLI
# ═══════════════════════════════════════════════════════════════════════════════

def _print_stats(samples: list[dict]) -> None:
    import statistics as st
    from collections import Counter

    if not samples:
        print("  (no samples)")
        return

    def stat(key: str) -> str:
        vals = [s[key] for s in samples]
        return (f"mean={st.mean(vals):.3f}  median={st.median(vals):.3f}"
                f"  min={min(vals):.3f}  max={max(vals):.3f}")

    print(f"  par_ratio      : {stat('par_ratio')}")
    print(f"  path_count     : {stat('path_count')}")
    print(f"  dag_depth      : {stat('dag_depth_actual')}")
    print(f"  cp_node_frac   : {stat('cp_node_frac')}")
    print(f"  edge_density   : {stat('edge_density')}")

    tasks = Counter(s["task_title"] for s in samples)
    print(f"  task dist      : {len(tasks)} unique tasks")


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Generate synthetic async-planning datasets."
    )

    # ── Core ──────────────────────────────────────────────────────────────────
    parser.add_argument(
        "--num-nodes", type=int, nargs="+", default=[5, 10, 15, 20],
        help="Node counts to generate (one output file per count).",
    )
    parser.add_argument(
        "--samples-per-size", type=int, default=50,
        help="Samples per node-count.",
    )
    parser.add_argument("--output-dir", type=str, default="data/async_planning")
    parser.add_argument("--seed",       type=int, default=42)
    parser.add_argument(
        "--combined", action="store_true",
        help="Also write a combined JSON across all node-counts.",
    )

    # ── Generator hyperparameters ─────────────────────────────────────────────
    parser.add_argument(
        "--edge-probs", type=float, nargs="+", default=[0.3],
        help=(
            "Base edge-probability list (one value sampled per DAG, like NLGraph p_list). "
            "Decays with rank gap: gap=1→p, gap 2-3→0.5p, gap>3→long-range-prob."
        ),
    )
    parser.add_argument(
        "--min-width", type=int, default=2,
        help="Minimum level-based DAG width; rejects trivially sequential graphs.",
    )
    parser.add_argument(
        "--long-range-prob", type=float, default=0.05,
        help="Probability for edges spanning 4+ topological ranks.",
    )

    args = parser.parse_args()

    out_dir = Path(args.output_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    def _save(samples: list[dict], fpath: Path) -> None:
        fpath.write_text(json.dumps(samples, indent=2, ensure_ascii=False), encoding="utf-8")
        print(f"  Saved → {fpath}  ({len(samples)} samples)")

    def _show_example(samples: list[dict]) -> None:
        if not samples:
            return
        s = samples[0]
        print(f"\n  ── Example (par_ratio={s['par_ratio']:.2f}) ──")
        for line in s["question"].split("\n")[:8]:
            print(f"  {line}")
        print(f"  ...\n  Answer: {s['answer']}")

    all_samples: list[dict] = []

    for num_nodes in args.num_nodes:
        print(f"\n{'='*60}\n  num_nodes = {num_nodes}\n{'='*60}")
        samples = generate_samples(
            n_samples       = args.samples_per_size,
            num_nodes       = num_nodes,
            edge_probs      = args.edge_probs,
            min_width       = args.min_width,
            long_range_prob = args.long_range_prob,
            seed            = args.seed + num_nodes,
        )
        _print_stats(samples)
        fname = f"nodes{num_nodes}_n{len(samples)}_s{args.seed}.json"
        _save(samples, out_dir / fname)
        _show_example(samples)
        all_samples.extend(samples)

    if args.combined and len(args.num_nodes) > 1:
        combined_path = out_dir / f"combined_n{len(all_samples)}_s{args.seed}.json"
        combined_path.write_text(
            json.dumps(all_samples, indent=2, ensure_ascii=False), encoding="utf-8"
        )
        print(f"\nCombined → {combined_path}")

    print(f"\n{'='*60}")
    print(f"Total: {len(all_samples)} samples across {len(args.num_nodes)} node-counts")
    print(f"Output dir: {out_dir}\n{'='*60}")


if __name__ == "__main__":
    main()
