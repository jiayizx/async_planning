"""
Robotouille plan evaluation.

Three evaluation strategies:
  1. PDDL simulation  — apply STRIPS actions to init state, check goal
  2. Robotouille env simulation — use the baseline's State/Action engine
  3. Static checks — goal predicate recall, action type distribution

Optimal step counts are loaded from the baseline's human.yaml config.
"""
from __future__ import annotations

import copy
import importlib.util
import json
import os
import re
import sys
import types
from dataclasses import dataclass
from pathlib import Path
from typing import Optional

# ── Constants ────────────────────────────────────────────────────────────

_BASELINE_ROOT = Path(__file__).resolve().parent.parent.parent.parent / "baselines" / "robotouille"

_HUMAN_YAML_PATH = _BASELINE_ROOT / "conf" / "experiments" / "human" / "asynchronous" / "human.yaml"

Atom = tuple[str, ...]
State = set[Atom]


# ── Optimal steps from human.yaml ────────────────────────────────────────

def _load_optimal_steps() -> dict[str, int]:
    """Load env_name → optimal_steps mapping from human.yaml.

    Returns e.g. {"0_cheese_chicken_sandwich": 21, ...}.
    """
    if not _HUMAN_YAML_PATH.exists():
        return {}
    text = _HUMAN_YAML_PATH.read_text(encoding="utf-8")
    names: list[str] = []
    steps: list[int] = []
    in_names = False
    in_steps = False
    for line in text.splitlines():
        stripped = line.strip()
        if "environment_names:" in stripped:
            in_names = True
            continue
        if "optimal_steps:" in stripped:
            in_names = False
            in_steps = True
            continue
        if in_names:
            if stripped.startswith("]"):
                in_names = False
                continue
            m = re.search(r'"asynchronous/([^"]+)"', stripped)
            if m:
                names.append(m.group(1))
        if in_steps:
            if stripped.startswith("]"):
                in_steps = False
                continue
            m = re.search(r'(\d+)', stripped)
            if m:
                steps.append(int(m.group(1)))
    return dict(zip(names, steps))


_OPTIMAL_STEPS: dict[str, int] = _load_optimal_steps()


def get_optimal_steps(record_id: str) -> Optional[int]:
    """Look up the optimal step count for a record id."""
    return _OPTIMAL_STEPS.get(record_id)


# ── PDDL parsing helpers ────────────────────────────────────────────────

def _strip_comments(text: str) -> str:
    return re.sub(r";[^\n]*", "", text)


def _find_balanced(text: str, start: int) -> str:
    assert text[start] == "("
    depth = 0
    for i in range(start, len(text)):
        if text[i] == "(":
            depth += 1
        elif text[i] == ")":
            depth -= 1
            if depth == 0:
                return text[start:i + 1]
    return text[start:]


def _parse_atoms(block: str) -> tuple[list[Atom], list[Atom]]:
    pos: list[Atom] = []
    neg: list[Atom] = []
    i = 0
    while i < len(block):
        if block[i] == "(":
            sub = _find_balanced(block, i)
            inner = sub[1:-1].strip()
            tokens = inner.split()
            if not tokens:
                pass
            elif tokens[0] == "and":
                p, n = _parse_atoms(inner[3:])
                pos.extend(p)
                neg.extend(n)
            elif tokens[0] == "not":
                not_body = _find_balanced(inner, inner.index("("))
                inner_tokens = not_body[1:-1].split()
                neg.append(tuple(t.lower() for t in inner_tokens))
            else:
                pos.append(tuple(t.lower() for t in tokens))
            i += len(sub)
        else:
            i += 1
    return pos, neg


# ── Domain action parsing ────────────────────────────────────────────────

@dataclass
class ActionSchema:
    name: str
    params: list[str]
    pre_pos: list[Atom]
    pre_neg: list[Atom]
    eff_pos: list[Atom]
    eff_neg: list[Atom]


def _strip_temporal(block: str) -> str:
    """Remove (at start ...), (at end ...), (over all ...) wrappers.

    Flattens durative-action conditions/effects into plain atoms so
    the sequential simulator can treat them as STRIPS preconditions/effects.
    """
    result = block
    for wrapper in ("at start", "at end", "over all"):
        result = re.sub(
            rf"\(\s*{wrapper}\s+(\([^()]*\))\s*\)",
            r"\1",
            result,
        )
    return result


def parse_domain_actions(domain_pddl: str) -> dict[str, ActionSchema]:
    text = _strip_comments(domain_pddl).lower()
    actions: dict[str, ActionSchema] = {}
    for m in re.finditer(r"\(:(?:durative-)?action\s+(\S+)", text):
        name = m.group(1)
        action_block = _find_balanced(text, m.start())
        body = action_block[1:-1]
        params_m = re.search(r":parameters\s*\(([^)]*)\)", body)
        param_tokens = params_m.group(1).split() if params_m else []
        params = [t for t in param_tokens if t.startswith("?")]
        pre_m = re.search(r":(?:precondition|condition)\s*(\()", body)
        pre_pos, pre_neg = [], []
        if pre_m:
            pre_block = _find_balanced(body, pre_m.start(1))
            pre_block = _strip_temporal(pre_block)
            pre_pos, pre_neg = _parse_atoms(pre_block)
        eff_m = re.search(r":effect\s*(\()", body)
        eff_pos, eff_neg = [], []
        if eff_m:
            eff_block = _find_balanced(body, eff_m.start(1))
            eff_block = _strip_temporal(eff_block)
            eff_pos, eff_neg = _parse_atoms(eff_block)
        actions[name] = ActionSchema(
            name=name, params=params,
            pre_pos=pre_pos, pre_neg=pre_neg,
            eff_pos=eff_pos, eff_neg=eff_neg,
        )
    return actions


def parse_problem_init(problem_pddl: str) -> State:
    text = _strip_comments(problem_pddl).lower()
    m = re.search(r"\(:init\s", text)
    if not m:
        return set()
    block = _find_balanced(text, m.start())
    pos, _ = _parse_atoms(block[len("(:init"):-(1)])
    return set(pos)


def parse_problem_goal(problem_pddl: str) -> tuple[list[Atom], list[Atom]]:
    text = _strip_comments(problem_pddl).lower()
    m = re.search(r"\(:goal\s", text)
    if not m:
        return [], []
    block = _find_balanced(text, m.start())
    inner = block[len("(:goal"):-1].strip()
    if inner.startswith("("):
        return _parse_atoms(inner)
    return [], []


# ── PDDL plan simulation ────────────────────────────────────────────────

def _ground(atom: Atom, bindings: dict[str, str]) -> Atom:
    return tuple(bindings.get(t, t) for t in atom)


def simulate_plan(
    domain_pddl: str,
    problem_pddl: str,
    plan: list[tuple[float, str, float]],
) -> tuple[bool, str]:
    """Simulate an OPTIC plan against the STRIPS domain/problem and check goal."""
    actions = parse_domain_actions(domain_pddl)
    state = parse_problem_init(problem_pddl)
    goal_pos, goal_neg = parse_problem_goal(problem_pddl)
    sorted_plan = sorted(plan, key=lambda x: x[0])

    for step_idx, (start, action_str, dur) in enumerate(sorted_plan):
        tokens = action_str.lower().split()
        if not tokens:
            return False, f"Step {step_idx}: empty action"
        action_name = tokens[0]
        args = tokens[1:]
        schema = actions.get(action_name)
        if schema is None:
            return False, f"Step {step_idx}: unknown action '{action_name}'"
        if len(args) != len(schema.params):
            return False, (
                f"Step {step_idx}: action '{action_name}' expects "
                f"{len(schema.params)} args, got {len(args)}"
            )
        bindings = dict(zip(schema.params, args))
        for atom in schema.pre_pos:
            ground_atom = _ground(atom, bindings)
            if ground_atom not in state:
                return False, (
                    f"Step {step_idx} ({action_str}): "
                    f"precondition {ground_atom} not satisfied"
                )
        for atom in schema.pre_neg:
            ground_atom = _ground(atom, bindings)
            if ground_atom in state:
                return False, (
                    f"Step {step_idx} ({action_str}): "
                    f"negative precondition {ground_atom} should be absent"
                )
        for atom in schema.eff_pos:
            state.add(_ground(atom, bindings))
        for atom in schema.eff_neg:
            state.discard(_ground(atom, bindings))

    for atom in goal_pos:
        if atom not in state:
            return False, f"Goal not achieved: {atom} missing from final state"
    for atom in goal_neg:
        if atom in state:
            return False, f"Goal not achieved: {atom} should be absent"
    return True, ""


# ── Robotouille env simulation ───────────────────────────────────────────

def _ensure_baseline_imports():
    """Lazy-import the Robotouille baseline modules with mocked heavy deps."""
    if hasattr(_ensure_baseline_imports, "_ready"):
        return _ensure_baseline_imports._build_state, _ensure_baseline_imports._builder

    root = str(_BASELINE_ROOT)
    if root not in sys.path:
        sys.path.insert(0, root)

    for mod_name in ("pddlgym", "utils.pddlgym_interface",
                     "pygame", "renderer"):
        if mod_name not in sys.modules:
            sys.modules[mod_name] = types.ModuleType(mod_name)
    # gym is used by env.py as a base class; provide a mock if not installed
    if "gym" not in sys.modules:
        mock_gym = types.ModuleType("gym")
        mock_gym.Env = type("Env", (), {})  # type: ignore[attr-defined]
        mock_spaces = types.ModuleType("gym.spaces")
        mock_spaces.Text = type("Text", (), {"__init__": lambda *a, **kw: None})  # type: ignore[attr-defined]
        mock_gym.spaces = mock_spaces  # type: ignore[attr-defined]
        sys.modules["gym"] = mock_gym
        sys.modules["gym.spaces"] = mock_spaces
    # renderer.renderer needs a RobotouilleRenderer attribute
    if "renderer.renderer" not in sys.modules:
        mock_rr = types.ModuleType("renderer.renderer")
        mock_rr.RobotouilleRenderer = type("_MockRenderer", (), {})  # type: ignore[attr-defined]
        sys.modules["renderer.renderer"] = mock_rr
    if "robotouille" not in sys.modules:
        sys.modules["robotouille"] = types.ModuleType("robotouille")

    from environments.env_generator import builder as _builder

    spec = importlib.util.spec_from_file_location(
        "robotouille_env_mod", str(_BASELINE_ROOT / "robotouille" / "env.py")
    )
    env_mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(env_mod)
    _build_state = env_mod.build_state

    _ensure_baseline_imports._ready = True
    _ensure_baseline_imports._build_state = _build_state
    _ensure_baseline_imports._builder = _builder
    return _build_state, _builder


# PDDL action name → env action name mapping
_PDDL_TO_ENV_ACTION = {
    "move": "move",
    "pick-up": "pick-up-item",
    "place": "place-item",
    "cook": "cook",
    "cut": "cut",
    "fry": "fry",
    "fry_cut_item": "fry",
    "stack": "stack",
    "unstack": "unstack",
}


def _strip_digits(name: str) -> str:
    """Strip trailing digits: 'table1' → 'table', 'bread_2' → 'bread_'."""
    while name and name[-1].isdigit():
        name = name[:-1]
    return name.rstrip("_")


def _build_name_map(
    problem_pddl: str,
    builder_env: dict,
) -> dict[str, str]:
    """Build a mapping from LLM's PDDL object names to builder's object names.

    Uses identity predicates (istable, isbread, etc.) to match entities
    of the same sub-type, then aligns by order within each sub-type.
    """
    # Builder: group names by base type (strip digits)
    builder_by_subtype: dict[str, list[str]] = {}
    for field in ("stations", "items", "players", "containers", "meals"):
        for entity in sorted(builder_env.get(field, []),
                             key=lambda e: (e.get("x", 0), e.get("y", 0))):
            base = _strip_digits(entity["name"].lower())
            builder_by_subtype.setdefault(base, []).append(entity["name"].lower())

    # Capability predicates that look like identity predicates but aren't
    _CAPABILITY_SUBTYPES = {
        "cookable", "cuttable", "fryable", "fryableifcut", "cookableifcut",
        "cooked", "cut", "fried",
    }

    # LLM: extract identity predicates from (:init) to group by sub-type
    llm_init = parse_problem_init(problem_pddl)
    llm_by_subtype: dict[str, list[str]] = {}
    all_llm_names: set[str] = set()

    # Collect all LLM object names from (:objects)
    obj_match = re.search(r"\(:objects\s+(.*?)\)", problem_pddl, re.DOTALL | re.IGNORECASE)
    if obj_match:
        for line in obj_match.group(1).splitlines():
            line = line.strip().rstrip(";").strip()
            if not line or line.startswith(";"):
                continue
            parts = re.split(r"\s*-\s*", line)
            if len(parts) == 2:
                for n in parts[0].split():
                    all_llm_names.add(n.lower())

    def _num_suffix(name: str) -> int:
        m = re.search(r"(\d+)$", name)
        return int(m.group(1)) if m else 0

    # Check identity predicates (is<type> <obj>), skip capability flags
    for atom in llm_init:
        if len(atom) == 2 and atom[0].startswith("is"):
            subtype = atom[0][2:]  # istable → table
            if subtype in _CAPABILITY_SUBTYPES:
                continue
            obj_name = atom[1]
            if obj_name in all_llm_names:
                llm_by_subtype.setdefault(subtype, []).append(obj_name)

    # Sort both sides by numeric suffix for stable alignment
    name_map: dict[str, str] = {}
    for subtype, llm_names in llm_by_subtype.items():
        llm_sorted = sorted(llm_names, key=_num_suffix)
        builder_sorted = sorted(builder_by_subtype.get(subtype, []), key=_num_suffix)
        for i, llm_name in enumerate(llm_sorted):
            if i < len(builder_sorted):
                name_map[llm_name] = builder_sorted[i]
            # Don't map to self here; let the fallback handle unmatched names

    # Fallback: any unmapped LLM names, try direct match or stripped match
    for llm_name in all_llm_names:
        if llm_name not in name_map:
            stripped = llm_name.replace("_", "")
            for field in ("stations", "items", "players", "containers", "meals"):
                for entity in builder_env.get(field, []):
                    if entity["name"].lower() == stripped:
                        name_map[llm_name] = entity["name"].lower()
                        break
                if llm_name in name_map:
                    break

    return name_map


def _build_nl_name_map(builder_env: dict) -> dict[str, str]:
    """Build a name map from NL-style names (robot_1) to builder names (robot1).

    Used when no problem PDDL is available (planner mode).
    """
    name_map: dict[str, str] = {}
    for field in ("stations", "items", "players", "containers", "meals"):
        for entity in builder_env.get(field, []):
            builder_name = entity["name"].lower()
            # NL names use underscores: robot_1 → robot1
            nl_name = re.sub(r'(\D)(\d)', r'\1_\2', builder_name)
            if nl_name != builder_name:
                name_map[nl_name] = builder_name
            name_map[builder_name] = builder_name
    return name_map


def simulate_with_env(
    original_json: dict,
    problem_pddl: str | None,
    plan: list[tuple[float, str, float]],
) -> tuple[bool, str]:
    """Simulate plan using the Robotouille baseline's game engine.

    Builds the env State from the original JSON, maps action/object names
    to the env's action/object system, and steps through.
    """
    try:
        build_state_fn, builder = _ensure_baseline_imports()
    except Exception as e:
        return False, f"Failed to import baseline modules: {e}"

    try:
        domain_json = json.loads(
            (_BASELINE_ROOT / "domain" / "robotouille.json").read_text()
        )
        _, builder_env = builder.build_problem(copy.deepcopy(original_json))
        state = build_state_fn(domain_json, builder_env)
    except Exception as e:
        return False, f"Failed to build env state: {e}"

    if problem_pddl:
        name_map = _build_name_map(problem_pddl, builder_env)
    else:
        name_map = _build_nl_name_map(builder_env)

    # Index env actions and objects for lookup
    env_actions_by_name: dict[str, object] = {}
    for action in state.domain.actions:
        env_actions_by_name[action.name] = action

    env_objects_by_name: dict[str, object] = {}
    for obj in state.objects:
        env_objects_by_name[obj.name.lower()] = obj

    sorted_plan = sorted(plan, key=lambda x: x[0])

    for step_idx, (start, action_str, dur) in enumerate(sorted_plan):
        tokens = action_str.lower().split()
        if not tokens:
            return False, f"Step {step_idx}: empty action"

        pddl_action_name = tokens[0]
        pddl_args = tokens[1:]

        env_action_name = _PDDL_TO_ENV_ACTION.get(pddl_action_name)
        if env_action_name is None:
            return False, f"Step {step_idx}: no env mapping for PDDL action '{pddl_action_name}'"

        env_action = env_actions_by_name.get(env_action_name)
        if env_action is None:
            return False, f"Step {step_idx}: env action '{env_action_name}' not in domain"

        # Map PDDL arg names to builder object names
        # Fallback: strip underscores (chicken_1 → chicken1)
        mapped_args = [name_map.get(a, a.replace("_", "")) for a in pddl_args]

        # Find matching valid action binding
        valid_bindings = state.actions.get(env_action, [])
        matched_binding = None
        name_matched = False
        for binding in valid_bindings:
            binding_obj_names = [v.name.lower() for v in binding.values()]
            if set(mapped_args) == set(binding_obj_names) and len(mapped_args) == len(binding_obj_names):
                name_matched = True
                if env_action.is_valid(state, binding):
                    matched_binding = binding
                    break

        if matched_binding is None:
            if name_matched:
                reason = "preconditions not met"
            else:
                reason = "no matching object binding found"
            return False, (
                f"Step {step_idx} ({action_str}): "
                f"env action '{env_action_name}' with args {mapped_args}: {reason}"
            )

        try:
            actions_list = [(env_action, matched_binding)]
            done = state.step(actions_list)
            if done:
                return True, ""
        except Exception as e:
            return False, f"Step {step_idx} ({action_str}): env step failed: {e}"

    goal_reached = state.is_goal_reached()
    if goal_reached:
        return True, ""
    return False, "Plan completed but goal not reached"


# ── Predicate normalization ──────────────────────────────────────────────

_PRED_ALIASES = {"item_at": "at", "item_on": "on"}


def _normalize_predicate(name: str) -> str:
    return _PRED_ALIASES.get(name, name)


def parse_gold_goal_predicates(original_json: dict) -> list[str]:
    goals = original_json.get("goal", [])
    return [_normalize_predicate(g["predicate"]) for g in goals]


def parse_pddl_goal_predicates(problem_pddl: str) -> list[str]:
    if not problem_pddl:
        return []
    goal_match = re.search(r"\(:goal\s+(.*?)\)\s*\)\s*$", problem_pddl, re.DOTALL)
    if not goal_match:
        goal_match = re.search(r"\(:goal\s+(.*)", problem_pddl, re.DOTALL)
    if not goal_match:
        return []
    goal_body = goal_match.group(1)
    preds = re.findall(r"\((\w+)\s+[^()]+\)", goal_body)
    preds = [p for p in preds if p not in ("and", "or", "not")]
    return [_normalize_predicate(p) for p in preds]


def parse_pddl_objects(problem_pddl: str) -> dict[str, list[str]]:
    if not problem_pddl:
        return {}
    obj_match = re.search(r"\(:objects\s+(.*?)\)", problem_pddl, re.DOTALL)
    if not obj_match:
        return {}
    result: dict[str, list[str]] = {}
    for line in obj_match.group(1).splitlines():
        line = line.strip().rstrip(";").strip()
        if not line or line.startswith(";"):
            continue
        parts = re.split(r"\s*-\s*", line)
        if len(parts) == 2:
            names = parts[0].split()
            obj_type = parts[1].strip()
            result.setdefault(obj_type, []).extend(names)
    return result


ROBOTOUILLE_ACTIONS = {"move", "pick-up", "place", "cook", "fry", "fry_cut_item",
                       "stack", "cut", "unstack"}


def parse_plan_action_types(plan: list) -> dict[str, int]:
    counts: dict[str, int] = {}
    for _, action_str, _ in (plan or []):
        action_name = action_str.split()[0]
        counts[action_name] = counts.get(action_name, 0) + 1
    return counts


def count_gold_objects(original_json: dict) -> dict[str, int]:
    return {
        "stations": len(original_json.get("stations", [])),
        "items": len(original_json.get("items", [])),
        "players": len(original_json.get("players", [])),
    }


# ── Main evaluation function ────────────────────────────────────────────


def evaluate_record(
    problem_pddl: Optional[str],
    plan: Optional[list],
    original_json: Optional[dict],
    error: Optional[str],
    domain_pddl: Optional[str] = None,
    record_id: Optional[str] = None,
) -> dict:
    """Evaluate a single Robotouille formalizer result.

    Returns a dict with:
      done, steps, optimal_steps, steps_ratio,
      simulation_success, simulation_error,
      env_simulation_success, env_simulation_error,
      goal_predicate_recall, goal_count_match, plan_action_types, ...
    """
    solved = plan is not None and len(plan) > 0
    plan_length = len(plan) if plan else 0

    optimal = get_optimal_steps(record_id) if record_id else None

    result: dict = {
        "done": solved,
        "steps": plan_length,
        "optimal_steps": optimal,
        "steps_ratio": (plan_length / optimal) if optimal and solved else None,
    }

    # ── PDDL simulation ─────────────────────────────────────────────
    if solved and domain_pddl and problem_pddl:
        sim_ok, sim_err = simulate_plan(domain_pddl, problem_pddl, plan)
        result["simulation_success"] = sim_ok
        result["simulation_error"] = sim_err
    else:
        result["simulation_success"] = None
        result["simulation_error"] = None

    # ── Robotouille env simulation ───────────────────────────────────
    if solved and original_json:
        try:
            env_ok, env_err = simulate_with_env(original_json, problem_pddl, plan)
            result["env_simulation_success"] = env_ok
            result["env_simulation_error"] = env_err
        except Exception as e:
            result["env_simulation_success"] = False
            result["env_simulation_error"] = str(e)
    else:
        result["env_simulation_success"] = None
        result["env_simulation_error"] = None

    if not original_json:
        return result

    gold_preds = parse_gold_goal_predicates(original_json)
    pddl_preds = parse_pddl_goal_predicates(problem_pddl or "")

    gold_pred_counts: dict[str, int] = {}
    for p in gold_preds:
        gold_pred_counts[p] = gold_pred_counts.get(p, 0) + 1
    pddl_pred_counts: dict[str, int] = {}
    for p in pddl_preds:
        pddl_pred_counts[p] = pddl_pred_counts.get(p, 0) + 1

    matched = 0
    for pred, count in gold_pred_counts.items():
        matched += min(count, pddl_pred_counts.get(pred, 0))
    total_gold = len(gold_preds)

    result["goal_predicate_recall"] = matched / total_gold if total_gold else None
    result["goal_count_match"] = len(pddl_preds) == len(gold_preds)
    result["gold_goal_count"] = len(gold_preds)
    result["pddl_goal_count"] = len(pddl_preds)
    result["object_count"] = parse_pddl_objects(problem_pddl or "")
    result["gold_object_count"] = count_gold_objects(original_json)
    result["plan_action_types"] = parse_plan_action_types(plan) if plan else {}

    return result


def summarize_eval(eval_results: list[dict]) -> dict:
    n = len(eval_results)
    if n == 0:
        return {}

    n_done = sum(1 for r in eval_results if r.get("done"))
    accuracy = n_done / n

    steps = [r["steps"] for r in eval_results if r.get("done")]
    average_steps = sum(steps) / len(steps) if steps else 0.0

    ratios = [r["steps_ratio"] for r in eval_results
              if r.get("steps_ratio") is not None]
    avg_steps_ratio = sum(ratios) / len(ratios) if ratios else None

    # PDDL simulation
    sim_tested = [r for r in eval_results if r.get("simulation_success") is not None]
    n_sim_ok = sum(1 for r in sim_tested if r["simulation_success"])
    simulation_success_rate = n_sim_ok / len(sim_tested) if sim_tested else None

    # Env simulation
    env_tested = [r for r in eval_results if r.get("env_simulation_success") is not None]
    n_env_ok = sum(1 for r in env_tested if r["env_simulation_success"])
    env_simulation_success_rate = n_env_ok / len(env_tested) if env_tested else None

    recalls = [r["goal_predicate_recall"] for r in eval_results
               if r.get("goal_predicate_recall") is not None]
    avg_goal_recall = sum(recalls) / len(recalls) if recalls else None

    n_goal_match = sum(1 for r in eval_results if r.get("goal_count_match"))
    goal_count_match_rate = n_goal_match / n

    all_action_types: dict[str, int] = {}
    for r in eval_results:
        for action, count in r.get("plan_action_types", {}).items():
            all_action_types[action] = all_action_types.get(action, 0) + count

    return {
        "accuracy": accuracy,
        "num_done": n_done,
        "average_steps": average_steps,
        "avg_steps_ratio": avg_steps_ratio,
        "num_examples": n,
        "simulation_success_rate": simulation_success_rate,
        "num_simulation_tested": len(sim_tested),
        "num_simulation_success": n_sim_ok,
        "env_simulation_success_rate": env_simulation_success_rate,
        "num_env_simulation_tested": len(env_tested),
        "num_env_simulation_success": n_env_ok,
        "avg_goal_predicate_recall": avg_goal_recall,
        "goal_count_match_rate": goal_count_match_rate,
        "plan_action_type_totals": all_action_types,
    }
