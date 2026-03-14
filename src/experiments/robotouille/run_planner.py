"""
Run LLM-as-Planner baseline on Robotouille.

Pipeline per example:
  1. Load record from data/robotouille_single_agent_async.json
  2. Build NL prompt from record's 'nl' field
  3. LLM directly generates a plan (sequence of PDDL-style actions)

Unlike run_formalizer.py, this skips the PDDL formalization + solver step
and asks the LLM to produce the action sequence directly.

Evaluation:
  - plan_found_rate: fraction of problems where the LLM outputs a parseable plan
  - plan_steps: average number of actions
  - env_simulation: validate plan using the Robotouille game engine
  - pddl_simulation: validate plan against the STRIPS domain
"""
from __future__ import annotations

import argparse
import json
import os
import re
import sys
from pathlib import Path

from pydantic import BaseModel, Field
from tqdm import tqdm

from dotenv import load_dotenv
load_dotenv()

_PROJECT_ROOT = Path(__file__).resolve().parent.parent.parent.parent
_ROBOTOUILLE_ROOT = _PROJECT_ROOT / "baselines" / "robotouille"
_DOMAIN_PDDL_PATH = _ROBOTOUILLE_ROOT / "environments" / "robotouille.pddl"
_DEFAULT_DATA_PATH = _PROJECT_ROOT / "data" / "robotouille_single_agent_async.json"

for p in (_PROJECT_ROOT, _ROBOTOUILLE_ROOT):
    if str(p) not in sys.path:
        sys.path.insert(0, str(p))

from src.experiments.utils import build_llm_client
from src.llms.base import BaseLLM
from src.evaluation.robotouille.eval import evaluate_record, summarize_eval


# ── Structured output schema ────────────────────────────────────────────


class RobotouillePlan(BaseModel):
    plan: list[str] = Field(
        description=(
            "Ordered list of PDDL actions to execute. "
            "Each entry is a single action string like 'move robot_1 table_1 table_2' "
            "or 'pick-up robot_1 bread_2 table_1'."
        )
    )


# ── System prompt ────────────────────────────────────────────────────────


_PLANNER_SYSTEM_PROMPT = """\
You are a planning expert for the Robotouille kitchen domain.
Given a kitchen environment description, you must produce an optimal \
step-by-step plan using the available PDDL actions.

Available actions (PDDL STRIPS):

  move ?player ?from_station ?to_station
    Move the player from one station to another.
    Preconditions: player is at from_station, to_station is vacant.

  pick-up ?player ?item ?station
    Pick up the top item from a station.
    Preconditions: player has nothing, item is on station, player is at station, item is clear (top of stack).

  place ?player ?item ?station
    Place the held item on an empty station.
    Preconditions: player has item, player is at station, station is empty.

  cook ?player ?item ?station
    Cook a cookable item on a stove.
    Preconditions: station is a stove, item is cookable, item is on station, player is at station, item is clear.
    Effect: item becomes cooked.

  cut ?player ?item ?station
    Cut a cuttable item on a cutting board.
    Preconditions: station is a board, item is cuttable, item is on station, player is at station, item is clear.
    Effect: item becomes cut.

  fry ?player ?item ?station
    Fry a fryable item in a fryer.
    Preconditions: station is a fryer, item is fryable, item is on station, player is at station, item is clear.
    Effect: item becomes fried.

  fry_cut_item ?player ?item ?station
    Fry an item that must be cut first.
    Preconditions: station is a fryer, item is fryable-if-cut, item is cut, item is on station, player is at station, item is clear.
    Effect: item becomes fried.

  stack ?player ?item_top ?item_bottom ?station
    Stack the held item on top of another item at a station.
    Preconditions: player has item_top, item_bottom is clear, player is at station, item_bottom is at station.
    Effect: item_top is atop item_bottom, item_top is clear, item_bottom is no longer clear.

  unstack ?player ?item_top ?item_bottom ?station
    Pick up the top item from a stack.
    Preconditions: player has nothing, item_top is clear, item_top is atop item_bottom, player is at station, both items at station.
    Effect: player has item_top, item_bottom is clear.

IMPORTANT RULES:
- The player can only carry ONE item at a time.
- You must unstack items from top to bottom (pick up the clear/top item first).
- Items placed on an empty station go "on" that station (bottom of stack).
- Items stacked on other items go "atop" the item below.
- A station with items on it is NOT empty; use "stack" instead of "place" to add items.
- After picking up the only item on a station, the station becomes empty.
- Output ONLY the action names and arguments. Use the exact entity names from the problem description.
"""


# ── Data loading ────────────────────────────────────────────────────────


def _load_records(data_path: Path) -> list[dict]:
    if not data_path.exists():
        raise FileNotFoundError(f"Data file not found: {data_path}")
    records = json.loads(data_path.read_text(encoding="utf-8"))
    if not isinstance(records, list):
        raise ValueError(f"Expected JSON array, got {type(records).__name__}")
    return records


def _expand_with_seeds(records: list[dict], seeds: list[int]) -> list[dict]:
    """Expand records by applying each seed via randomize_environment.

    Each (record, seed) pair produces one entry. If seeds is empty, returns
    records unchanged (seed=None, base layout).
    """
    if not seeds:
        return records
    try:
        from environments.env_generator.procedural_generator import randomize_environment
    except ImportError as e:
        raise ImportError(f"Cannot import randomize_environment: {e}")

    import copy
    expanded: list[dict] = []
    for rec in records:
        for seed in seeds:
            new_rec = copy.deepcopy(rec)
            new_rec["original_json"] = randomize_environment(
                copy.deepcopy(rec["original_json"]), seed, noisy_randomization=False
            )
            new_rec["seed"] = seed
            new_rec["id"] = f"{rec['id']}_seed{seed}"
            # Rebuild NL prompt from randomized env
            from src.gen_data.robotouille.data_transform import convert
            problem = convert(new_rec["original_json"])
            new_rec["nl"] = {
                "task": problem.task,
                "prompt": problem.prompt,
                "goal_predicates": [
                    {"predicate": g["predicate"], "args": g["args"]}
                    for g in problem.goal_predicates
                ],
                "config": problem.config,
            }
            expanded.append(new_rec)
    return expanded


def _format_nl(nl_dict: dict) -> str:
    if "prompt" in nl_dict:
        return nl_dict["prompt"]
    lines: list[str] = []
    lines.append("## Task\n")
    lines.append(nl_dict.get("task", ""))
    lines.append("\n## Environment\n")
    lines.append(nl_dict.get("environment", ""))
    lines.append("\n## Goal Predicates\n")
    for g in nl_dict.get("goal_predicates", []):
        args_str = ", ".join(g["args"])
        lines.append(f"  - {g['predicate']}({args_str})")
    return "\n".join(lines)


# ── Plan parsing ────────────────────────────────────────────────────────


def _parse_plan_response(response: str) -> list[str] | None:
    """Parse the LLM response into a list of action strings.

    Handles both structured JSON and free-text responses.
    """
    if not response:
        return None

    # Try JSON parsing first
    try:
        data = json.loads(response)
        if isinstance(data, dict) and "plan" in data:
            plan = data["plan"]
            if isinstance(plan, list) and all(isinstance(a, str) for a in plan):
                return [a.strip() for a in plan if a.strip()]
    except (json.JSONDecodeError, KeyError):
        pass

    # Try extracting from a JSON code block
    json_match = re.search(r'```(?:json)?\s*(\{.*?\})\s*```', response, re.DOTALL)
    if json_match:
        try:
            data = json.loads(json_match.group(1))
            if isinstance(data, dict) and "plan" in data:
                return [a.strip() for a in data["plan"] if isinstance(a, str) and a.strip()]
        except json.JSONDecodeError:
            pass

    # Try line-by-line: look for lines that match action patterns
    action_pattern = re.compile(
        r'^\s*(?:\d+[\.\)]\s*)?'  # optional step number
        r'\(?\s*'                  # optional opening paren
        r'((?:move|pick-up|place|cook|cut|fry|fry_cut_item|stack|unstack)'
        r'(?:\s+[^\s)]+)+)'       # args (no parens in tokens)
        r'\s*\)?\s*$',
        re.IGNORECASE,
    )
    actions = []
    for line in response.splitlines():
        m = action_pattern.match(line.strip())
        if m:
            actions.append(m.group(1).strip())
    if actions:
        return actions

    return None


def _actions_to_plan(actions: list[str]) -> list[tuple[float, str, float]]:
    """Convert a list of action strings to the standard plan format."""
    return [(float(i), action, 1.0) for i, action in enumerate(actions)]


# ── Build problem PDDL from original JSON for PDDL simulation ──────────


def _build_problem_pddl_from_json(original_json: dict) -> str | None:
    """Use the Robotouille builder to generate a ground-truth problem PDDL."""
    try:
        from environments.env_generator import builder
        import copy
        problem_str, _ = builder.build_problem(copy.deepcopy(original_json))
        return problem_str
    except Exception:
        return None


# ── Core experiment logic ───────────────────────────────────────────────


def run_task(llm_client: BaseLLM, records: list[dict], args: argparse.Namespace):
    domain_pddl = _DOMAIN_PDDL_PATH.read_text(encoding="utf-8")
    n = min(len(records), args.max_examples)
    records = records[:n]

    # Build messages
    all_messages: list[list[dict]] = []
    gold_data: list[dict] = []

    for rec in tqdm(records, desc="Preparing NL questions"):
        nl_str = _format_nl(rec.get("nl", {}))
        messages = [
            {"role": "system", "content": _PLANNER_SYSTEM_PROMPT},
            {"role": "user", "content": nl_str},
        ]
        all_messages.append(messages)
        gold_data.append({
            "id": rec.get("id", "?"),
            "nl": rec.get("nl"),
            "original_json": rec.get("original_json"),
        })

    # Batch LLM call
    responses = llm_client.batch_chat(
        all_messages, schema=RobotouillePlan, desc="LLM planning",
    )

    # Parse plans
    plans: list[list[str] | None] = []
    raw_responses: list[str | None] = []
    for resp in responses:
        raw_responses.append(resp)
        plans.append(_parse_plan_response(resp))

    # Retry failed parses
    for retry in range(args.llm_retries):
        failed = [i for i in range(n) if plans[i] is None]
        if not failed:
            break
        print(f"\nRetry {retry + 1}/{args.llm_retries}: {len(failed)} failed to parse")
        retry_msgs = []
        for i in failed:
            msgs = list(all_messages[i])
            if raw_responses[i]:
                msgs.append({"role": "assistant", "content": raw_responses[i]})
            msgs.append({
                "role": "user",
                "content": (
                    "Your response could not be parsed as a valid plan. "
                    "Please output a JSON object with a single key 'plan' "
                    "containing a list of action strings. Example:\n"
                    '{"plan": ["move robot_1 table_1 stove_1", '
                    '"pick-up robot_1 chicken_1 table_2"]}'
                ),
            })
            retry_msgs.append(msgs)

        retry_responses = llm_client.batch_chat(
            retry_msgs, schema=RobotouillePlan,
            desc=f"LLM retry {retry + 1}",
        )
        for idx, (i, resp) in enumerate(zip(failed, retry_responses)):
            raw_responses[i] = resp
            all_messages[i] = retry_msgs[idx]
            plans[i] = _parse_plan_response(resp)

    # Evaluate and save
    save_path = Path(args.save_path)
    save_path.mkdir(parents=True, exist_ok=True)
    jsonl_path = save_path / "full_results.jsonl"

    result_records: list[dict] = []
    eval_results: list[dict] = []

    with jsonl_path.open("w", encoding="utf-8") as jsonl_f:
        for i, gold in enumerate(gold_data):
            action_list = plans[i]
            plan = _actions_to_plan(action_list) if action_list else None

            ev = evaluate_record(
                problem_pddl=None,
                plan=plan,
                original_json=gold.get("original_json"),
                error=None if action_list else "plan_parse_failed",
                domain_pddl=domain_pddl,
                record_id=gold["id"],
            )
            eval_results.append(ev)

            rec = {
                "id": gold["id"],
                "nl": gold["nl"],
                "plan": [a for a in action_list] if action_list else None,
                "plan_length": len(action_list) if action_list else None,
                "solved": action_list is not None,
                "eval": ev,
                "llm_response": raw_responses[i],
                "chat_history": all_messages[i],
            }
            result_records.append(rec)
            jsonl_f.write(json.dumps(rec, indent=2, ensure_ascii=False) + "\n")
            jsonl_f.flush()

    _save_summary(result_records, eval_results, args)
    return result_records


def _save_summary(
    records: list[dict],
    eval_results: list[dict],
    args: argparse.Namespace,
) -> None:
    save_path = Path(args.save_path)
    n = len(records)

    n_parsed = sum(1 for r in records if r.get("solved"))
    eval_summary = summarize_eval(eval_results)

    metrics = {
        "benchmark": "robotouille",
        "method": "planner",
        "model_name": args.model_name,
        "num_examples": n,
        "num_plans_parsed": n_parsed,
        "plan_parse_rate": n_parsed / n if n else 0.0,
        **eval_summary,
    }
    with (save_path / "summary_results.json").open("w", encoding="utf-8") as f:
        json.dump(metrics, f, indent=2)

    acc = eval_summary.get("accuracy", 0.0)
    n_done = eval_summary.get("num_done", 0)
    avg_steps = eval_summary.get("average_steps", 0.0)
    avg_ratio = eval_summary.get("avg_steps_ratio")

    sim_rate = eval_summary.get("simulation_success_rate")
    n_sim_tested = eval_summary.get("num_simulation_tested", 0)
    n_sim_ok = eval_summary.get("num_simulation_success", 0)
    env_sim_rate = eval_summary.get("env_simulation_success_rate")
    n_env_tested = eval_summary.get("num_env_simulation_tested", 0)
    n_env_ok = eval_summary.get("num_env_simulation_success", 0)

    print(f"\nResults saved to {save_path}")
    print(f"Plans parsed          : {n_parsed}/{n}")
    print(f"Accuracy (done)       : {acc:.4f} ({n_done}/{n})")
    print(f"Average steps (done)  : {avg_steps:.1f}")
    if avg_ratio is not None:
        print(f"Avg steps ratio       : {avg_ratio:.2f}x optimal")
    if sim_rate is not None:
        print(f"PDDL simulation       : {sim_rate:.4f} ({n_sim_ok}/{n_sim_tested})")
    if env_sim_rate is not None:
        print(f"Env simulation        : {env_sim_rate:.4f} ({n_env_ok}/{n_env_tested})")


# ── CLI ──────────────────────────────────────────────────────────────────


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Robotouille LLM-as-Planner: NL → direct plan generation"
    )
    parser.add_argument("--model-name", required=True)
    parser.add_argument("--temperature", type=float, default=0.0)
    parser.add_argument("--max-tokens", type=int, default=4096)
    parser.add_argument("--save-path", required=True)
    parser.add_argument("--data-path", default=str(_DEFAULT_DATA_PATH),
                        help="Path to robotouille_single_agent_async.json")
    parser.add_argument("--max-examples", type=int, default=999)
    parser.add_argument("--num-workers", type=int, default=4)
    parser.add_argument("--llm-retries", type=int, default=2)
    parser.add_argument("--seeds", type=int, nargs="*", default=[],
                        help="Seeds for procedural randomization. If omitted, use base layout only.")
    return parser.parse_args()


def main() -> None:
    args = parse_args()

    data_path = Path(args.data_path)
    if not data_path.is_absolute():
        data_path = _PROJECT_ROOT / data_path

    records = _load_records(data_path)
    print(f"Loaded {len(records)} records from {data_path}")

    if args.seeds:
        records = _expand_with_seeds(records, args.seeds)
        print(f"Expanded to {len(records)} records with seeds {args.seeds}")

    os.makedirs(args.save_path, exist_ok=True)

    llm_client = build_llm_client(
        args.model_name, args.temperature, args.max_tokens,
        num_workers=args.num_workers, strict_json=True,
    )
    run_task(llm_client, records, args)


if __name__ == "__main__":
    main()
