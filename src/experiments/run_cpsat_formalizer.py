"""Run LLM-as-Formalizer on async planning data with CP-SAT.

Pipeline per example:
  1. LLM translates NL planning problem into a scheduling JSON spec
  2. CP-SAT solves the precedence-constrained schedule
  3. Compare predicted makespan with the gold answer
"""
from __future__ import annotations

import argparse
import json
import os
import re
from pathlib import Path

try:
    from tqdm import tqdm
except ImportError:  # pragma: no cover - fallback for minimal environments
    def tqdm(iterable, **_kwargs):
        return iterable

from dotenv import load_dotenv

load_dotenv()

from src.evaluation.accuracy_metrics import exact_match, parse_gold_seconds
from src.evaluation.plan_validity import check_plan_validity
from src.experiments.utils import build_llm_client, clean_question
from src.llms.base import BaseLLM
from src.method.cpsat_scheduler import parse_schedule_spec, solve_schedule


SYSTEM_PROMPT = """\
You are an expert scheduling formalizer.

Translate each natural-language async planning problem into a JSON scheduling
specification for a CP-SAT solver.

Rules:
1. Each numbered step in the problem becomes exactly one action.
2. Use action="task" for every action.
3. Use the exact ids step1, step2, ..., stepN based on the step numbers in the
   problem text.
4. Use item values identical to the action ids: step1, step2, ..., stepN.
5. Duration must be the integer number of seconds for that step.
6. Add a dependency only when the problem states that one step must happen
   before another. Do not add extra dependencies.
7. Do not add stations, robots, or resources.
8. Output only valid JSON in this exact shape:
{
  "actions": [
    {"id": "step1", "action": "task", "item": "step1", "duration": 120},
    {"id": "step2", "action": "task", "item": "step2", "duration": 300}
  ],
  "dependencies": [
    {"before": "step1", "after": "step2"}
  ]
}
9. Before finishing, verify that:
   - every step from 1..N appears exactly once in actions
   - every dependency endpoint is an existing action id
   - durations are integer seconds
   - there are no duplicate actions
"""

USER_TEMPLATE = """\
Translate this planning problem into a CP-SAT scheduling JSON spec.

Problem:
{question}

The problem contains exactly {n_steps} numbered steps. Your action ids must be:
{step_ids}

Return only the JSON object.
"""

SYNTAX_RETRY_TEMPLATE = """\
Your previous scheduling JSON could not be parsed or validated.

Error:
{error}

Please return a corrected JSON object only. Remember:
- exactly one action per numbered step
- action ids must be step1..stepN
- action must always be "task"
- durations must be integer seconds
- dependencies may only reference existing action ids
"""

SEMANTIC_RETRY_TEMPLATE = """\
Your previous scheduling JSON produced the wrong makespan.

Solver result:
- predicted makespan: {pred_seconds} seconds

Please correct the durations and/or dependencies and return only the JSON object.
Do not add commentary.
"""


def _strip_json_fence(text: str) -> str:
    text = (text or "").strip()
    if text.startswith("```"):
        parts = text.split("```")
        if len(parts) >= 2:
            text = parts[1]
            if text.lstrip().startswith("json"):
                text = text.lstrip()[4:]
    return text.strip()


def _parse_llm_json(text: str) -> dict | None:
    text = _strip_json_fence(text)
    try:
        return json.loads(text)
    except Exception:
        pass

    match = re.search(r"\{.*\}", text, re.DOTALL)
    if not match:
        return None
    try:
        return json.loads(match.group(0))
    except Exception:
        return None


def _build_messages(question: str, n_steps: int) -> list[dict[str, str]]:
    step_ids = ", ".join(f"step{i}" for i in range(1, n_steps + 1))
    return [
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


def _infer_n_steps(example: dict, question: str) -> int:
    if example.get("n_steps") is not None:
        return int(example["n_steps"])

    step_nums = [
        int(m.group(1))
        for m in re.finditer(r"(?m)^\s*(\d+)[\).]\s+", question)
    ]
    if step_nums:
        return max(step_nums)

    step_mentions = [
        int(m.group(1))
        for m in re.finditer(r"\bstep\s*(\d+)\b", question, flags=re.IGNORECASE)
    ]
    if step_mentions:
        return max(step_mentions)

    raise ValueError("could not infer number of steps from example")


def _validate_schedule_spec(spec: dict, n_steps: int) -> tuple[list, list]:
    expected_ids = [f"step{i}" for i in range(1, n_steps + 1)]
    actions, dependencies = parse_schedule_spec(
        spec,
        valid_items=set(expected_ids),
    )

    action_ids = [a.id for a in actions]
    if action_ids != expected_ids:
        raise ValueError(
            f"actions must appear exactly once in step order {expected_ids}, got {action_ids}"
        )
    for action in actions:
        if action.action != "task":
            raise ValueError(f"{action.id} must use action='task'")
        if action.item != action.id:
            raise ValueError(f"{action.id} must use item='{action.id}'")
        if action.station is not None:
            raise ValueError(f"{action.id} must not specify a station")
    return actions, dependencies


def run_task(llm_client: BaseLLM, eval_dataset, args: argparse.Namespace):
    questions: list[str] = []
    gold_data: list[dict] = []

    for idx, example in enumerate(tqdm(eval_dataset, desc="Collecting questions")):
        if "nl_rewrite_failed" in example and example["nl_rewrite_failed"]:
            continue

        question = clean_question(example["question"])
        gold_seconds = parse_gold_seconds(example["answer"])
        graph = example.get("graph")
        try:
            n_steps = _infer_n_steps(example, question)
        except Exception:
            continue

        questions.append(question)
        gold_data.append(
            {
                "idx": idx,
                "question": example["question"],
                "gold_answer": example["answer"],
                "gold_seconds": gold_seconds,
                "graph": graph,
                "n_steps": n_steps,
            }
        )
        if idx + 1 >= args.max_examples:
            break

    n = len(questions)

    histories = [
        _build_messages(question, gold_data[i]["n_steps"])
        for i, question in enumerate(questions)
    ]
    base_lengths = [len(history) for history in histories]

    raw_responses: list[str | None] = [None] * n
    schedule_specs: list[dict | None] = [None] * n
    schedules: list[object | None] = [None] * n
    errors: list[str] = ["not started"] * n
    error_types: list[str] = ["not_started"] * n

    def _attempt(indices: list[int], desc: str) -> None:
        if args.history_mode == "single-turn":
            for i in indices:
                h = histories[i]
                if len(h) > base_lengths[i] + 2:
                    histories[i] = h[: base_lengths[i]] + h[-2:]

        msgs = [histories[i] for i in indices]
        responses = llm_client.batch_chat(msgs, desc=desc)

        for i, resp in zip(indices, responses):
            raw_responses[i] = resp
            if resp:
                histories[i].append({"role": "assistant", "content": resp})

        for i in indices:
            spec = _parse_llm_json(raw_responses[i] or "")
            if spec is None:
                errors[i] = "schedule JSON parse failed"
                error_types[i] = "syntax_error"
                histories[i].append(
                    {
                        "role": "user",
                        "content": SYNTAX_RETRY_TEMPLATE.format(
                            error="Your response could not be parsed as JSON."
                        ),
                    }
                )
                continue

            try:
                actions, dependencies = _validate_schedule_spec(spec, gold_data[i]["n_steps"])
            except Exception as exc:
                errors[i] = str(exc)
                error_types[i] = "syntax_error"
                histories[i].append(
                    {
                        "role": "user",
                        "content": SYNTAX_RETRY_TEMPLATE.format(error=str(exc)),
                    }
                )
                continue

            schedule_specs[i] = spec
            sched = solve_schedule(actions, dependencies, timeout=args.timeout)
            schedules[i] = sched

            if sched.error or sched.makespan is None:
                errors[i] = sched.error or "CP-SAT solver failed"
                error_types[i] = "solver_error"
                histories[i].append(
                    {
                        "role": "user",
                        "content": SYNTAX_RETRY_TEMPLATE.format(error=errors[i]),
                    }
                )
                continue

            pred_seconds = int(round(sched.makespan))
            gold_seconds = gold_data[i]["gold_seconds"]
            if gold_seconds is not None and not exact_match(pred_seconds, gold_seconds):
                errors[i] = f"wrong makespan: got {pred_seconds}s"
                error_types[i] = "semantic_error"
                histories[i].append(
                    {
                        "role": "user",
                        "content": SEMANTIC_RETRY_TEMPLATE.format(pred_seconds=pred_seconds),
                    }
                )
            else:
                errors[i] = ""
                error_types[i] = ""

    _attempt(list(range(n)), desc="LLM translation (NL→schedule JSON)")

    for retry in range(args.llm_retries):
        failed = [i for i in range(n) if errors[i]]
        if not failed:
            break
        n_syntax = sum(1 for t in error_types if t == "syntax_error")
        n_semantic = sum(1 for t in error_types if t == "semantic_error")
        n_solver = sum(1 for t in error_types if t == "solver_error")
        print(
            f"\nRetry {retry + 1}/{args.llm_retries}: "
            f"{len(failed)} failed ({n_syntax} syntax, {n_semantic} semantic, {n_solver} solver)"
        )
        _attempt(failed, desc=f"LLM retry {retry + 1}")

    save_path = Path(args.save_path)
    save_path.mkdir(parents=True, exist_ok=True)
    schedule_dir = save_path / "schedules"
    schedule_dir.mkdir(parents=True, exist_ok=True)
    jsonl_path = save_path / "full_results.jsonl"

    records: list[dict] = []
    with jsonl_path.open("w", encoding="utf-8") as jsonl_f:
        for i, gold in enumerate(gold_data):
            sched = schedules[i]
            graph = gold["graph"]
            pred_seconds = None
            plan = None
            plan_valid = None
            plan_validity_error = None

            if sched is not None and getattr(sched, "makespan", None) is not None:
                pred_seconds = int(round(sched.makespan))
                plan = [(start, action, dur) for start, action, dur in sched.plan]
                if graph:
                    plan_valid, plan_validity_error = check_plan_validity(
                        sched.plan,
                        graph,
                        step_actions=[f"step{k}" for k in range(1, gold["n_steps"] + 1)],
                    )

            rec = {
                "question": gold["question"],
                "gold_answer": gold["gold_answer"],
                "gold_seconds": gold["gold_seconds"],
                "pred_seconds": pred_seconds,
                "correct": pred_seconds is not None and exact_match(pred_seconds, gold["gold_seconds"]),
                "error_type": error_types[i] if errors[i] else "",
                "error": errors[i] if errors[i] else "",
                "plan_valid": plan_valid,
                "plan_validity_error": plan_validity_error,
                "plan": plan,
                "llm_response": raw_responses[i],
                "schedule_json": schedule_specs[i],
                "solver": "cp-sat",
                "solver_status": getattr(sched, "status", None) if sched else None,
                "solver_optimal": getattr(sched, "optimal", False) if sched else False,
                "chat_history": histories[i],
            }
            records.append(rec)
            _save_example(schedule_dir, i, rec)
            jsonl_f.write(json.dumps(rec, indent=2, ensure_ascii=False) + "\n")
            jsonl_f.flush()

    _save_summary(records, args)
    return records


def _save_example(schedule_dir: Path, idx: int, rec: dict) -> None:
    example_dir = schedule_dir / f"example_{idx:04d}"
    example_dir.mkdir(exist_ok=True)
    if rec.get("schedule_json"):
        with (example_dir / "schedule.json").open("w", encoding="utf-8") as f:
            json.dump(rec["schedule_json"], f, indent=2, ensure_ascii=False)
    if rec.get("plan"):
        with (example_dir / "plan.txt").open("w", encoding="utf-8") as f:
            for start, action, dur in rec["plan"]:
                f.write(f"{start:.3f}: ({action}) [{dur:.3f}]\n")
    if rec.get("chat_history"):
        with (example_dir / "chat_history.json").open("w", encoding="utf-8") as f:
            json.dump(rec["chat_history"], f, indent=2, ensure_ascii=False)


def _save_summary(records: list[dict], args: argparse.Namespace) -> None:
    save_path = Path(args.save_path)
    correct = sum(1 for r in records if r["correct"])
    syntax_errors = sum(1 for r in records if r.get("error_type") == "syntax_error")
    semantic_errors = sum(1 for r in records if r.get("error_type") == "semantic_error")
    solver_errors = sum(1 for r in records if r.get("error_type") == "solver_error")
    accuracy = correct / len(records) if records else 0.0

    solved_with_graph = sum(
        1 for r in records if not r.get("error") and r.get("plan_valid") is not None
    )
    plan_valid_count = sum(1 for r in records if r.get("plan_valid") is True)
    plan_valid_rate = plan_valid_count / solved_with_graph if solved_with_graph else None

    metrics = {
        "benchmark": args.benchmark_name,
        "model_name": args.model_name,
        "solver": "cp-sat",
        "accuracy": accuracy,
        "num_correct": correct,
        "num_syntax_errors": syntax_errors,
        "num_semantic_errors": semantic_errors,
        "num_solver_errors": solver_errors,
        "num_data_points": len(records),
        "plan_valid_rate": plan_valid_rate,
        "num_plan_valid": plan_valid_count if solved_with_graph else None,
    }
    with (save_path / "summary_results.json").open("w", encoding="utf-8") as f:
        json.dump(metrics, f, indent=2)

    print(f"\nResults saved to {save_path}")
    print(f"Accuracy       : {accuracy:.4f} ({correct}/{len(records)})")
    print(f"Syntax errors  : {syntax_errors}/{len(records)}")
    print(f"Semantic errors: {semantic_errors}/{len(records)}")
    print(f"Solver errors  : {solver_errors}/{len(records)}")
    if plan_valid_rate is not None:
        print(f"Plan valid rate: {plan_valid_rate:.4f} ({plan_valid_count}/{solved_with_graph})")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="LLM-as-Formalizer: NL → schedule JSON → CP-SAT solver"
    )
    parser.add_argument("--model-name", required=True)
    parser.add_argument("--temperature", type=float, default=0.0)
    parser.add_argument("--max-tokens", type=int, default=4096)
    parser.add_argument("--benchmark-name", required=True)
    parser.add_argument("--save-path", required=True)
    parser.add_argument("--max-examples", type=int, default=100)
    parser.add_argument("--num-workers", type=int, default=8)
    parser.add_argument("--llm-retries", type=int, default=0)
    parser.add_argument(
        "--history-mode",
        default="cumulative",
        choices=["cumulative", "single-turn"],
        dest="history_mode",
    )
    parser.add_argument("--data-path", help="Local JSON file for gen-data")
    parser.add_argument("--timeout", type=float, default=120.0, help="CP-SAT solve timeout in seconds")
    return parser.parse_args()


def main() -> None:
    args = parse_args()

    if args.benchmark_name == "gen-data":
        if not args.data_path:
            raise ValueError("--data-path is required when --benchmark-name gen-data")
        eval_dataset = json.loads(Path(args.data_path).read_text(encoding="utf-8"))
    elif args.benchmark_name == "asynchow":
        from datasets import load_dataset

        eval_dataset = load_dataset("fangrulin/asynchow", split="test")
    else:
        raise ValueError(
            "run_cpsat_formalizer supports --benchmark-name gen-data or asynchow"
        )

    os.makedirs(args.save_path, exist_ok=True)

    llm_client = build_llm_client(
        args.model_name,
        args.temperature,
        args.max_tokens,
        num_workers=args.num_workers,
        strict_json=False,
    )
    run_task(llm_client, eval_dataset, args)


if __name__ == "__main__":
    main()
