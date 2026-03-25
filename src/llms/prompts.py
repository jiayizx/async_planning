import datasets
from src.llms import get_model
from src.evaluation.accuracy_metrics import (
    exact_match,
    parse_gold_seconds,
    parse_prediction_seconds,
)
from src.experiments.utils import (
    build_llm_client, 
    clean_question,
)

# ── Baseline prompts ────────────────────────────────────────────────────

SYSTEM_PROMPT_TEMPLATE = """You are a helpful plan organizer."""


# ── PDDL / Formalizer prompts ──────────────────────────────────────────

# PDDL_SYSTEM_PROMPT = """
# You are a PDDL expert. Given an asynchronous planning problem, write the domain and problem files in minimal PDDL 2.1 format.

# Return the responses in JSON format with the key: "responses" (list of dicts). Each dictionary must include:
# - 'domain_pddl': the domain in PDDL 2.1 format as a string.
# - 'problem_pddl': the problem in PDDL 2.1 format as a string.
# """

PDDL_SYSTEM_PROMPT = """
You are a PDDL expert. Given an asynchronous planning problem, write the domain and problem files in minimal PDDL 2.1 format.

ENCODING: Use PARAMETERLESS actions (no step type, no step objects).
Each action gets its own pair of predicates: `(X_pending)` and `(X_done)`.
`X_done` is BOTH the "step completed" marker AND the semantic predicate for successors.

CRITICAL PDDL RULES for OPTIC planner compatibility:
1. Use ONLY `:durative-actions` in `:requirements`. Do NOT use `:typing`, `:negative-preconditions`,
   `:adl`, or `:disjunctive-preconditions`.
2. NEVER use `(not ...)` in action preconditions. Instead, use a positive "_pending" predicate:
   - BAD:  `:condition (at start (not (task_done)))`
   - GOOD: `:condition (at start (task_pending))`
   Then in `:effect`, set `(not (task_pending))` and `(task_done)`.
   Note: `(not ...)` is allowed in effects, just not in conditions.
3. ALL predicates must be declared in the `:predicates` block before use.
4. No `:types` block or `:objects` block is needed — actions take NO parameters.
5. Use `(:durative-action ...)` with `:duration`, `:condition`, and `:effect` — not `(:action ...)`.
6. Use `(at start ...)`, `(at end ...)`, or `(over all ...)` inside `:condition` and `:effect`.
7. Initialize ALL "_pending" predicates as true in the problem's `:init`.

CRITICAL SEMANTIC RULES — failure to follow these causes the planner to find wrong shortcuts:

8. Every action MUST:
   (a) consume its own `(X_pending)` at start: `(at start (not (X_pending)))`
   (b) produce its own `(X_done)` at end: `(at end (X_done))`
   (c) require ALL direct predecessors' `_done` predicates as `(at start ...)` conditions.
   This is a DAG (not a linear chain): a step may have multiple direct predecessors and ALL must be
   enforced, otherwise the planner can skip slow predecessors and find an illegally short makespan.
   - BAD (step C requires only A but not B, so planner skips slow B):
     ```
     (:durative-action do_A :parameters () :duration (= ?duration 3600)
       :condition (at start (a_pending))
       :effect (and (at start (not (a_pending))) (at end (a_done))))
     (:durative-action do_B :parameters () :duration (= ?duration 7200)
       :condition (at start (b_pending))
       :effect (and (at start (not (b_pending))) (at end (b_done))))
     (:durative-action do_C :parameters () :duration (= ?duration 600)
       :condition (and (at start (c_pending)) (at start (a_done)))   ; ← missing (b_done)!
       :effect (and (at start (not (c_pending))) (at end (c_done))))
     ```
   - GOOD (step C requires BOTH A and B — the full AND-join):
     ```
     (:durative-action do_A :parameters () :duration (= ?duration 3600)
       :condition (at start (a_pending))
       :effect (and (at start (not (a_pending))) (at end (a_done))))
     (:durative-action do_B :parameters () :duration (= ?duration 7200)
       :condition (at start (b_pending))
       :effect (and (at start (not (b_pending))) (at end (b_done))))
     (:durative-action do_C :parameters () :duration (= ?duration 600)
       :condition (and (at start (c_pending)) (at start (a_done)) (at start (b_done)))   ; ← both
       :effect (and (at start (not (c_pending))) (at end (c_done))))
     ```
   Steps with NO predecessors need only `(at start (X_pending))` in their condition.

9. The problem's `:goal` MUST include ALL `_done` predicates (one per action).
   This ensures the planner cannot skip any step.
   - BAD (missing some predicates — planner can skip steps with no successors):
     ```
     (:goal (and (tickets_booked) (departure_prepared)))
     ; ← missing (luggage_packed), (taxi_called), etc.
     ```
   - GOOD (every action's done predicate required):
     ```
     (:goal (and (tickets_booked) (luggage_packed) (taxi_called) ... (departure_prepared)))
     ```

10. Every action's `:duration` MUST come from the time stated in the problem for that step.
    NEVER give any action a duration of 1 second (or any tiny placeholder) unless the problem
    explicitly states that step takes 1 second.
    Do NOT split a step into "the real work" + a 1-second "state confirmation" action —
    `X_done` is simply an effect of the step's action, not a separate action.
    - BAD (the act of "buying beer" is given 1 second; its real duration is absorbed into prior steps):
      ```
      (:durative-action give_money  :parameters () :duration (= ?duration 120) :effect (at end (money_given)))
      (:durative-action buy_beer    :parameters () :duration (= ?duration 1)   :effect (at end (beer_bought)))
      ; "buy_beer" should have the duration from the problem, not 1 second
      ```
    - GOOD (each step uses the duration stated in the problem):
      ```
      (:durative-action give_money  :parameters () :duration (= ?duration 120) :effect (at end (money_given)))
      (:durative-action buy_beer    :parameters () :duration (= ?duration 60)  :effect (at end (beer_bought)))
      ```

11. A `:durative-action` may only have ONE `:condition` keyword. If multiple conditions are needed,
    wrap them ALL in a single `(and ...)` block. Never write multiple separate `:condition` lines.
    - BAD (PDDL parsers only keep the last `:condition`, silently dropping all others):
      ```
      :condition (at start (supplies_obtained))
      :condition (at start (task_pending))
      ```
    - GOOD:
      ```
      :condition (and (at start (supplies_obtained)) (at start (task_pending)))
      ```

12. The number of `:durative-actions` MUST exactly equal the number of steps (one action per step).
    Never generate more or fewer actions than steps — extra actions let the planner skip the most
    expensive one. Correspondingly, initialize exactly N `_pending` predicates in `:init`.
    - BAD (7 actions but only 6 pending predicates initialized — planner ignores the slowest):
      ```
      (:init (a_pending) (b_pending) (c_pending) (d_pending) (e_pending) (f_pending))
      ; assemble_X (1200s) has no a_pending in :init, so the planner never runs it
      ```
    - GOOD (7 actions → 7 pending predicates in :init):
      ```
      (:init (a_pending) (b_pending) (c_pending) (d_pending) (e_pending) (f_pending) (g_pending))
      ```

DEPENDENCY ANALYSIS — do this mentally before writing any PDDL:
For EACH step in the problem, ask: "What must be fully completed before this step can start?"
- Check for EXPLICIT cues: "after X", "once Y is done", "following Z", numbered sequences.
- Check for IMPLICIT cues: logical necessity (cannot cook before preheating; cannot assemble
  before all parts are ready; cannot depart before packing AND booking).
- A step with multiple prerequisites needs ALL of them as (at start ...) conditions (Rule 8).
Missing even one dependency lets the planner find an illegally short makespan.

Return the responses in JSON format with the key: "responses" (list of dicts). Each dictionary must include:
- 'domain_pddl': the domain in PDDL 2.1 format as a string.
- 'problem_pddl': the problem in PDDL 2.1 format as a string.
- 'step_actions': list of PDDL action names in step order. step_actions[0] is the action name for Step 1, step_actions[1] for Step 2, etc.
"""


PDDL_USER_TEMPLATE = """\
Here is an asynchronous planning problem.

{question}
"""


SYNTAX_RETRY_TEMPLATE = """\
The PDDL you generated caused the following error from the OPTIC planner:

{error}

Given the previous PDDL and the error message:
1. Analyze the error message and identify ALL issues (there may be more than one).
2. Think step by step about how each issue relates to the PDDL syntax or semantics.
3. Fix ALL issues and return the corrected domain and problem PDDL.
"""

SEMANTIC_RETRY_TEMPLATE = """\
Your PDDL was syntactically valid and the OPTIC planner found a plan, but the \
computed makespan ({pred_seconds} seconds) is incorrect.

Recall: the correct answer is the *critical path* — the minimum completion time \
assuming infinite parallel resources.

Please recheck your PDDL:
1. **Step durations** — does every :durative-action have the exact duration stated \
in the problem (convert to seconds if needed)?
2. **Dependency constraints** — for every "Step A must precede Step B", is there a \
condition ensuring B cannot start until A finishes?
3. **No spurious constraints** — are there extra conditions or orderings not in the \
original problem that artificially lengthen the critical path?

Return the fully corrected domain and problem PDDL.
"""

# Backward-compatible alias
RETRY_USER_TEMPLATE = SYNTAX_RETRY_TEMPLATE



def _format_example_no_cot(example: dict, example_idx: int) -> str:
    question = clean_question(example["question"]) + "\n" + "Do NOT explain your reasoning. Output ONLY your final answer inside <answer></answer> tags (e.g. <answer>1 min</answer>)."
    golden_answer = parse_gold_seconds(example['answer'])
    return f"<Example_{example_idx}>\n{question}\n<answer>{golden_answer} seconds</answer>\n</Example_{example_idx}>"


def _build_cot_examples(examples: list) -> list[str]:
    """Generate CoT few-shot examples in parallel via batch_chat."""
    llm_client = get_model(model_name="openai/gpt-4.1-mini", config={"temperature": 0.0, "max_tokens": 2048}, num_workers=len(examples))

    questions = []
    all_messages = []
    for example in examples:
        q = clean_question(example['question']) + "\n" + "Let's think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>).\n"
        questions.append(q)
        all_messages.append([
            {"role": "system", "content": SYSTEM_PROMPT_TEMPLATE},
            {"role": "user", "content": q},
        ])

    responses = llm_client.batch_chat(all_messages, desc="Generating CoT examples")

    results = []
    for idx, (q, resp) in enumerate(zip(questions, responses)):
        results.append(f"<Example_{idx+1}>\n{q}\n{resp}\n</Example_{idx+1}>")
    return results


def _format_query(question: str, cot: bool) -> str:
    if cot:
        return (
            f"{question}\n"
            "Let's think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>)."
        )
    return (
        f"{question}\n"
        "Do NOT explain your reasoning. Output ONLY your final answer inside <answer></answer> tags (e.g. <answer>1 min</answer>)."
    )


def build_icl_prefix(
    CoT: bool,
    icl_examples: int,
    dataset: str,
) -> str:
    """Build the ICL examples prefix ONCE. Returns empty string if icl_examples == 0."""
    if icl_examples <= 0:
        return ""

    # if dataset == "asynchow":
    #     train_ds = datasets.load_dataset("fangrulin/asynchow", split="train")
    # else:
        # raise ValueError(f"Unknown dataset: {dataset}")
    train_ds = datasets.load_dataset("fangrulin/asynchow", split="train")

    examples = train_ds.shuffle(seed=42).select(range(icl_examples))

    parts = ["### Examples:"]
    if CoT:
        parts.extend(_build_cot_examples(list(examples)))
    else:
        for example_idx, example in enumerate(examples):
            parts.append(_format_example_no_cot(example, example_idx=example_idx + 1))

    return "\n\n".join(parts)


def get_prompts(
    question: str,
    CoT: bool,
    icl_prefix: str = "",
) -> str:
    """Build the final user prompt for a single test question."""
    parts = []
    if icl_prefix:
        parts.append(icl_prefix)
    parts.append(_format_query(question, cot=CoT))
    return "\n\n".join(parts)


# ── Old parameterized encoding prompts (Formalizer / Formalizer+) ──────

PDDL_SYSTEM_PROMPT_OLD = """
You are a PDDL expert. Given an asynchronous planning problem, write the domain and problem files in minimal PDDL 2.1 format.

CRITICAL PDDL RULES for OPTIC planner compatibility:
1. Use ONLY `:durative-actions` and `:typing` in `:requirements`. Do NOT use `:negative-preconditions`, `:adl`, or `:disjunctive-preconditions`.
2. NEVER use `(not ...)` in action preconditions. Instead, create positive "not_done" predicates:
   - BAD:  `:condition (at start (not (task_done)))`
   - GOOD: `:condition (at start (task_pending))`
   Then in `:effect`, set `(not (task_pending))` and `(task_done)`.
   Note: `(not ...)` is allowed in effects, just not in conditions.
3. ALL predicates must be declared in the `:predicates` block before use.
4. ALL types must be declared in the `:types` block.
5. Use `(:durative-action ...)` with `:duration`, `:condition`, and `:effect` — not `(:action ...)`.
6. Use `(at start ...)`, `(at end ...)`, or `(over all ...)` inside `:condition` and `:effect`.
7. Initialize ALL "pending" predicates as true in the problem's `:init`.

CRITICAL SEMANTIC RULES — failure to follow these causes the planner to find wrong shortcuts:
8. Every action MUST produce a UNIQUE semantic predicate (besides step_done) in its `(at end ...)` effect.
   Every action that has one or more predecessors listed in the "ordering constraints" MUST require
   ALL of those predecessors' semantic predicates as `(at start ...)` conditions — not just one of them.
   This is a DAG (not a linear chain): a step may have multiple direct predecessors and ALL must be
   enforced, otherwise the planner can skip slow predecessors and find an illegally short makespan.
   - BAD (step C requires only A but not B, so planner skips slow B):
     ```
     (:durative-action do_A :duration (= ?duration 3600)
       :condition (at start (step_pending ?s))
       :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (a_done))))
     (:durative-action do_B :duration (= ?duration 7200)
       :condition (at start (step_pending ?s))
       :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (b_done))))
     (:durative-action do_C :duration (= ?duration 600)
       :condition (and (at start (step_pending ?s)) (at start (a_done)))   ; ← missing (b_done)!
       :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c_done))))
     ```
   - GOOD (step C requires BOTH A and B — the full AND-join):
     ```
     (:durative-action do_A :duration (= ?duration 3600)
       :condition (at start (step_pending ?s))
       :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (a_done))))
     (:durative-action do_B :duration (= ?duration 7200)
       :condition (at start (step_pending ?s))
       :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (b_done))))
     (:durative-action do_C :duration (= ?duration 600)
       :condition (and (at start (step_pending ?s)) (at start (a_done)) (at start (b_done)))   ; ← both
       :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c_done))))
     ```
   Steps with NO predecessors listed in the constraints need only `(at start (step_pending ?s))`.
9. The problem's `:goal` MUST include the FINAL semantic predicate (the outcome of the last action in the chain),
   in addition to all `(step_done stepN)` conditions.
   - BAD (planner completes all steps trivially using only the fastest action):
     ```
     (:goal (and (step_done step1) (step_done step2) ... (step_done step6)))
     ```
   - GOOD (forces the planner to execute the full causal chain):
     ```
     (:goal (and (step_done step1) (step_done step2) ... (step_done step6) (departure_prepared)))
     ```
10. Every action's `:duration` MUST come from the time stated in the problem for that step.
    NEVER give any action a duration of 1 second (or any tiny placeholder) unless the problem
    explicitly states that step takes 1 second.
    Do NOT split a step into "the real work" + a 1-second "state confirmation" action —
    the semantic predicate is simply an effect of the step's action, not a separate action.
    - BAD (the act of "buying beer" is given 1 second; its real duration is absorbed into prior steps):
      ```
      (:durative-action give_money      :duration (= ?duration 120) :effect (at end (money_given)))
      (:durative-action buy_beer        :duration (= ?duration 1)   :effect (at end (beer_bought)))
      ; "buy_beer" should have the duration from the problem, not 1 second
      ```
    - GOOD (each step uses the duration stated in the problem):
      ```
      (:durative-action give_money      :duration (= ?duration 120) :effect (at end (money_given)))
      (:durative-action buy_beer        :duration (= ?duration 60)  ; ← from the problem statement
        :effect (and (at end (step_done ?s)) (at end (beer_bought))))
      ```
11. A `:durative-action` may only have ONE `:condition` keyword. If multiple conditions are needed,
    wrap them ALL in a single `(and ...)` block. Never write multiple separate `:condition` lines.
    - BAD (PDDL parsers only keep the last `:condition`, silently dropping all others):
      ```
      :condition (at start (supplies_obtained))
      :condition (at start (step_pending ?s))
      ```
    - GOOD:
      ```
      :condition (and (at start (supplies_obtained)) (at start (step_pending ?s)))
      ```
12. The number of `:durative-actions` MUST exactly equal the number of steps (one action per step).
    Declare exactly N step objects (step1 ... stepN) for N steps. Never generate more or fewer actions
    than steps — extra actions let the planner skip the most expensive one.
    - BAD (7 actions but only 6 step objects — planner skips the slowest action):
      ```
      (:objects step1 step2 step3 step4 step5 step6 - step)
      ; but domain defines 7 durative-actions including an expensive assemble_X (1200s)
      ; planner uses the 6 cheapest actions and ignores assemble_X entirely
      ```
    - GOOD:
      ```
      (:objects step1 step2 step3 step4 step5 step6 step7 - step)  ; 7 steps → 7 actions
      ```

Return the responses in JSON format with the key: "responses" (list of dicts). Each dictionary must include:
- 'domain_pddl': the domain in PDDL 2.1 format as a string.
- 'problem_pddl': the problem in PDDL 2.1 format as a string.
"""


DEP_ANALYSIS_SYSTEM_PROMPT = """\
You are an expert at analyzing step dependencies in planning problems.
Given a planning problem with N steps, output a concise dependency analysis.
For each step, list which steps MUST be fully completed before it can start.
Include BOTH explicit constraints (e.g. "Step A must precede Step B") and
implicit ones (logical necessity: cannot cook before heating; cannot assemble
before all parts are ready).
Format: one line per step:
  Step N: [no prerequisites | requires Step X, Step Y, ...]
Output ONLY the dependency list, no extra explanation."""


DEP_ANALYSIS_USER_TEMPLATE = """\
Here is an asynchronous planning problem. Analyze the dependencies between steps.

{question}

For each step, list ALL steps that must be fully completed before it can start."""


PDDL_FEW_SHOT_EXAMPLES = [
    {
        "question": "To go to an amusement park, here are the steps and the times needed for each step.\nStep 1. Get some money (30 seconds)\nStep 2. Find a nearby amusement park (5 minutes)\nStep 3. Travel to the park (15 minutes)\nStep 4. Purchase a pass (1 minutes)\nStep 5. Go into the park (1 minutes)\n\n\nThese ordering constraints need to be obeyed when executing above steps:\nStep 1 must precede step 4.\nStep 2 must precede step 3.\nStep 3 must precede step 4.\nStep 4 must precede step 5.\n\n\nQuestion: Assume that you need to execute all the steps to complete the task and that infinite resources are available. What is the shortest possible time to go to an amusement park? Think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>)",
        "domain_pddl": """(define (domain amusement_park)
  (:requirements :durative-actions)
  (:predicates
    (get_money_pending)
    (have_money)
    (find_park_pending)
    (park_found)
    (travel_pending)
    (at_park)
    (purchase_pass_pending)
    (have_pass)
    (enter_park_pending)
    (in_park)
  )

  (:durative-action get_money
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (get_money_pending))
    :effect (and
      (at start (not (get_money_pending)))
      (at end (have_money))
    )
  )

  (:durative-action find_park
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (find_park_pending))
    :effect (and
      (at start (not (find_park_pending)))
      (at end (park_found))
    )
  )

  (:durative-action travel_to_park
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (travel_pending))
      (at start (park_found))
    )
    :effect (and
      (at start (not (travel_pending)))
      (at end (at_park))
    )
  )

  (:durative-action purchase_pass
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (purchase_pass_pending))
      (at start (have_money))
      (at start (at_park))
    )
    :effect (and
      (at start (not (purchase_pass_pending)))
      (at end (have_pass))
    )
  )

  (:durative-action enter_park
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (enter_park_pending))
      (at start (have_pass))
    )
    :effect (and
      (at start (not (enter_park_pending)))
      (at end (in_park))
    )
  )
)""",
        "problem_pddl": """(define (problem go_to_amusement_park)
  (:domain amusement_park)
  (:init
    (get_money_pending)
    (find_park_pending)
    (travel_pending)
    (purchase_pass_pending)
    (enter_park_pending)
  )
  (:goal (and
    (have_money)
    (park_found)
    (at_park)
    (have_pass)
    (in_park)
  ))
)""",
        "step_actions": ["get_money", "find_park", "travel_to_park", "purchase_pass", "enter_park"],
    },
    {
        "question": "To make breakfast in bed for their mom, here are the steps and the times needed for each step.\nStep 1. heat up pan on stove (5 minutes)\nStep 2. crack eggs in a bowl (3 minutes)\nStep 3. whisk eggs to scramble (3 minutes)\nStep 4. pour in whisked eggs (10 seconds)\nStep 5. scramble as cooking (10 minutes)\nStep 6. add butter to pain (10 seconds)\nStep 7. put eggs on plate (10 seconds)\n\n\nThese ordering constraints need to be obeyed when executing above steps:\nStep 1 must precede step 6.\nStep 2 must precede step 3.\nStep 3 must precede step 4.\nStep 4 must precede step 5.\nStep 5 must precede step 7.\nStep 6 must precede step 4.\n\n\nQuestion: Assume that you need to execute all the steps to complete the task and that infinite resources are available. What is the shortest possible time to make breakfast in bed for their mom? Think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>)",
        "domain_pddl": """(define (domain breakfast)
  (:requirements :durative-actions)
  (:predicates
    (heat_pan_pending)
    (pan_heated)
    (crack_eggs_pending)
    (eggs_cracked)
    (whisk_eggs_pending)
    (eggs_whisked)
    (add_butter_pending)
    (butter_added)
    (pour_eggs_pending)
    (eggs_poured)
    (scramble_cook_pending)
    (eggs_cooked)
    (plate_eggs_pending)
    (eggs_plated)
  )

  (:durative-action heat_pan
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (heat_pan_pending))
    :effect (and
      (at start (not (heat_pan_pending)))
      (at end (pan_heated))
    )
  )

  (:durative-action crack_eggs
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (crack_eggs_pending))
    :effect (and
      (at start (not (crack_eggs_pending)))
      (at end (eggs_cracked))
    )
  )

  (:durative-action whisk_eggs
    :parameters ()
    :duration (= ?duration 180)
    :condition (and
      (at start (whisk_eggs_pending))
      (at start (eggs_cracked))
    )
    :effect (and
      (at start (not (whisk_eggs_pending)))
      (at end (eggs_whisked))
    )
  )

  (:durative-action add_butter
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (add_butter_pending))
      (at start (pan_heated))
    )
    :effect (and
      (at start (not (add_butter_pending)))
      (at end (butter_added))
    )
  )

  (:durative-action pour_eggs
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (pour_eggs_pending))
      (at start (eggs_whisked))
      (at start (butter_added))
    )
    :effect (and
      (at start (not (pour_eggs_pending)))
      (at end (eggs_poured))
    )
  )

  (:durative-action scramble_cook
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (scramble_cook_pending))
      (at start (eggs_poured))
    )
    :effect (and
      (at start (not (scramble_cook_pending)))
      (at end (eggs_cooked))
    )
  )

  (:durative-action plate_eggs
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (plate_eggs_pending))
      (at start (eggs_cooked))
    )
    :effect (and
      (at start (not (plate_eggs_pending)))
      (at end (eggs_plated))
    )
  )
)""",
        "problem_pddl": """(define (problem breakfast-problem)
  (:domain breakfast)
  (:init
    (heat_pan_pending)
    (crack_eggs_pending)
    (whisk_eggs_pending)
    (add_butter_pending)
    (pour_eggs_pending)
    (scramble_cook_pending)
    (plate_eggs_pending)
  )
  (:goal (and
    (pan_heated)
    (eggs_cracked)
    (eggs_whisked)
    (butter_added)
    (eggs_poured)
    (eggs_cooked)
    (eggs_plated)
  ))
)""",
        # Step 1→heat_pan, 2→crack_eggs, 3→whisk_eggs, 4→pour_eggs, 5→scramble_cook, 6→add_butter, 7→plate_eggs
        "step_actions": ["heat_pan", "crack_eggs", "whisk_eggs", "pour_eggs", "scramble_cook", "add_butter", "plate_eggs"],
    },
    {
        "question": "To grill with friends, here are the steps and the times needed for each step.\nStep 1. light the grill (3 minutes)\nStep 2. let the charcoal warm up (20 minutes)\nStep 3. make the hamburger patties (5 minutes)\nStep 4. cook the hamburgers (15 minutes)\nStep 5. put the hamburgers on a bun (5 minutes)\n\n\nThese ordering constraints need to be obeyed when executing above steps:\nStep 1 must precede step 2 and 3.\nStep 2 must precede step 4.\nStep 3 must precede step 4.\nStep 4 must precede step 5.\n\n\nQuestion: Assume that you need to execute all the steps to complete the task and that infinite resources are available. What is the shortest possible time to grill with friends? Think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>)",
        "domain_pddl": """(define (domain grill-with-friends)
  (:requirements :durative-actions)
  (:predicates
    (light_grill_pending)
    (grill_lit)
    (warm_charcoal_pending)
    (charcoal_warm)
    (make_patties_pending)
    (patties_made)
    (cook_burgers_pending)
    (burgers_cooked)
    (put_on_bun_pending)
    (burgers_on_bun)
  )

  (:durative-action light_grill
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (light_grill_pending))
    :effect (and
      (at start (not (light_grill_pending)))
      (at end (grill_lit))
    )
  )

  (:durative-action warm_charcoal
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (warm_charcoal_pending))
      (at start (grill_lit))
    )
    :effect (and
      (at start (not (warm_charcoal_pending)))
      (at end (charcoal_warm))
    )
  )

  (:durative-action make_patties
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (make_patties_pending))
      (at start (grill_lit))
    )
    :effect (and
      (at start (not (make_patties_pending)))
      (at end (patties_made))
    )
  )

  (:durative-action cook_burgers
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (cook_burgers_pending))
      (at start (charcoal_warm))
      (at start (patties_made))
    )
    :effect (and
      (at start (not (cook_burgers_pending)))
      (at end (burgers_cooked))
    )
  )

  (:durative-action put_on_bun
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (put_on_bun_pending))
      (at start (burgers_cooked))
    )
    :effect (and
      (at start (not (put_on_bun_pending)))
      (at end (burgers_on_bun))
    )
  )
)""",
        "problem_pddl": """(define (problem grill-with-friends-problem)
  (:domain grill-with-friends)
  (:init
    (light_grill_pending)
    (warm_charcoal_pending)
    (make_patties_pending)
    (cook_burgers_pending)
    (put_on_bun_pending)
  )
  (:goal (and
    (grill_lit)
    (charcoal_warm)
    (patties_made)
    (burgers_cooked)
    (burgers_on_bun)
  ))
)""",
    "step_actions": ["light_grill", "warm_charcoal", "make_patties", "cook_burgers", "put_on_bun"],
   },
]


# ── Robotouille problem-only formalizer prompt ─────────────────────────

ROBOTOUILLE_SYSTEM_PROMPT_OLD = """\
You are a PDDL expert.

You will be given:
1. A PDDL **domain** file that defines all types, predicates and actions.
2. A **JSON** description of a Robotouille kitchen environment.

Your job is to write ONLY the **problem PDDL** file that is compatible with the given domain.

## JSON Schema

```
{
  "stations": [{"name": str, "x": int, "y": int,
                "pddl_name": str}],         // ← USE THIS as the PDDL object name
  "items": [
    {"name": str, "x": int, "y": int,
     "predicates": ["iscookable", "iscuttable", ...],
     "stack-level": int,
     "pddl_name": str,                      // ← USE THIS as the PDDL object name
     "station": str,                        // ← station pddl_name where this item starts
     "atop": str | null,                    // ← pddl_name of item below (null if stack-level 0)
     "held_by": str | null}                 // ← player pddl_name holding this item (null if on a station)
  ],
  "players": [{"name": str, "pddl_name": str,
               "facing_station": str,       // ← station pddl_name the player faces at start
               "holding": [str]}],          // ← list of item pddl_names the player is holding (empty = empty-handed)
  "goal": [{"predicate": str, "args": [str], "ids": [int]}],
  "goal_description": str
}
```

The `pddl_name`, `station`, `atop`, `facing_station`, `held_by`, and `holding` fields are pre-computed for you.
Use them directly — do NOT recompute from coordinates.

## RULES

1. Read the domain carefully — use ONLY the types, predicates and action names it defines.
2. Declare all objects in `:objects` with their correct types, using each entity's `pddl_name`.
3. In `:init`, set up ALL required predicates:
   - Identity predicates for every object using its `pddl_name`
     (e.g. `(istable table_1)`, `(isbread bread_1)`, `(isrobot robot_1)`).
   - Player location: `(loc <player.pddl_name> <player.facing_station>)`.
   - Capability flags from item `predicates` field (e.g. `(iscookable chicken_1)`).
   - Spatial predicates — for items where `held_by` is null, use the pre-computed `station` and `atop` fields:
       atop is null  (stack-level 0):  `(on item.pddl_name item.station)` AND `(at item.pddl_name item.station)`
       atop is set   (stack-level > 0): `(atop item.pddl_name item.atop)` AND `(at item.pddl_name item.station)`
                                         — do NOT emit `(on ...)` for stacked items
   - For items where `held_by` is NOT null: the item is held by that player.
     Use `(has player.pddl_name item.pddl_name)` (NOT `on` or `at`).
   - `(clear item.pddl_name)` for every item that no other item's `atop` points to AND is not held.
   - `(empty station.pddl_name)` for every station that no item's `station` field references with stack-level 0.
   - `(vacant station.pddl_name)` for every station not occupied by a player.
   - Player hand state: if `player.holding` is empty → `(nothing player.pddl_name)`.
     If `player.holding` is non-empty → do NOT add `(nothing ...)` — the player is already holding items.
   - `(item-free item.pddl_name)` for EVERY item — all items start free (not being cooked/cut/fried).
4. In `:goal`, each goal predicate has a pre-resolved `pddl_args` field — USE THESE DIRECTLY as object names.
   Map predicate names as follows:
   - `item_on`  → `(on item station)`
   - `item_at`  → `(at item station)`
   - `iscooked` → `(iscooked item)`
   - `iscut`    → `(iscut item)`
   - `isfried`  → `(isfried item)`
   - `clear`    → `(clear item)`
   - `atop`     → `(atop item1 item2)`
   Translate ONLY the predicates listed in the JSON `goal` array — do not add extra predicates.
5. The domain name in `(:domain ...)` must match the domain's `(define (domain ...))`.

Return JSON with: {"problem_pddl": "<the full problem PDDL string>"}
"""

ROBOTOUILLE_SYSTEM_PROMPT = """\
You are a PDDL expert.

You will be given:
1. A PDDL **domain** file (NO typing — flat untyped predicates and parameters).
2. A **JSON** description of a Robotouille kitchen environment.

Your job is to write ONLY the **problem PDDL** file that is compatible with the given domain.

ENCODING: The domain uses NO `:typing`. Declare `:objects` as a FLAT list without type annotations.

## JSON Schema

```
{
  "stations": [{"name": str, "x": int, "y": int,
                "pddl_name": str}],         // ← USE THIS as the PDDL object name
  "items": [
    {"name": str, "x": int, "y": int,
     "predicates": ["iscookable", "iscuttable", ...],
     "stack-level": int,
     "pddl_name": str,                      // ← USE THIS as the PDDL object name
     "station": str,                        // ← station pddl_name where this item starts
     "atop": str | null,                    // ← pddl_name of item below (null if stack-level 0)
     "held_by": str | null}                 // ← player pddl_name holding this item (null if on a station)
  ],
  "players": [{"name": str, "pddl_name": str,
               "facing_station": str,       // ← station pddl_name the player faces at start
               "holding": [str]}],          // ← list of item pddl_names the player is holding (empty = empty-handed)
  "goal": [{"predicate": str, "args": [str], "ids": [int]}],
  "goal_description": str
}
```

The `pddl_name`, `station`, `atop`, `facing_station`, `held_by`, and `holding` fields are pre-computed for you.
Use them directly — do NOT recompute from coordinates.

## RULES

1. Read the domain carefully — use ONLY the predicates and action names it defines.
2. Declare all objects in `:objects` as a FLAT list with NO type annotations:
   `(:objects robot_1 table_1 stove_1 chicken_1 bread_1 ...)` — all on one level, no `- type` suffixes.
3. In `:init`, set up ALL required predicates:
   - Identity predicates for every object using its `pddl_name`
     (e.g. `(istable table_1)`, `(isbread bread_1)`, `(isrobot robot_1)`).
   - Player location: `(loc <player.pddl_name> <player.facing_station>)`.
   - Capability flags from item `predicates` field (e.g. `(iscookable chicken_1)`).
   - Spatial predicates — for items where `held_by` is null, use the pre-computed `station` and `atop` fields:
       atop is null  (stack-level 0):  `(on item.pddl_name item.station)` AND `(at item.pddl_name item.station)`
       atop is set   (stack-level > 0): `(atop item.pddl_name item.atop)` AND `(at item.pddl_name item.station)`
                                         — do NOT emit `(on ...)` for stacked items
   - For items where `held_by` is NOT null: the item is held by that player.
     Use `(has player.pddl_name item.pddl_name)` (NOT `on` or `at`).
   - `(clear item.pddl_name)` for every item that no other item's `atop` points to AND is not held.
   - `(empty station.pddl_name)` for every station that no item's `station` field references with stack-level 0.
   - `(vacant station.pddl_name)` for every station not occupied by a player.
   - Player hand state: if `player.holding` is empty → `(nothing player.pddl_name)`.
     If `player.holding` is non-empty → do NOT add `(nothing ...)` — the player is already holding items.
   - `(item-free item.pddl_name)` for EVERY item — all items start free (not being cooked/cut/fried).
4. In `:goal`, each goal predicate has a pre-resolved `pddl_args` field — USE THESE DIRECTLY as object names.
   Map predicate names as follows:
   - `item_on`  → `(on item station)`
   - `item_at`  → `(at item station)`
   - `iscooked` → `(iscooked item)`
   - `iscut`    → `(iscut item)`
   - `isfried`  → `(isfried item)`
   - `clear`    → `(clear item)`
   - `atop`     → `(atop item1 item2)`
   Translate ONLY the predicates listed in the JSON `goal` array — do not add extra predicates.
5. The domain name in `(:domain ...)` must match the domain's `(define (domain ...))`.
6. NEVER use `(not ...)` in the `:goal`.

STEP-BY-STEP PROCEDURE for `:init`:
A. Build a coordinate→station map: for each station, record (x,y)→station_name.
B. For EACH item: check `held_by` field first.
   - If `held_by` is NOT null: item is held by that player → emit `(has player item)`. Skip to next item.
   - If `held_by` is null: look up (x,y) in the map to find its station.
     - If stack-level == 0: emit `(on item station)` and `(at item station)`.
     - If stack-level > 0: emit `(atop this_item atop_item)` and `(at this_item station)`. DO NOT emit `(on ...)`.
C. `(clear item)` for each item that has NO other item with a higher stack-level at the same (x,y) AND is not held.
D. `(empty station)` for each station that has NO item with stack-level 0 at its (x,y).
E. `(vacant station)` for each station where no player stands.
F. For each player: if `holding` is empty → emit `(nothing player)`.
   If `holding` is non-empty → do NOT emit `(nothing player)` — the player holds an item.
G. Emit `(item-free item)` for EVERY item.

DEPENDENCY ANALYSIS — do this mentally before writing the problem PDDL:
For EACH goal predicate, ask: "What objects and initial predicates are needed to achieve this?"
- Verify every object in `:goal` is declared in `:objects` and initialized in `:init`.
- Check logical prerequisites: cannot cook without iscookable; cannot stack without both items existing.
Missing even one predicate in `:init` can make the problem unsolvable or produce wrong plans.

Return JSON with: {"problem_pddl": "<the full problem PDDL string>"}
"""

ROBOTOUILLE_PROBLEM_EXAMPLES = """\

## Example

### Input JSON
```json
{
  "stations": [
    {"name": "table", "x": 0, "y": 1},
    {"name": "stove", "x": 3, "y": 1},
    {"name": "table", "x": 1, "y": 3},
    {"name": "table", "x": 2, "y": 3}
  ],
  "items": [
    {"name": "bread",   "x": 0, "y": 1, "stack-level": 0},
    {"name": "bread",   "x": 0, "y": 1, "stack-level": 1},
    {"name": "chicken", "x": 1, "y": 3, "stack-level": 0, "predicates": ["iscookable"]},
    {"name": "cheese",  "x": 2, "y": 3, "stack-level": 0}
  ],
  "players": [{"name": "robot", "x": 0, "y": 2, "direction": [0, -1]}],
  "goal": [
    {"predicate": "item_on",  "args": ["bread",   "table"], "ids": [1, 2]},
    {"predicate": "iscooked", "args": ["chicken"],          "ids": [3]},
    {"predicate": "item_at",  "args": ["chicken", "table"], "ids": [3, 2]},
    {"predicate": "item_at",  "args": ["cheese",  "table"], "ids": [4, 2]},
    {"predicate": "item_at",  "args": ["bread",   "table"], "ids": [5, 2]},
    {"predicate": "clear",    "args": ["bread"],            "ids": [5]}
  ]
}
```

Naming: stations[0]=table_1, stations[1]=stove_1, stations[2]=table_2, stations[3]=table_3;
items[0]=bread_1, items[1]=bread_2, items[2]=chicken_1, items[3]=cheese_1; players[0]=robot_1.
Player direction [0,-1] → facing (0+0, 2-1)=(0,1) = table_1.
bread_1 is at stack-level 0 (directly on table_1 surface); bread_2 is at stack-level 1 (atop bread_1).
Goal: bread_1 is the bottom bun (on table surface); bread_2 is the top bun (clear).

### Correct Problem PDDL
```
(define (problem cheese-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 stove_1 - station
    bread_1 bread_2 chicken_1 cheese_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3)
    (isstove stove_1)
    ; Item identity
    (isbread bread_1) (isbread bread_2)
    (ischicken chicken_1)
    (ischeese cheese_1)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_1)
    (nothing robot_1)
    ; Capability flags
    (iscookable chicken_1)
    ; bread_1: stack-level 0 → directly on table_1 surface
    (on bread_1 table_1)
    (at bread_1 table_1)
    ; bread_2: stack-level 1 → atop bread_1, NOT on surface
    (atop bread_2 bread_1)
    (at bread_2 table_1)
    ; chicken_1: stack-level 0 at table_2
    (on chicken_1 table_2)
    (at chicken_1 table_2)
    ; cheese_1: stack-level 0 at table_3
    (on cheese_1 table_3)
    (at cheese_1 table_3)
    ; Clear: topmost item at each occupied station
    (clear bread_2)
    (clear chicken_1)
    (clear cheese_1)
    ; Empty: stations with no items on surface
    (empty stove_1)
    ; Vacant: stations where no player stands
    (vacant stove_1) (vacant table_2) (vacant table_3)
    ; item-free: all items start free (not being cooked/cut/fried)
    (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free cheese_1)
  )
  (:goal (and
    (on bread_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (at cheese_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
  ))
)
```

---

### Example 2 — lettuce chicken sandwich (adds board + iscuttable)

#### Input JSON
```json
{
  "stations": [
    {"name": "table", "x": 0, "y": 1},
    {"name": "board", "x": 2, "y": 1},
    {"name": "stove", "x": 3, "y": 1},
    {"name": "table", "x": 1, "y": 3},
    {"name": "table", "x": 2, "y": 3}
  ],
  "items": [
    {"name": "bread",   "x": 0, "y": 1, "stack-level": 0},
    {"name": "bread",   "x": 0, "y": 1, "stack-level": 1},
    {"name": "chicken", "x": 1, "y": 3, "stack-level": 0, "predicates": ["iscookable"]},
    {"name": "lettuce", "x": 2, "y": 3, "stack-level": 0, "predicates": ["iscuttable"]}
  ],
  "players": [{"name": "robot", "x": 0, "y": 2, "direction": [0, -1]}],
  "goal": [
    {"predicate": "item_on",  "args": ["bread",   "table"], "ids": [1, 2]},
    {"predicate": "iscut",    "args": ["lettuce"],          "ids": [3]},
    {"predicate": "item_at",  "args": ["lettuce", "table"], "ids": [3, 2]},
    {"predicate": "iscooked", "args": ["chicken"],          "ids": [4]},
    {"predicate": "item_at",  "args": ["chicken", "table"], "ids": [4, 2]},
    {"predicate": "item_at",  "args": ["bread",   "table"], "ids": [5, 2]},
    {"predicate": "clear",    "args": ["bread"],            "ids": [5]}
  ]
}
```

Naming: stations[0]=table_1, stations[1]=board_1, stations[2]=stove_1, stations[3]=table_2, stations[4]=table_3.
items[0]=bread_1(stack-0), items[1]=bread_2(stack-1 atop bread_1), items[2]=chicken_1, items[3]=lettuce_1.
Player at (0,2) facing [0,-1] → (0,1) = table_1.

#### Correct Problem PDDL
```
(define (problem lettuce-chicken-sandwich)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 board_1 stove_1 - station
    bread_1 bread_2 chicken_1 lettuce_1 - item
    robot_1 - player
  )
  (:init
    (istable table_1) (istable table_2) (istable table_3)
    (isboard board_1) (isstove stove_1)
    (isbread bread_1) (isbread bread_2)
    (ischicken chicken_1) (islettuce lettuce_1)
    (isrobot robot_1)
    (loc robot_1 table_1)
    (nothing robot_1)
    (iscookable chicken_1) (iscuttable lettuce_1)
    (on bread_1 table_1) (at bread_1 table_1)
    (atop bread_2 bread_1) (at bread_2 table_1)
    (on chicken_1 table_2) (at chicken_1 table_2)
    (on lettuce_1 table_3) (at lettuce_1 table_3)
    (clear bread_2) (clear chicken_1) (clear lettuce_1)
    (empty board_1) (empty stove_1)
    (vacant board_1) (vacant stove_1) (vacant table_2) (vacant table_3)
    (item-free bread_1) (item-free bread_2) (item-free chicken_1) (item-free lettuce_1)
  )
  (:goal (and
    (on bread_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
    (iscooked chicken_1)
    (at chicken_1 table_2)
    (at bread_2 table_2)
    (clear bread_2)
  ))
)
```

---

### Example 3 — lettuce cheeseburger (distinct bottombun/topbun item types, 4 tables)

#### Input JSON
```json
{
  "stations": [
    {"name": "table", "x": 0, "y": 1},
    {"name": "table", "x": 2, "y": 3},
    {"name": "stove", "x": 1, "y": 1},
    {"name": "board", "x": 2, "y": 1},
    {"name": "table", "x": 3, "y": 3},
    {"name": "table", "x": 4, "y": 1}
  ],
  "items": [
    {"name": "bottombun", "x": 0, "y": 1, "stack-level": 0},
    {"name": "topbun",    "x": 0, "y": 1, "stack-level": 1},
    {"name": "cheese",    "x": 2, "y": 3, "stack-level": 0},
    {"name": "lettuce",   "x": 4, "y": 1, "stack-level": 0, "predicates": ["iscuttable"]},
    {"name": "patty",     "x": 3, "y": 3, "stack-level": 0, "predicates": ["iscookable"]}
  ],
  "players": [{"name": "robot", "x": 0, "y": 2, "direction": [0, -1]}],
  "goal": [
    {"predicate": "item_on",  "args": ["bottombun", "table"], "ids": [1, 2]},
    {"predicate": "iscooked", "args": ["patty"],              "ids": [3]},
    {"predicate": "item_at",  "args": ["patty",     "table"], "ids": [3, 2]},
    {"predicate": "iscut",    "args": ["lettuce"],            "ids": [4]},
    {"predicate": "item_at",  "args": ["lettuce",   "table"], "ids": [4, 2]},
    {"predicate": "item_at",  "args": ["cheese",    "table"], "ids": [5, 2]},
    {"predicate": "item_at",  "args": ["topbun",    "table"], "ids": [6, 2]},
    {"predicate": "clear",    "args": ["topbun"],             "ids": [6]}
  ]
}
```

Naming: stations[0]=table_1, stations[1]=table_2, stations[2]=stove_1, stations[3]=board_1, stations[4]=table_3, stations[5]=table_4.
items[0]=bottombun_1(stack-0), items[1]=topbun_1(stack-1 atop bottombun_1), items[2]=cheese_1, items[3]=lettuce_1, items[4]=patty_1.
Player at (0,2) facing [0,-1] → (0,1) = table_1.

#### Correct Problem PDDL
```
(define (problem lettuce-cheeseburger)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 stove_1 board_1 - station
    bottombun_1 topbun_1 cheese_1 lettuce_1 patty_1 - item
    robot_1 - player
  )
  (:init
    (istable table_1) (istable table_2) (istable table_3) (istable table_4)
    (isstove stove_1) (isboard board_1)
    (isbottombun bottombun_1) (istopbun topbun_1)
    (ischeese cheese_1) (islettuce lettuce_1) (ispatty patty_1)
    (isrobot robot_1)
    (loc robot_1 table_1)
    (nothing robot_1)
    (iscookable patty_1) (iscuttable lettuce_1)
    (on bottombun_1 table_1) (at bottombun_1 table_1)
    (atop topbun_1 bottombun_1) (at topbun_1 table_1)
    (on cheese_1 table_2) (at cheese_1 table_2)
    (on patty_1 table_3) (at patty_1 table_3)
    (on lettuce_1 table_4) (at lettuce_1 table_4)
    (clear topbun_1) (clear cheese_1) (clear patty_1) (clear lettuce_1)
    (empty stove_1) (empty board_1)
    (vacant stove_1) (vacant board_1) (vacant table_2) (vacant table_3) (vacant table_4)
    (item-free bottombun_1) (item-free topbun_1) (item-free cheese_1) (item-free lettuce_1) (item-free patty_1)
  )
  (:goal (and
    (on bottombun_1 table_2)
    (iscooked patty_1)
    (at patty_1 table_2)
    (iscut lettuce_1)
    (at lettuce_1 table_2)
    (at cheese_1 table_2)
    (at topbun_1 table_2)
    (clear topbun_1)
  ))
)
```
"""


ROBOTOUILLE_USER_TEMPLATE = """\
## Domain PDDL

```
{domain_pddl}
```

## Environment JSON

```json
{original_json}
```

Generate the problem PDDL file that is compatible with the domain above.
"""


ROBOTOUILLE_TEMPORAL_SYSTEM_PROMPT = """\
You are a PDDL 2.1 expert. Given a Robotouille kitchen environment described as JSON, write a \
PDDL 2.1 domain AND problem with PARAMETERLESS durative actions that a temporal planner (OPTIC) can solve.

ENCODING: Use PARAMETERLESS actions (no typed parameters, no :typing).
Each specific kitchen operation instance gets its own named action with :parameters ().
Reference specific objects as constants (by name) in conditions and effects.

## Pre-annotated JSON Schema

The JSON has pre-computed fields — use them directly:
```
{
  "stations": [{"name": str, "pddl_name": str, "initial_empty": bool, ...}],
  "items": [{"name": str, "pddl_name": str, "station": str,
             "stack-level": int, "atop": str|null,
             "held_by": str|null,
             "predicates": ["iscookable"|"iscuttable"|"isfryable"|"isfryableifcut"]}],
  "players": [{"pddl_name": str, "facing_station": str, "holding": [str]}],
  "goal": [{"predicate": str, "args": [str], "pddl_args": [str]}],
  "goal_description": str,
  "_timing": {"cook_time": int, "num_cuts": int, "fry_time": int}
}
```

## Action naming convention (CRITICAL — the evaluator parses these names)

Name each action as: `{base_op}_{arg1}_{arg2}...` **without** the player name (player is prepended automatically by the evaluator).

| Base op | Args to encode (in order) | Example |
|---------|--------------------------|---------|
| `move` | from-station, to-station | `move_table_1_stove_1` |
| `pick-up` | item, station | `pick-up_chicken_1_table_2` |
| `place` | item, station | `place_chicken_1_stove_1` |
| `cook` | item, station | `cook_chicken_1_stove_1` |
| `cut` | item, station | `cut_lettuce_1_board_1` |
| `fry` | item, station | `fry_patty_1_fryer_1` |
| `stack` | top-item, bot-item, station | `stack_bread_2_bread_1_table_2` |
| `unstack` | top-item, bot-item, station | `unstack_bread_2_bread_1_table_1` |

Duration values come from `_timing` in the JSON:
- `cook` duration = `_timing.cook_time` (default 3)
- `cut` duration = `_timing.num_cuts` (default 3)
- `fry` duration = `_timing.fry_time` (default 3)
- all other actions: duration = 1

## RULES

1. `(:requirements :durative-actions)` — NO `:typing`.
2. No `:types` block.
3. `:objects` in the problem is a FLAT list without type annotations:
   `(:objects robot_1 table_1 stove_1 chicken_1 bread_1 ...)` — all objects on one level.
4. Predicates in `:predicates` have NO type annotations — just parameter names:
   `(loc ?p ?s)` not `(loc ?p - player ?s - station)`.
   Use EXACTLY the same predicate names as the reference domain (no renaming):
   - `(loc ?p ?s)`, `(at ?i ?s)`, `(has ?p ?i)`, `(nothing ?p)`
   - `(on ?i ?s)`, `(atop ?i1 ?i2)`, `(clear ?i)`
   - `(empty ?s)`, `(vacant ?s)`, `(isstove ?s)`, `(isboard ?s)`, `(isfryer ?s)`, `(istable ?s)`, `(issink ?s)`
   - `(iscookable ?i)`, `(iscooked ?i)`, `(iscuttable ?i)`, `(iscut ?i)`, `(isfryable ?i)`, `(isfried ?i)`
   - `(item-free ?i)`
   - One nullary pending predicate per action: `({action_name}_pending)` with NO parameters.
     Example: `(cook_chicken_1_stove_1_pending)`, `(move_table_1_stove_1_pending)`.
5. Each durative action has `:parameters ()`. All object references in `:condition` and `:effect`
   are CONSTANTS (the actual object names from `:objects`), NOT variables. Structure:
   ```
   (:durative-action cook_chicken_1_stove_1
     :parameters ()
     :duration (= ?duration 3)
     :condition (and
       (at start (cook_chicken_1_stove_1_pending))
       (at start (loc robot_1 stove_1))
       (at start (nothing robot_1))
       (at start (on chicken_1 stove_1))
       (at start (clear chicken_1))
       (at start (iscookable chicken_1))
       (at start (item-free chicken_1)))
     :effect (and
       (at start (not (cook_chicken_1_stove_1_pending)))
       (at start (not (loc robot_1 stove_1)))
       (at start (not (nothing robot_1)))
       (at start (not (item-free chicken_1)))
       (at end (loc robot_1 stove_1))
       (at end (nothing robot_1))
       (at end (iscooked chicken_1))
       (at end (item-free chicken_1))))
   ```
   `place` and `pick-up` examples:
   ```
   (:durative-action place_chicken_1_table_1
     :parameters ()
     :duration (= ?duration 1)
     :condition (and
       (at start (place_chicken_1_table_1_pending))
       (at start (has robot_1 chicken_1))
       (at start (loc robot_1 table_1))
       (at start (empty table_1)))
     :effect (and
       (at start (not (place_chicken_1_table_1_pending)))
       (at start (not (has robot_1 chicken_1)))
       (at start (not (empty table_1)))
       (at end (nothing robot_1))
       (at end (at chicken_1 table_1))
       (at end (on chicken_1 table_1))
       (at end (clear chicken_1))))

   (:durative-action pick-up_chicken_1_table_1
     :parameters ()
     :duration (= ?duration 1)
     :condition (and
       (at start (pick-up_chicken_1_table_1_pending))
       (at start (nothing robot_1))
       (at start (on chicken_1 table_1))
       (at start (loc robot_1 table_1))
       (at start (clear chicken_1))
       (at start (item-free chicken_1)))
     :effect (and
       (at start (not (pick-up_chicken_1_table_1_pending)))
       (at start (not (nothing robot_1)))
       (at start (not (at chicken_1 table_1)))
       (at start (not (on chicken_1 table_1)))
       (at start (not (clear chicken_1)))
       (at end (has robot_1 chicken_1))
       (at end (empty table_1))))
   ```
6. **CRITICAL — cook/fry vs cut robot presence**:
   - `cook` and `fry`: consume `(loc robot station)` and `(nothing robot)` at start; restore at end.
     Do NOT use `over all` on robot location — robot can leave.
   - `cut`: use `(over all (loc robot station))` — robot MUST stay the full duration.
     At start effect: `(not (item-free item))`. At end effects: `(iscut item)`, `(item-free item)`.
7. **CRITICAL — `place` and `pick-up` MUST maintain both `at` and `on`**:
   - `place`: at end adds BOTH `(at item station)` AND `(on item station)`.
   - `pick-up`: at start removes BOTH `(at item station)` AND `(on item station)`.
   - `cook`/`cut`/`fry` require BOTH `(at start (on item station))` AND `(at start (clear item))`.
   - `pick-up`, `stack`, `unstack` require `(at start (item-free item))`.
8. `:init`:
   - Initial kitchen state (locations, holdings, surface predicates, capability flags, item-free for ALL items).
   - ALL `{action_name}_pending` predicates — one per action in the domain.
   - Use the pre-annotated JSON fields (station, atop, held_by, holding, facing_station, initial_empty).
   - **NEVER write `(not (...))` in `:init`**.
9. `:goal` — translate the JSON `goal` array using `pddl_args`:
   - `item_on` → `(on item station)`
   - `item_at` → `(at item station)`
   - `iscooked` → `(iscooked item)`
   - `iscut` → `(iscut item)`
   - `isfried` → `(isfried item)`
   - `clear` → `(clear item)`
   Use `(and ...)` for multiple goals. **NEVER use `(not ...)` in `:goal`**.
10. NO tick actions. The OPTIC temporal plan's start times and durations are handled by the linearizer.

Return JSON: {"domain_pddl": "...", "problem_pddl": "..."}
"""

ROBOTOUILLE_TEMPORAL_SYSTEM_PROMPT_OLD = """\
You are a PDDL 2.1 expert. Given a Robotouille kitchen environment described as JSON, write a \
PDDL 2.1 domain AND problem with durative actions that a temporal planner (OPTIC) can solve.

## Pre-annotated JSON Schema

The JSON has pre-computed fields — use them directly:
```
{
  "stations": [{"name": str, "pddl_name": str, "initial_empty": bool, ...}],
  "items": [{"name": str, "pddl_name": str, "station": str,
             "stack-level": int, "atop": str|null,
             "held_by": str|null,           // ← player pddl_name holding this item (null if on a station)
             "predicates": ["iscookable"|"iscuttable"|"isfryable"|"isfryableifcut"]}],
  "players": [{"pddl_name": str, "facing_station": str,
               "holding": [str]}],          // ← list of item pddl_names the player is holding (empty = empty-handed)
  "goal": [{"predicate": str, "args": [str], "pddl_args": [str]}],
  "goal_description": str,
  "_timing": {"cook_time": int, "num_cuts": int, "fry_time": int}
}
```

## Required action names

Your domain MUST use EXACTLY these action names (the evaluator maps them to the game engine):

| Action | Parameters | Duration | Notes |
|--------|-----------|----------|-------|
| `move` | ?p - player ?from - station ?to - station | 1 | robot moves between stations |
| `pick-up` | ?p - player ?i - item ?s - station | 1 | robot picks up item |
| `place` | ?p - player ?i - item ?s - station | 1 | robot places item on station |
| `stack` | ?p - player ?itop - item ?ibot - item ?s - station | 1 | stack item on top of another |
| `unstack` | ?p - player ?itop - item ?ibot - item ?s - station | 1 | remove top item |
| `cook` | ?p - player ?i - item ?s - station | cook_time | cook item on stove; robot can leave immediately |
| `cut` | ?p - player ?i - item ?s - station | num_cuts | cut item on board; robot must stay for full duration |
| `fry` | ?p - player ?i - item ?s - station | fry_time | fry item on fryer; robot can leave immediately |

Duration values come from `_timing` in the JSON:
- `cook_time` = `_timing.cook_time` (default 3)
- `num_cuts` = `_timing.num_cuts` (default 3)
- `fry_time` = `_timing.fry_time` (default 3)

## RULES

1. Use `:requirements :durative-actions :typing`.
2. Types: `station player item` (all objects use these three types).
3. Design predicates freely. Recommended predicates:
   - Location: `(loc ?p - player ?s - station)`, `(at ?i - item ?s - station)`
   - Holding: `(holding ?p - player ?i - item)`, `(handempty ?p - player)`
   - Stacking: `(on-surface ?i - item ?s - station)`, `(atop ?itop - item ?ibot - item)`, `(clear ?i - item)`
   - Station state: `(empty ?s - station)`, `(vacant ?s - station)`
   - Station type: `(isstove ?s - station)`, `(isboard ?s - station)`, `(isfryer ?s - station)`, `(istable ?s - station)`
   - Item capability/state: `(iscookable ?i - item)`, `(iscooked ?i - item)`, `(iscuttable ?i - item)`, `(iscut ?i - item)`, `(isfryable ?i - item)`, `(isfried ?i - item)`
   - Busy flag: `(item-free ?i - item)` — set in `:init` for ALL items; cleared during cook/cut/fry; restored when done
   **IMPORTANT**: ALL predicate parameters MUST include type annotations (e.g. `?s - station`, not just `?s`).
4. In `:init`, use the pre-annotated fields:
   - For items where `held_by` is null (on a station): use `station` and `atop` fields:
     - stack-level 0 (atop null): item is directly on station surface → `(on-surface item station)`.
     - stack-level > 0 (atop set): item is stacked on another item → use `(atop itop ibot)`.
   - For items where `held_by` is NOT null: item is held by that player → `(holding player item)`.
     Do NOT emit `(on-surface ...)` or `(at ...)` for held items.
   - Player location: use `facing_station`.
   - Player hand state: if `player.holding` is empty → add `(handempty player)`.
     If `player.holding` is non-empty → do NOT add `(handempty player)`.
   - `(empty ?s)` for stations: each station has `initial_empty` field.
     Set `(empty station)` in `:init` if and ONLY IF `initial_empty == true`.
   - `(item-free item)` for ALL items in `:init`.
   - **NEVER write `(not (...))` in `:init`**.
5. **CRITICAL — cook/cut/fry require DIRECT surface contact AND nothing on top**:
   - `(on-surface ?i ?s)` means item is directly on station surface (not stacked on another item).
   - `(clear ?i)` means nothing is stacked on top of the item.
   - `cook`/`cut`/`fry` preconditions MUST include BOTH `(at start (on-surface item station))` AND `(at start (clear item))`.
   - `place` MUST add BOTH `(on-surface item station)` AND `(at item station)` at end.
   - `pick-up` MUST remove BOTH `(on-surface item station)` AND `(at item station)` at start.
   - `stack` does NOT set `(on-surface top-item station)`.
   - `unstack` removes `(on-surface top-item station)` (at end).
6. **CRITICAL — durative action structure**:
   Each durative action has:
   ```
   (:durative-action <name>
     :parameters (...)
     :duration (= ?duration <value>)
     :condition (and
       <at start ...>
       <over all ...>
       <at end ...>)
     :effect (and
       <at start ...>
       <at end ...>))
   ```
   Use EXACTLY ONE `:condition` and ONE `:effect` per action (use `(and ...)` for multiple).
7. **CRITICAL — robot presence during cook/fry vs cut**:
   - `cook` and `fry`: robot starts the action and can leave. Use ONLY `(at start ...)` conditions
     for robot location and hand state. At start: clear robot's loc/handempty; at end: item is cooked/fried.
     - At start conditions: `(loc ?p ?s)`, `(handempty ?p)`, `(on-surface ?i ?s)`, `(clear ?i)`, `(isstove ?s)`, `(iscookable ?i)`, `(item-free ?i)`
     - At start effects: `(not (loc ?p ?s))`, `(not (handempty ?p))`, `(not (item-free ?i))`
     - At end effects: `(loc ?p ?s)` restored (robot returns), `(handempty ?p)` restored, `(iscooked ?i)`, `(item-free ?i)`
     Wait — actually for cook/fry, the robot leaves and does other things. Model as:
     - At start: consume `(loc ?p ?s)` and `(handempty ?p)` (robot commits to starting the cook)
     - No `over all` on robot location (robot is free to move away conceptually)
     - At end: `(iscooked ?i)` and `(item-free ?i)` — item is done
     SIMPLIFICATION: Since the game engine just counts steps, model cook/fry with robot presence
     only `at start` and return presence `at end`. Do NOT use `over all (loc ?p ?s)` for cook/fry.
   - `cut`: robot must stay for the entire duration (RepetitiveEffect requires active calls).
     Use `(over all (loc ?p ?s))` for cut to keep robot at the station throughout.
     - At start conditions: `(loc ?p ?s)`, `(handempty ?p)`, `(on-surface ?i ?s)`, `(clear ?i)`, `(isboard ?s)`, `(iscuttable ?i)`, `(item-free ?i)`
     - At start effects: `(not (item-free ?i))`
     - Over all: `(loc ?p ?s)` (robot must stay)
     - At end effects: `(iscut ?i)`, `(item-free ?i)`
8. **CRITICAL — cook/cut/fry require DIRECT surface contact AND nothing on top** (same as Rule 5):
   The evaluator checks `item_on(item, station)` AND `clear(item)`.
   - `pick-up`, `stack`, `unstack` MUST include `(at start (item-free ?i))` in preconditions to
     prevent picking up items while they are being cooked/cut/fried.
9. `:goal` — translate the JSON `goal` array using the pre-resolved `pddl_args` field.
   Each goal predicate has a `pddl_args` field: **use these pddl_names directly**.
   Map the predicate name as follows:
   - `item_on`  → `(on-surface item station)` — achievable via `place` (which also sets `(at item station)`)
   - `item_at`  → `(at item station)` — achievable via `place` or `stack`
   - `iscooked` → `(iscooked item)`
   - `iscut`    → `(iscut item)`
   - `isfried`  → `(isfried item)`
   - `clear`    → `(clear item)`
   Use `(and ...)` to wrap multiple goal predicates.
10. NO tick actions needed — cook/fry complete automatically when the durative action's duration ends.
    The OPTIC temporal plan will include start times and durations; the linearizer converts this to
    game engine calls automatically.

Return JSON: {"domain_pddl": "...", "problem_pddl": "..."}
"""

ROBOTOUILLE_TEMPORAL_USER_TEMPLATE = """\
## Reference Domain PDDL

The following STRIPS domain defines the predicate and action vocabulary. \
Convert it to PDDL 2.1 temporal (durative actions) format as described in the rules above.

```pddl
{domain_pddl}
```

## Environment JSON

```json
{original_json}
```

Generate the PDDL 2.1 temporal (durative actions) domain and problem for this Robotouille environment.
"""
