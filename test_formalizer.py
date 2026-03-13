"""
Robotouille formalizer pipeline using src/method only.

Pipeline:
  1. Load Robotouille async env JSON
  2. Transform to NL (reference: baselines/robotouille builder for PDDL structure)
  3. Transform NL → PDDL via src/method (build_robotouille_problem_messages, parse)
  4. Solve via src/method/pddl_solver (OPTIC) only

Note: Robotouille uses STRIPS (classical planning); OPTIC is a temporal planner.
      OPTIC may fail on STRIPS domains. We use it per user requirement to only
      use the solver in src/method.

Reference (partial - robotouille/pddlgym is synchronous):
  - baselines/robotouille/environments/env_generator/builder.py: JSON → PDDL structure
  - baselines/robotouille/pddlgym: PDDL parsing/structs (synchronous, not async)
"""
from __future__ import annotations

import json
import sys
from pathlib import Path
from tqdm import tqdm

PROJECT_ROOT = Path(__file__).resolve().parent
ROBOTOUILLE_ROOT = PROJECT_ROOT / "baselines" / "robotouille"
DOMAIN_PDDL_PATH = ROBOTOUILLE_ROOT / "environments" / "robotouille.pddl"
ASYNC_ENVS_DIR = ROBOTOUILLE_ROOT / "environments" / "env_generator" / "examples" / "asynchronous"
NL_DATA_PATH = PROJECT_ROOT / "data" / "robotouille_single_agent_async.json"


def _ensure_paths():
    """Ensure project root and robotouille root are on sys.path for imports."""
    if str(PROJECT_ROOT) not in sys.path:
        sys.path.insert(0, str(PROJECT_ROOT))
    if str(ROBOTOUILLE_ROOT) not in sys.path:
        sys.path.insert(0, str(ROBOTOUILLE_ROOT))


def _ensure_robotouille_on_path():
    _ensure_paths()


def _load_and_prepare_env(json_path: Path):
    """Load JSON and get (env_for_builder, env_with_ids, raw). Reference: test_data_formation."""
    _ensure_robotouille_on_path()
    from test_data_formation import _load_and_prepare_env as load_env
    return load_env(json_path)


def _format_nl_from_record(nl_dict: dict) -> str:
    """Build NL string from data/robotouille_single_agent_async.json 'nl' field."""
    lines = []
    lines.append("## 1. TASK / GOAL\n")
    lines.append(nl_dict.get("task", ""))
    lines.append("\n## 2. ENVIRONMENT\n")
    lines.append(nl_dict.get("environment", ""))
    lines.append("\n## 3. STEPS (Atomic Actions)\n")
    for s in nl_dict.get("steps", []):
        lines.append(f"  {s.get('id', '')}: {s.get('description', '')}")
    lines.append("\n## 4. DEPENDENCIES\n")
    for d in nl_dict.get("dependencies_nl", []):
        lines.append(f"  - {d}")
    return "\n".join(lines)


def _load_all_records(data_path: Path) -> list[dict]:
    """Load all records from data/robotouille_single_agent_async.json."""
    if not data_path.exists():
        return []
    records = json.loads(data_path.read_text(encoding="utf-8"))
    return records if isinstance(records, list) else []


def _robotouille_json_to_nl(json_path: Path) -> str:
    """
    Convert Robotouille JSON to structured NL for the LLM.
    References: builder.py (PDDL structure), test_data_formation.json_to_natural_language.
    """
    _ensure_robotouille_on_path()
    from test_data_formation import _load_and_prepare_env, json_to_natural_language
    _, env_with_ids, raw = _load_and_prepare_env(json_path)
    return json_to_natural_language(env_with_ids, raw)


def _transform_nl_to_pddl(
    nl_description: str,
    domain_pddl: str,
    model_name: str = "gemini-3-flash",
    llm_retries: int = 0,
):
    """
    Use src/method to transform NL → PDDL problem with retries on parse failure.
    Mirrors run_formalizer.py: on parse failure, append error feedback and retry.
    """
    from src.experiments.utils import build_llm_client
    from src.llms.prompts import SYNTAX_RETRY_TEMPLATE
    from src.method.nl_to_pddl import (
        build_robotouille_problem_messages,
        parse_robotouille_problem_response,
        RobotouillePDDL,
    )

    messages = build_robotouille_problem_messages(nl_description, domain_pddl)
    llm = build_llm_client(model_name, temperature=0.0, max_tokens=4096, strict_json=True)

    for attempt in range(llm_retries + 1):
        response = llm.chat(messages, schema=RobotouillePDDL)
        problem_pddl = parse_robotouille_problem_response(response or "")
        if problem_pddl:
            return problem_pddl
        # Parse failed — append assistant response and retry feedback
        messages.append({"role": "assistant", "content": response or ""})
        messages.append({
            "role": "user",
            "content": SYNTAX_RETRY_TEMPLATE.format(
                error="Your response could not be parsed as valid PDDL JSON. "
                      "Please output only the JSON object matching the schema: "
                      '{"problem_pddl": "<full problem PDDL string>"}'
            ),
        })

    return None


def _solve_pddl(domain_pddl: str, problem_pddl: str):
    """Use ONLY src/method/pddl_solver (OPTIC)."""
    from src.method.pddl_solver import solve

    result = solve(domain_pddl, problem_pddl, timeout=120)
    return result


def run_pipeline_for_record(
    rec: dict,
    model_name: str = "openai/gpt-4.1-mini",
    llm_retries: int = 2,
) -> tuple[str, str, str | None, object]:
    """
    Run: NL (from record) → [LLM] → PDDL → solve.
    Record must have 'nl' with task, environment, steps, dependencies_nl.

    Retries (like run_formalizer.py):
      - Parse failure: append SYNTAX_RETRY_TEMPLATE, retry LLM.
      - Solver error: append SYNTAX_RETRY_TEMPLATE with truncated solver output, retry LLM.
    Shows tqdm progress for LLM+solver attempts.
    """
    from src.experiments.utils import build_llm_client
    from src.llms.prompts import SYNTAX_RETRY_TEMPLATE
    from src.method.nl_to_pddl import (
        build_robotouille_problem_messages,
        parse_robotouille_problem_response,
        normalize_robotouille_problem_to_domain,
        RobotouillePDDL,
    )
    from src.method.nl_to_pddl import _truncate_solver_error

    domain_pddl = DOMAIN_PDDL_PATH.read_text(encoding="utf-8")
    nl = _format_nl_from_record(rec.get("nl", {}))
    messages = build_robotouille_problem_messages(nl, domain_pddl)
    llm = build_llm_client(model_name, temperature=0.0, max_tokens=4096, strict_json=True)

    problem_pddl = ""
    last_result = None

    bar_desc = rec.get('id', 'Record')
    for attempt in tqdm(range(llm_retries + 1), desc=f"{bar_desc} (LLM+solve)", leave=False):
        response = llm.chat(messages, schema=RobotouillePDDL)
        problem_pddl = parse_robotouille_problem_response(response or "")
        if not problem_pddl:
            messages.append({"role": "assistant", "content": response or ""})
            messages.append({
                "role": "user",
                "content": SYNTAX_RETRY_TEMPLATE.format(
                    error="Your response could not be parsed as valid PDDL JSON. "
                          "Please output only the JSON object matching the schema: "
                          '{"problem_pddl": "<full problem PDDL string>"}'
                ),
            })
            continue

        problem_pddl = normalize_robotouille_problem_to_domain(problem_pddl)
        result = _solve_pddl(domain_pddl, problem_pddl)

        if result is None:
            return domain_pddl, problem_pddl, "Solver returned None (unreachable?)", None
        if result.error:
            messages.append({"role": "assistant", "content": response or ""})
            messages.append({
                "role": "user",
                "content": SYNTAX_RETRY_TEMPLATE.format(
                    error=_truncate_solver_error(result.error)
                ),
            })
            last_result = result
            continue

        plan = [(start, action, dur) for start, action, dur in result.plan]
        return domain_pddl, problem_pddl, plan, result

    return domain_pddl, problem_pddl or "", last_result.error if last_result else "LLM failed to produce valid problem PDDL", last_result


def main():
    import argparse
    parser = argparse.ArgumentParser(
        description="Robotouille formalizer: load all from data JSON, NL → PDDL → solve"
    )
    parser.add_argument("--data", default=str(NL_DATA_PATH), help="Input JSON (records with id, original_json, nl)")
    parser.add_argument("--model", default="openai/gpt-4.1-mini", help="LLM for NL→PDDL")
    parser.add_argument("--llm-retries", type=int, default=2, help="Max retries when problem PDDL parse fails")
    parser.add_argument("--output", default="", help="Save results to JSON (optional)")
    parser.add_argument("--show-pddl", action="store_true", help="Print PDDL for first record")
    args = parser.parse_args()

    data_path = Path(args.data)
    if not data_path.is_absolute():
        data_path = PROJECT_ROOT / data_path

    records = _load_all_records(data_path)
    if not records:
        print(f"No records in {data_path}")
        return

    print("=" * 70)
    print("Robotouille formalizer (data file as input)")
    print("=" * 70)
    print(f"Data: {data_path} ({len(records)} records)")
    print(f"Model: {args.model}")
    print(f"Solver: src/method/pddl_solver (OPTIC)")
    print()

    results = []
    for idx, rec in tqdm(enumerate(records), desc="Processing records", total=len(records)):
        rid = rec.get("id", "?")
        domain, problem, plan_or_err, solver_result = run_pipeline_for_record(
            rec, model_name=args.model, llm_retries=args.llm_retries
        )
        results.append({
            "id": rid,
            "original_json": rec.get("original_json"),
            "nl": rec.get("nl"),
            "problem_pddl": problem,
            "plan": list(plan_or_err) if isinstance(plan_or_err, list) else None,
            "error": plan_or_err if isinstance(plan_or_err, str) else None,
        })
        status = "OK" if isinstance(plan_or_err, list) else plan_or_err
        # print(f"  {rid}: {status}")

        if idx == 0:
            # Print/save full results for first record (in JSON, with all fields)
            # Fix: Make solver_result JSON-serializable (e.g., by converting to dict or string)
            def solver_result_to_json(sr):
                if sr is None:
                    return None
                # Try dataclass asdict; otherwise fallback to str
                try:
                    from dataclasses import asdict, is_dataclass
                    if is_dataclass(sr):
                        return asdict(sr)
                except Exception:
                    pass
                # Try .dict() for pydantic
                if hasattr(sr, "dict"):
                    try:
                        return sr.dict()
                    except Exception:
                        pass
                # Try __dict__
                if hasattr(sr, "__dict__"):
                    return dict(sr.__dict__)
                # Fallback: string
                return str(sr)

            print("\nFirst record full results (domain, problem, plan, error):")
            print(json.dumps({
                "id": rid,
                "domain_pddl": domain,
                "problem_pddl": problem,
                "plan": list(plan_or_err) if isinstance(plan_or_err, list) else None,
                "error": plan_or_err if isinstance(plan_or_err, str) else None,
                "original_json": rec.get("original_json"),
                "nl": rec.get("nl"),
                "solver_result": solver_result_to_json(solver_result),
            }, indent=2, ensure_ascii=False))
            break
            

    # if args.output:
    #     out = Path(args.output)
    #     out.parent.mkdir(parents=True, exist_ok=True)
    #     out.write_text(json.dumps(results, indent=2, ensure_ascii=False), encoding="utf-8")
    #     print(f"\nSaved → {args.output}")

    # if args.show_pddl and results:
    #     print("\nProblem PDDL (first record, first 50 lines):")
    #     print("-" * 50)
    #     for line in (results[0].get("problem_pddl") or "").splitlines()[:50]:
    #         print(line)
    #     print("...")


if __name__ == "__main__":
    main()
