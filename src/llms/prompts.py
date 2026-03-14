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
1. A PDDL 2.1 **domain** (with :durative-actions) that defines all types, predicates and actions.
2. A **natural language** description of a asynchronous planning problem.

Your job is to write ONLY the **problem PDDL** file that is compatible with the given domain.

RULES:
1. Read the domain carefully — use ONLY the types, predicates and action names it defines.
2. Declare all objects in `:objects` with their correct types (station, player, item, container, water as needed).
3. In `:init`, set up ALL required predicates:
   - Identity predicates for every object (e.g. `(istable table_1)`, `(isbread bread_1)`, `(isrobot robot_1)`).
   - Initialize the player's starting location: the player faces a direction (up=-Y, down=+Y, left=-X, right=+X). Compute `facing_pos = player_pos + direction_offset` and find the station at those coordinates. Use that station for `(loc robot_1 <that_station>)`. Do NOT create a new station for the player.
   - Capability flags from the NL description (e.g. `(iscookable chicken_1)`, `(iscuttable lettuce_1)`).
   - Spatial predicates: `(loc ?p ?s)`, `(at ?i ?s)`, `(on ?i ?s)` for bottom items, `(atop ?i1 ?i2)` for stacked items.
   - `(clear ?i)` for the topmost item in each stack (or a lone item on a station).
   - `(empty ?s)` for stations with NO items on them.
   - `(vacant ?s)` for stations where no player is standing.
   - `(nothing ?p)` and `(nocontainer ?p)` if the player starts empty-handed.
4. In `:goal`, express the desired final state using the domain's predicates.
   Translate NL goals (e.g. "cooked chicken on table with cheese on top") into the appropriate
   combination of `(on ...)`, `(atop ...)`, `(iscooked ...)`, `(iscut ...)`, `(clear ...)`, `(at ...)` etc.
5. Use underscored names matching the NL description (e.g. `table_1`, `bread_1`, `robot_1`).
6. The domain name in `(:domain ...)` inside the problem must match the domain's `(define (domain ...))`.

Return JSON with: {"problem_pddl": "<the full problem PDDL string>"}
"""

ROBOTOUILLE_SYSTEM_PROMPT = """\
You are a PDDL expert.

You will be given:
1. A PDDL 2.1 **domain** (with :durative-actions) that defines all types, predicates and actions.
2. A **natural language** description of a asynchronous planning problem.

Your job is to write ONLY the **problem PDDL** file that is compatible with the given domain.

RULES:
1. Read the domain carefully — use ONLY the types, predicates and action names it defines.
2. Declare all objects in `:objects` with their correct types (station, player, item, container, water as needed).
3. In `:init`, set up ALL required predicates:
   - Identity predicates for every object (e.g. `(istable table_1)`, `(isbread bread_1)`, `(isrobot robot_1)`).
   - Initialize the player's starting location: the player faces a direction (up=-Y, down=+Y, left=-X, right=+X). Compute `facing_pos = player_pos + direction_offset` and find the station at those coordinates. Use that station for `(loc robot_1 <that_station>)`. Do NOT create a new station for the player.
   - Capability flags from the NL description (e.g. `(iscookable chicken_1)`, `(iscuttable lettuce_1)`).
   - Spatial predicates: `(loc ?p ?s)`, `(at ?i ?s)`, `(on ?i ?s)` for bottom items, `(atop ?i1 ?i2)` for stacked items.
   - `(clear ?i)` for the topmost item in each stack (or a lone item on a station).
   - `(empty ?s)` for stations with NO items on them.
   - `(vacant ?s)` for stations where no player is standing.
   - `(nothing ?p)` and `(nocontainer ?p)` if the player starts empty-handed.
   - Initialize ALL "pending" predicates that the domain's actions require as preconditions.
     Every action that consumes a `_pending` predicate at start must have that predicate set to true
     in `:init`, or the action can never fire.
4. In `:goal`, express the desired final state using the domain's predicates.
   Translate NL goals (e.g. "cooked chicken on table with cheese on top") into the appropriate
   combination of `(on ...)`, `(atop ...)`, `(iscooked ...)`, `(iscut ...)`, `(clear ...)`, `(at ...)` etc.
   The `:goal` MUST include ALL completion predicates needed to ensure no step can be skipped by the
   planner. If the domain uses `_done` predicates, include every relevant one — missing even one lets
   the planner find an illegally short makespan.
5. Use underscored names matching the NL description (e.g. `table_1`, `bread_1`, `robot_1`).
6. The domain name in `(:domain ...)` inside the problem must match the domain's `(define (domain ...))`.
7. NEVER use `(not ...)` in the `:goal`. If a negated condition is needed, use the corresponding
   positive predicate from the domain (e.g. `(empty ?s)` instead of `(not (occupied ?s))`).

DEPENDENCY ANALYSIS — do this mentally before writing the problem PDDL:
For EACH goal in the NL description, ask: "What objects, locations, and initial states are needed?"
- Check for EXPLICIT cues: named items, stations, positions, player directions.
- Check for IMPLICIT cues: logical necessity (cannot cook without a stove station; cannot cut without
  the item being declared cuttable; cannot stack without both items existing).
- Verify that every object referenced in `:goal` is declared in `:objects` and properly initialized
  in `:init`.
Missing even one predicate in `:init` can make the problem unsolvable or produce wrong plans.

Return JSON with: {"problem_pddl": "<the full problem PDDL string>"}
"""


ROBOTOUILLE_USER_TEMPLATE = """\
## Domain PDDL

```
{domain_pddl}
```

## Problem Description

{question}

Generate the problem PDDL file that is compatible with the domain above.
"""
