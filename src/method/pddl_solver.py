"""PDDL solver via solver.planning.domains API.

Supports OPTIC (temporal planning) and LAMA-first (classical planning, faster).
Submits domain + problem PDDL and polls for the result.
"""
from __future__ import annotations

import concurrent.futures
import re
import time
import json
from dataclasses import dataclass, field
from typing import Optional

import requests
from tqdm import tqdm


OPTIC_API_URL = "https://solver.planning.domains:5001"

@dataclass
class SolverResult:
    makespan_seconds: float = 0.0
    plan: list[tuple[float, str, float]] = field(default_factory=list)  # (start, action, dur)
    raw_output: str = ""
    error: str = ""


def _is_retryable_error(error: str) -> bool:
    """Return True for transient server-side errors worth retrying."""
    return (
        "FATAL" in error
        or "container" in error
        or error == "Empty solver output"
    )


def solve(
    domain_pddl: str,
    problem_pddl: str,
    poll_interval: float = 1.0,
    timeout: Optional[float] = None,
    max_retries: int = 0,
    solver: str = "optic",
) -> Optional[SolverResult]:
    """Run a planner via the solver.planning.domains async API.

    Args:
        solver: Planner name, e.g. ``"optic"`` (temporal) or ``"lama-first"``
                (classical STRIPS, faster for large grounding).

    Returns None if the API is unreachable, times out, or returns no plan.
    """
    last_result: Optional[SolverResult] = None
    for attempt in range(max_retries + 1):
        if attempt > 0:
            time.sleep(5 * attempt)
        last_result = _solve_once(domain_pddl, problem_pddl, poll_interval, timeout, solver)
        if last_result.error and _is_retryable_error(last_result.error):
            continue
        return last_result
    return last_result


def _solve_once(
    domain_pddl: str,
    problem_pddl: str,
    poll_interval: float,
    timeout: Optional[float],
    solver: str = "optic",
) -> SolverResult:
    req_body = {
        "domain": domain_pddl,
        "problem": problem_pddl,
    }

    # Step 1: Submit the job (retry on network errors)
    for attempt in range(4):
        try:
            resp = requests.post(f"{OPTIC_API_URL}/package/{solver}/solve", json=req_body, timeout=60)
            resp.raise_for_status()
            break
        except requests.RequestException as e:
            if attempt == 3:
                return SolverResult(makespan_seconds=0, error=f"Submit failed: {e}")
            time.sleep(5 * (attempt + 1))
    job = resp.json()

    # Direct result (no polling needed)
    if "result" not in job:
        raw = _extract_output(job)
        result = _parse_plan(raw) if raw else None
        if result is None:
            return SolverResult(makespan_seconds=0, raw_output=raw, error=_extract_error(job))
        return result

    # Step 2: Poll for the result
    result_path = job["result"]
    deadline = (time.monotonic() + timeout) if timeout is not None else None

    while True:
        if deadline is not None and time.monotonic() > deadline:
            return SolverResult(makespan_seconds=0, error=f"Solver timed out after {timeout}s")

        try:
            celery_result = requests.post(f"{OPTIC_API_URL}{result_path}", timeout=60)
            data = celery_result.json()
        except requests.RequestException:
            time.sleep(poll_interval)
            continue

        if data.get("status", "") != "PENDING":
            raw = _extract_output(data)
            result = _parse_plan(raw) if raw else None
            if result is None:
                return SolverResult(makespan_seconds=0, raw_output=raw, error=_extract_error(data))
            return result

        time.sleep(poll_interval)


def _extract_error(data: dict) -> str:
    """Extract error message from the API response dict.

    Checks result.stderr first, then result.output.plan for diagnostics.
    """
    result = data.get("result", data)
    if not isinstance(result, dict):
        return "No plan found in solver output"

    stderr = result.get("stderr", "")
    plan_log = ""
    output = result.get("output", "")
    if isinstance(output, dict):
        plan_log = output.get("plan", "")

    # Combine stderr + plan log and return the first meaningful chunk
    combined = (stderr + "\n" + plan_log).strip()
    if not combined:
        return "Empty solver output"
    return combined


def _extract_output(data: dict) -> str:
    """Extract raw planner output from various API response shapes.

    Handles both OPTIC (``output.plan``) and LAMA-first (``output.sas_plan``).
    """
    result = data.get("result", data)
    if isinstance(result, dict):
        output = result.get("output", "")
        if isinstance(output, dict):
            # LAMA-first stores the plan in output.sas_plan
            return output.get("sas_plan", "") or output.get("plan", "") or str(output)
        if isinstance(output, str):
            return output
        return result.get("stdout", "") or result.get("plan", "") or str(result)
    return str(data)


def _parse_plan(output: str) -> Optional[SolverResult]:
    """Parse a plan from planner output.

    Handles two formats:

    **OPTIC** (temporal, with timestamps)::

        0.000: (move robot_1 table_1 table_2) [0.001]

    **LAMA-first** (classical, action per line, no timestamps)::

        (move robot_1 table_1 table_2)
        ; cost = 33 (unit cost)

    Returns None if no actions are found.
    """
    # ---- Try OPTIC format first ----
    plan_header_re = re.compile(r";\s*Plan found with metric\s+[\d.]+")
    headers = list(plan_header_re.finditer(output))
    if headers:
        last_section = output[headers[-1].start():]
    else:
        last_section = output
        for marker in [";;;; Solution Found", "; Cost:"]:
            idx = output.rfind(marker)
            if idx != -1:
                last_section = output[idx:]
                break

    temporal_re = re.compile(r"(\d+\.?\d*)\s*:\s*\(([^)]+)\)\s*\[(\d+\.?\d*)\]")
    plan: list[tuple[float, str, float]] = []
    for m in temporal_re.finditer(last_section):
        plan.append((float(m.group(1)), m.group(2), float(m.group(3))))

    if plan:
        # Determine makespan from reported cost or timestamps
        cost_match = re.search(r";\s*Cost:\s*([\d.]+)", last_section)
        if cost_match:
            makespan = float(cost_match.group(1))
        elif headers:
            m = re.search(r"([\d.]+)", output[headers[-1].start() + len("; Plan found with metric"):])
            makespan = float(m.group(1)) if m else max(s + d for s, _, d in plan)
        else:
            makespan = max(s + d for s, _, d in plan)
        return SolverResult(makespan_seconds=makespan, plan=plan, raw_output=output)

    # ---- Try LAMA/classical format (no timestamps) ----
    classical_re = re.compile(r"^\(([^)]+)\)\s*$", re.MULTILINE)
    actions = [m.group(1) for m in classical_re.finditer(output)]
    if actions:
        plan = [(i * 0.001, a, 0.001) for i, a in enumerate(actions)]
        cost_match = re.search(r";\s*cost\s*=\s*(\d+)", output, re.IGNORECASE)
        makespan = float(cost_match.group(1)) * 0.001 if cost_match else len(actions) * 0.001
        return SolverResult(makespan_seconds=makespan, plan=plan, raw_output=output)

    return None


def batch_solve(
    problems: list[tuple[str, str]],
    num_workers: int = 8,
    poll_interval: float = 1.0,
    timeout: Optional[float] = None,
    max_retries: int = 0,
    desc: str = "Solving PDDL",
    solver: str = "optic",
) -> list[SolverResult]:
    """Solve multiple (domain, problem) pairs in parallel.

    Args:
        problems: List of (domain_pddl, problem_pddl) tuples.
        num_workers: Max concurrent solver requests.
        poll_interval: Polling interval passed to each ``solve`` call.
        timeout: Max seconds to wait for a single solve job before giving up.
        max_retries: Max retries for transient server errors (container failures, empty output).
        desc: Progress bar description.
        solver: Planner name (``"optic"`` or ``"lama-first"``).

    Returns:
        List of SolverResult in the same order as *problems*.
    """
    results: list[SolverResult] = [SolverResult(error="not started")] * len(problems)

    with concurrent.futures.ThreadPoolExecutor(max_workers=num_workers) as executor:
        future_to_idx = {
            executor.submit(solve, domain, problem, poll_interval, timeout, max_retries, solver): i
            for i, (domain, problem) in enumerate(problems)
        }

        with tqdm(total=len(problems), desc=desc, unit="prob") as pbar:
            for future in concurrent.futures.as_completed(future_to_idx):
                idx = future_to_idx[future]
                try:
                    results[idx] = future.result()
                except Exception as e:
                    results[idx] = SolverResult(error=str(e))
                pbar.update(1)

    return results
    

# """PDDL 2.1 temporal-planning solver via solver.planning.domains API.

# Submits domain + problem PDDL to the OPTIC planner hosted at
# solver.planning.domains:5001 and polls for the result.
# """
# from __future__ import annotations

# import concurrent.futures
# import re
# import time
# import json
# from dataclasses import dataclass, field
# from typing import Optional

# import requests
# from tqdm import tqdm


# OPTIC_API_URL = "https://solver.planning.domains:5001"

# @dataclass
# class SolverResult:
#     makespan_seconds: float = 0.0
#     plan: list[tuple[float, str, float]] = field(default_factory=list)  # (start, action, dur)
#     raw_output: str = ""
#     error: str = ""


# def _is_retryable_error(error: str) -> bool:
#     """Return True for transient server-side errors worth retrying."""
#     return (
#         "FATAL" in error
#         or "container" in error
#         or error == "Empty solver output"
#     )


# def solve(
#     domain_pddl: str,
#     problem_pddl: str,
#     poll_interval: float = 1.0,
#     timeout: Optional[float] = None,
#     max_retries: int = 0,
# ) -> Optional[SolverResult]:
#     """Run OPTIC via the solver.planning.domains async API.

#     Returns None if the API is unreachable, times out, or returns no plan.
#     """
#     last_result: Optional[SolverResult] = None
#     for attempt in range(max_retries + 1):
#         if attempt > 0:
#             time.sleep(5 * attempt)
#         last_result = _solve_once(domain_pddl, problem_pddl, poll_interval, timeout)
#         if last_result.error and _is_retryable_error(last_result.error):
#             continue
#         return last_result
#     return last_result


# def _solve_once(
#     domain_pddl: str,
#     problem_pddl: str,
#     poll_interval: float,
#     timeout: Optional[float],
# ) -> SolverResult:
#     req_body = {
#         "domain": domain_pddl,
#         "problem": problem_pddl,
#     }

#     # Step 1: Submit the job (retry on network errors)
#     for attempt in range(4):
#         try:
#             resp = requests.post(f"{OPTIC_API_URL}/package/optic/solve", json=req_body, timeout=60)
#             resp.raise_for_status()
#             break
#         except requests.RequestException as e:
#             if attempt == 3:
#                 return SolverResult(makespan_seconds=0, error=f"Submit failed: {e}")
#             time.sleep(5 * (attempt + 1))
#     job = resp.json()

#     # Direct result (no polling needed)
#     if "result" not in job:
#         raw = _extract_output(job)
#         result = _parse_plan(raw) if raw else None
#         if result is None:
#             return SolverResult(makespan_seconds=0, raw_output=raw, error=_extract_error(job))
#         return result

#     # Step 2: Poll for the result
#     result_path = job["result"]
#     deadline = (time.monotonic() + timeout) if timeout is not None else None

#     while True:
#         if deadline is not None and time.monotonic() > deadline:
#             return SolverResult(makespan_seconds=0, error=f"Solver timed out after {timeout}s")

#         try:
#             celery_result = requests.post(f"{OPTIC_API_URL}{result_path}", timeout=60)
#             data = celery_result.json()
#         except requests.RequestException:
#             time.sleep(poll_interval)
#             continue

#         if data.get("status", "") != "PENDING":
#             raw = _extract_output(data)
#             result = _parse_plan(raw) if raw else None
#             if result is None:
#                 return SolverResult(makespan_seconds=0, raw_output=raw, error=_extract_error(data))
#             return result

#         time.sleep(poll_interval)


# def _extract_error(data: dict) -> str:
#     """Extract error message from the API response dict.

#     Checks result.stderr first, then result.output.plan for diagnostics.
#     """
#     result = data.get("result", data)
#     if not isinstance(result, dict):
#         return "No plan found in solver output"

#     stderr = result.get("stderr", "")
#     plan_log = ""
#     output = result.get("output", "")
#     if isinstance(output, dict):
#         plan_log = output.get("plan", "")

#     # Combine stderr + plan log and return the first meaningful chunk
#     combined = (stderr + "\n" + plan_log).strip()
#     if not combined:
#         return "Empty solver output"
#     return combined


# def _extract_output(data: dict) -> str:
#     """Extract raw planner output from various API response shapes."""
#     result = data.get("result", data)
#     if isinstance(result, dict):
#         output = result.get("output", "")
#         if isinstance(output, dict):
#             return output.get("plan", "") or str(output)
#         if isinstance(output, str):
#             return output
#         return result.get("stdout", "") or result.get("plan", "") or str(result)
#     return str(data)


# def _parse_plan(output: str) -> Optional[SolverResult]:
#     """Parse the LAST plan block from OPTIC output.

#     OPTIC may print multiple plan blocks (one per search phase).
#     We take only the final one (after the last '; Cost:' or
#     ';;;; Solution Found' marker).
#     """
#     # Find the last "Solution Found" or "; Cost:" line and parse from there
#     last_section = output
#     for marker in [";;;; Solution Found", "; Cost:"]:
#         idx = output.rfind(marker)
#         if idx != -1:
#             last_section = output[idx:]
#             break

#     action_re = re.compile(r"(\d+\.?\d*)\s*:\s*\(([^)]+)\)\s*\[(\d+\.?\d*)\]")
#     plan: list[tuple[float, str, float]] = []
#     for m in action_re.finditer(last_section):
#         plan.append((float(m.group(1)), m.group(2), float(m.group(3))))

#     if not plan:
#         return None

#     # Prefer OPTIC's reported cost over manually summing action timestamps.
#     # Large durations (e.g. millions of seconds) may overflow OPTIC's internal
#     # int32 millisecond counter, producing garbled negative values in plan
#     # action lines.  "; Cost: X" is most reliable; if missing (output was
#     # truncated before final summary), fall back to the last
#     # "; Plan found with metric X" line.
#     cost_match = re.search(r";\s*Cost:\s*([\d.]+)", last_section)
#     if cost_match:
#         makespan = float(cost_match.group(1))
#     else:
#         plan_idx = output.rfind("; Plan found with metric")
#         if plan_idx != -1:
#             m = re.search(r"([\d.]+)", output[plan_idx + len("; Plan found with metric"):])
#             makespan = float(m.group(1)) if m else max(start + dur for start, _, dur in plan)
#         else:
#             makespan = max(start + dur for start, _, dur in plan)
#     return SolverResult(makespan_seconds=makespan, plan=plan, raw_output=output)


# def batch_solve(
#     problems: list[tuple[str, str]],
#     num_workers: int = 8,
#     poll_interval: float = 1.0,
#     timeout: Optional[float] = None,
#     max_retries: int = 0,
#     desc: str = "Solving PDDL",
# ) -> list[SolverResult]:
#     """Solve multiple (domain, problem) pairs in parallel.

#     Args:
#         problems: List of (domain_pddl, problem_pddl) tuples.
#         num_workers: Max concurrent solver requests.
#         poll_interval: Polling interval passed to each ``solve`` call.
#         timeout: Max seconds to wait for a single solve job before giving up.
#         max_retries: Max retries for transient server errors (container failures, empty output).
#         desc: Progress bar description.

#     Returns:
#         List of SolverResult in the same order as *problems*.
#     """
#     results: list[SolverResult] = [SolverResult(error="not started")] * len(problems)

#     with concurrent.futures.ThreadPoolExecutor(max_workers=num_workers) as executor:
#         future_to_idx = {
#             executor.submit(solve, domain, problem, poll_interval, timeout, max_retries): i
#             for i, (domain, problem) in enumerate(problems)
#         }

#         with tqdm(total=len(problems), desc=desc, unit="prob") as pbar:
#             for future in concurrent.futures.as_completed(future_to_idx):
#                 idx = future_to_idx[future]
#                 try:
#                     results[idx] = future.result()
#                 except Exception as e:
#                     results[idx] = SolverResult(error=str(e))
#                 pbar.update(1)

#     return results
