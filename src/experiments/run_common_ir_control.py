"""Common IR control experiment for AsyncPlan-XXL.

Pipelines:
  - NL -> Common IR -> CP-SAT
  - NL -> Common IR -> PDDL
  - Gold IR -> CP-SAT
  - Gold IR -> PDDL

The Common IR is intentionally solver-neutral: actions, durations, precedence
edges, goals, and objective.  It avoids CP-SAT-specific terms such as intervals
or start/end variables and avoids PDDL-specific predicates/effects.
"""
from __future__ import annotations

import argparse
import json
import re
from dataclasses import asdict, dataclass, field
from pathlib import Path
from typing import Any, Literal

from dotenv import load_dotenv

try:
    from tqdm import tqdm
except ImportError:  # pragma: no cover - fallback for minimal environments
    def tqdm(iterable, **_kwargs):
        return iterable

load_dotenv()

from src.evaluation.accuracy_metrics import exact_match, parse_gold_seconds
from src.method.cpsat_scheduler import ScheduleAction, ScheduleDependency, solve_schedule


def clean_question(question: str) -> str:
    unwanted = [
        "Let's think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>).",
        "Think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>)",
        "Let's think step by step.",
        "Think step by step.",
    ]
    for phrase in unwanted:
        question = question.replace(phrase, "")
    return question.strip()


@dataclass
class IRAction:
    id: str
    duration: int
    description: str | None = None


@dataclass
class IRDependency:
    before: str
    after: str


@dataclass
class AsyncTaskIR:
    actions: list[IRAction]
    precedence: list[IRDependency] = field(default_factory=list)
    goals: list[str] = field(default_factory=list)
    objective: str = "minimize_makespan"


SYSTEM_PROMPT = """\
You extract a solver-neutral Asynchronous Task IR from natural language.

The IR describes the task structure only.  It is not CP-SAT and not PDDL.
Do not mention interval variables, start variables, end variables, predicates,
preconditions, effects, domains, or problems.

Return ONLY valid JSON with this schema:
{
  "actions": [
    {"id": "step1", "duration": 120},
    {"id": "step2", "duration": 300}
  ],
  "precedence": [
    {"before": "step1", "after": "step2"}
  ],
  "objective": "minimize_makespan"
}

Rules:
1. Each numbered step becomes exactly one action.
2. Action ids must be exactly step1, step2, ..., stepN.
3. Durations must be integer seconds.
4. Add a precedence edge only when the problem states that one step must precede another.
5. Omit descriptions unless absolutely needed.
6. Omit goals; all actions are assumed to be required.
"""


USER_TEMPLATE = """\
Extract the Common IR for this asynchronous planning problem.

Problem:
{question}

The problem contains exactly {n_steps} numbered steps.
Use exactly these ids: {step_ids}
Return only JSON.
"""


def _strip_json_fence(text: str | None) -> str:
    text = (text or "").strip()
    if text.startswith("```"):
        parts = text.split("```")
        if len(parts) >= 2:
            text = parts[1].strip()
            if text.startswith("json"):
                text = text[4:].strip()
    return text.strip()


def _extract_json(text: str | None) -> dict[str, Any] | None:
    text = _strip_json_fence(text)
    try:
        obj = json.loads(text)
    except Exception:
        match = re.search(r"\{.*\}", text, re.DOTALL)
        if not match:
            return None
        try:
            obj = json.loads(match.group(0))
        except Exception:
            return None
    return obj if isinstance(obj, dict) else None


def _infer_n_steps(example: dict[str, Any], question: str) -> int:
    if example.get("n_steps") is not None:
        return int(example["n_steps"])
    nums = [int(m.group(1)) for m in re.finditer(r"\bStep\s+(\d+)\b", question, flags=re.I)]
    if nums:
        return max(nums)
    raise ValueError("could not infer n_steps")


def _normalize_ir(ir: AsyncTaskIR, n_steps: int) -> AsyncTaskIR:
    expected = [f"step{i}" for i in range(1, n_steps + 1)]
    by_id = {a.id: a for a in ir.actions}
    if set(by_id) != set(expected):
        raise ValueError(f"IR actions must be exactly {expected}, got {sorted(by_id)}")
    actions = []
    for action_id in expected:
        action = by_id[action_id]
        if int(action.duration) <= 0:
            raise ValueError(f"{action_id} has non-positive duration")
        actions.append(IRAction(id=action_id, duration=int(action.duration)))
    seen_edges: set[tuple[str, str]] = set()
    precedence: list[IRDependency] = []
    valid = set(expected)
    for dep in ir.precedence:
        before, after = str(dep.before), str(dep.after)
        if before not in valid or after not in valid:
            raise ValueError(f"dependency references unknown action: {before}->{after}")
        if before == after:
            raise ValueError(f"self dependency is not allowed: {before}")
        edge = (before, after)
        if edge not in seen_edges:
            precedence.append(IRDependency(before=before, after=after))
            seen_edges.add(edge)
    goals = [g for g in ir.goals if g in valid] or expected
    return AsyncTaskIR(actions=actions, precedence=precedence, goals=goals, objective="minimize_makespan")


def _parse_ir_response(text: str | None, n_steps: int) -> tuple[AsyncTaskIR | None, str]:
    obj = _extract_json(text)
    if obj is None:
        return None, "IR JSON parse failed"
    try:
        raw_actions = obj.get("actions", [])
        raw_precedence = obj.get("precedence", obj.get("dependencies", []))
        if not isinstance(raw_actions, list):
            raise ValueError("actions must be a list")
        if not isinstance(raw_precedence, list):
            raise ValueError("precedence must be a list")
        actions = [
            IRAction(
                id=str(raw.get("id", "")).strip(),
                duration=int(raw.get("duration")),
                description=raw.get("description"),
            )
            for raw in raw_actions
            if isinstance(raw, dict)
        ]
        precedence = []
        for raw in raw_precedence:
            if isinstance(raw, dict):
                before = raw.get("before", raw.get("predecessor", ""))
                after = raw.get("after", raw.get("successor", ""))
            elif isinstance(raw, (list, tuple)) and len(raw) == 2:
                before, after = raw
            else:
                raise ValueError(f"invalid precedence edge: {raw!r}")
            precedence.append(IRDependency(before=str(before).strip(), after=str(after).strip()))
        goals = [str(g).strip() for g in obj.get("goals", [])] if isinstance(obj.get("goals", []), list) else []
        ir = AsyncTaskIR(
            actions=actions,
            precedence=precedence,
            goals=goals,
            objective=str(obj.get("objective", "minimize_makespan")),
        )
        return _normalize_ir(ir, n_steps), ""
    except Exception as exc:
        return None, f"IR validation failed: {exc}"


def _gold_ir(example: dict[str, Any], n_steps: int) -> AsyncTaskIR:
    graph = example.get("graph")
    if not isinstance(graph, dict):
        raise ValueError("gold IR requires graph field")
    raw_step_to_node = graph.get("step_to_node") or {str(i + 1): i for i in range(n_steps)}
    step_to_node = {int(step): int(node) for step, node in raw_step_to_node.items()}
    node_to_step = {node: step for step, node in step_to_node.items()}
    durations = graph["durations"]
    actions = [
        IRAction(id=f"step{step}", duration=int(durations[step_to_node[step]]))
        for step in range(1, n_steps + 1)
    ]
    precedence = [
        IRDependency(before=f"step{node_to_step[int(u)]}", after=f"step{node_to_step[int(v)]}")
        for u, v in graph["edges"]
    ]
    return _normalize_ir(
        AsyncTaskIR(
            actions=actions,
            precedence=precedence,
            goals=[f"step{i}" for i in range(1, n_steps + 1)],
            objective="minimize_makespan",
        ),
        n_steps,
    )


def _ir_to_cpsat(ir: AsyncTaskIR) -> tuple[list[ScheduleAction], list[ScheduleDependency]]:
    actions = [
        ScheduleAction(id=a.id, action="task", item=a.id, duration=int(a.duration))
        for a in ir.actions
    ]
    dependencies = [
        ScheduleDependency(before=d.before, after=d.after)
        for d in ir.precedence
    ]
    return actions, dependencies


def _ir_to_pddl(ir: AsyncTaskIR) -> tuple[str, str]:
    action_ids = [a.id for a in ir.actions]
    action_by_id = {a.id: a for a in ir.actions}
    incoming: dict[str, list[str]] = {aid: [] for aid in action_ids}
    for dep in ir.precedence:
        incoming[dep.after].append(dep.before)

    predicates = ["(ready)"] + [f"(done_{aid})" for aid in action_ids]
    action_blocks = []
    for aid in action_ids:
        action = action_by_id[aid]
        conditions = ["(at start (ready))"] + [
            f"(at start (done_{pred}))" for pred in sorted(incoming[aid])
        ]
        action_blocks.append(
            "\n".join(
                [
                    f"  (:durative-action {aid}",
                    "    :parameters ()",
                    f"    :duration (= ?duration {int(action.duration)})",
                    f"    :condition (and {' '.join(conditions)})",
                    f"    :effect (and (at end (done_{aid})))",
                    "  )",
                ]
            )
        )

    domain = "\n".join(
        [
            "(define (domain async-task-ir)",
            "  (:requirements :durative-actions)",
            f"  (:predicates {' '.join(predicates)})",
            *action_blocks,
            ")",
        ]
    )
    goals = " ".join(f"(done_{aid})" for aid in action_ids)
    problem = "\n".join(
        [
            "(define (problem async-task-ir-problem)",
            "  (:domain async-task-ir)",
            "  (:init (ready))",
            f"  (:goal (and {goals}))",
            ")",
        ]
    )
    return domain, problem


def _load_dataset(path: Path, max_examples: int) -> list[dict[str, Any]]:
    data = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(data, list):
        raise ValueError(f"{path} must contain a JSON list")
    if max_examples and max_examples > 0:
        return data[:max_examples]
    return data


def _collect_ir(
    records: list[dict[str, Any]],
    *,
    ir_source: Literal["nl", "gold"],
    llm_client: Any | None,
) -> tuple[list[AsyncTaskIR | None], list[str], list[str | None], list[list[dict] | None]]:
    irs: list[AsyncTaskIR | None] = [None] * len(records)
    errors: list[str] = [""] * len(records)
    responses: list[str | None] = [None] * len(records)
    histories: list[list[dict] | None] = [None] * len(records)

    if ir_source == "gold":
        for i, ex in enumerate(records):
            question = clean_question(ex["question"])
            n_steps = _infer_n_steps(ex, question)
            try:
                irs[i] = _gold_ir(ex, n_steps)
            except Exception as exc:
                errors[i] = str(exc)
        return irs, errors, responses, histories

    assert llm_client is not None
    messages = []
    n_steps_list = []
    for ex in records:
        question = clean_question(ex["question"])
        n_steps = _infer_n_steps(ex, question)
        n_steps_list.append(n_steps)
        step_ids = ", ".join(f"step{k}" for k in range(1, n_steps + 1))
        messages.append(
            [
                {"role": "system", "content": SYSTEM_PROMPT},
                {
                    "role": "user",
                    "content": USER_TEMPLATE.format(
                        question=question,
                        n_steps=n_steps,
                        step_ids=step_ids,
                    ),
                },
            ]
        )
    raw = llm_client.batch_chat(messages, desc="Extracting Common IR")
    for i, resp in enumerate(raw):
        responses[i] = resp
        histories[i] = messages[i] + ([{"role": "assistant", "content": resp}] if resp else [])
        irs[i], errors[i] = _parse_ir_response(resp, n_steps_list[i])
    return irs, errors, responses, histories


def _solve_cpsat(ir: AsyncTaskIR, timeout: float) -> tuple[int | None, Any, str]:
    actions, dependencies = _ir_to_cpsat(ir)
    result = solve_schedule(actions, dependencies, timeout=timeout)
    if result.error or result.makespan is None:
        return None, result, result.error or "CP-SAT solver failed"
    return int(round(result.makespan)), result, ""


def _save_jsonl(path: Path, records: list[dict[str, Any]]) -> None:
    with path.open("w", encoding="utf-8") as f:
        for rec in records:
            f.write(json.dumps(rec, indent=2, ensure_ascii=False) + "\n")


def run(args: argparse.Namespace) -> None:
    data_path = Path(args.data_path)
    records = _load_dataset(data_path, args.max_examples)
    out_root = Path(args.out)
    out_root.mkdir(parents=True, exist_ok=True)

    llm_client = None
    if args.ir_source == "nl":
        from src.experiments.utils import build_llm_client

        llm_client = build_llm_client(
            args.model_name,
            args.temperature,
            args.max_tokens,
            num_workers=args.num_workers,
            strict_json=True,
        )

    irs, ir_errors, llm_responses, histories = _collect_ir(
        records,
        ir_source=args.ir_source,
        llm_client=llm_client,
    )

    targets = ["cpsat", "pddl"] if args.target == "both" else [args.target]
    for target in targets:
        target_dir = out_root / args.ir_source / target
        target_dir.mkdir(parents=True, exist_ok=True)
        result_records: list[dict[str, Any]] = []

        if target == "pddl":
            from src.method.pddl_solver import batch_solve

            pddl_inputs: list[tuple[str, str]] = []
            pddl_indices: list[int] = []
            compiled: dict[int, tuple[str, str]] = {}
            for i, ir in enumerate(irs):
                if ir is None:
                    continue
                domain, problem = _ir_to_pddl(ir)
                compiled[i] = (domain, problem)
                pddl_inputs.append((domain, problem))
                pddl_indices.append(i)
            pddl_outputs = batch_solve(
                pddl_inputs,
                num_workers=args.solver_workers,
                timeout=args.timeout,
                max_retries=args.solver_retries,
                desc=f"Solving {args.ir_source} IR -> PDDL",
                solver=args.pddl_solver,
            )
            pddl_by_idx: dict[int, Any] = dict(zip(pddl_indices, pddl_outputs))

        for i, ex in enumerate(tqdm(records, desc=f"Assembling {args.ir_source}->{target}")):
            gold_seconds = parse_gold_seconds(ex["answer"])
            pred_seconds = None
            solver_error = ""
            solver_status = None
            plan = None
            domain_pddl = None
            problem_pddl = None

            ir = irs[i]
            if ir is None:
                error_type = "ir_error"
                error = ir_errors[i] or "IR unavailable"
            elif target == "cpsat":
                pred_seconds, solver_result, solver_error = _solve_cpsat(ir, args.timeout)
                solver_status = getattr(solver_result, "status", None)
                plan = getattr(solver_result, "plan", None)
                error_type = "solver_error" if solver_error else ""
                error = solver_error
            else:
                domain_pddl, problem_pddl = compiled.get(i, (None, None))
                sr = pddl_by_idx.get(i)
                if sr is None:
                    error_type = "solver_error"
                    error = "PDDL solver not run"
                elif sr.error:
                    error_type = "solver_error"
                    error = sr.error
                else:
                    pred_seconds = int(round(sr.makespan_seconds))
                    plan = sr.plan
                    error_type = ""
                    error = ""

            correct = pred_seconds is not None and exact_match(pred_seconds, gold_seconds)
            if pred_seconds is not None and not correct and not error_type:
                error_type = "semantic_error"
                error = f"wrong makespan: got {pred_seconds}s"

            rec = {
                "id": ex.get("id", i),
                "data_path": str(data_path),
                "ir_source": args.ir_source,
                "target": target,
                "question": ex.get("question"),
                "gold_answer": ex.get("answer"),
                "gold_seconds": gold_seconds,
                "pred_seconds": pred_seconds,
                "correct": correct,
                "error_type": error_type,
                "error": error,
                "ir": asdict(ir) if ir is not None else None,
                "llm_response": llm_responses[i],
                "chat_history": histories[i],
                "solver_status": solver_status,
                "plan": plan,
                "domain_pddl": domain_pddl,
                "problem_pddl": problem_pddl,
            }
            result_records.append(rec)

        correct = sum(1 for r in result_records if r["correct"])
        n = len(result_records)
        summary = {
            "benchmark": "AsyncPlan-XXL",
            "data_path": str(data_path),
            "method": f"{args.ir_source}_ir_to_{target}",
            "model_name": args.model_name if args.ir_source == "nl" else None,
            "ir_source": args.ir_source,
            "target": target,
            "accuracy": correct / n if n else 0.0,
            "num_correct": correct,
            "num_data_points": n,
            "num_ir_errors": sum(1 for r in result_records if r["error_type"] == "ir_error"),
            "num_solver_errors": sum(1 for r in result_records if r["error_type"] == "solver_error"),
            "num_semantic_errors": sum(1 for r in result_records if r["error_type"] == "semantic_error"),
        }
        _save_jsonl(target_dir / "full_results.jsonl", result_records)
        (target_dir / "summary_results.json").write_text(
            json.dumps(summary, indent=2, ensure_ascii=False),
            encoding="utf-8",
        )
        print(
            f"{args.ir_source} IR -> {target}: "
            f"{summary['accuracy']:.4f} ({correct}/{n}) saved to {target_dir}"
        )


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Run Common IR control experiments on AsyncPlan-XXL.")
    parser.add_argument("--data-path", required=True)
    parser.add_argument("--out", required=True)
    parser.add_argument("--ir-source", choices=["nl", "gold"], required=True)
    parser.add_argument("--target", choices=["cpsat", "pddl", "both"], default="both")
    parser.add_argument("--model-name", default="openrouter/gemini-3-flash")
    parser.add_argument("--temperature", type=float, default=0.0)
    parser.add_argument("--max-tokens", type=int, default=4096)
    parser.add_argument("--max-examples", type=int, default=0, help="0 means all examples")
    parser.add_argument("--num-workers", type=int, default=8)
    parser.add_argument("--solver-workers", type=int, default=8)
    parser.add_argument("--timeout", type=float, default=120.0)
    parser.add_argument("--solver-retries", type=int, default=1)
    parser.add_argument("--pddl-solver", default="optic")
    return parser.parse_args()


if __name__ == "__main__":
    run(parse_args())
