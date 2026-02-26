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

PDDL_SYSTEM_PROMPT = """
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


PDDL_USER_TEMPLATE = """\
Here is an asynchronous planning problem:

{question}
"""


RETRY_USER_TEMPLATE = """\
The PDDL you generated caused the following error from the OPTIC planner:

{error}

Please fix ALL issues and return corrected domain and problem PDDL.
"""


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

    if dataset == "asynchow":
        train_ds = datasets.load_dataset("fangrulin/asynchow", split="train")
    else:
        raise ValueError(f"Unknown dataset: {dataset}")

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


PDDL_FEW_SHOT_EXAMPLES = [
    {
        "question": "To go to an amusement park, here are the steps and the times needed for each step.\nStep 1. Get some money (30 seconds)\nStep 2. Find a nearby amusement park (5 minutes)\nStep 3. Travel to the park (15 minutes)\nStep 4. Purchase a pass (1 minutes)\nStep 5. Go into the park (1 minutes)\n\n\nThese ordering constraints need to be obeyed when executing above steps:\nStep 1 must precede step 4.\nStep 2 must precede step 3.\nStep 3 must precede step 4.\nStep 4 must precede step 5.\n\n\nQuestion: Assume that you need to execute all the steps to complete the task and that infinite resources are available. What is the shortest possible time to go to an amusement park? Think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>)",
        "domain_pddl": """(define (domain amusement_park)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (have_money)
    (park_found)
    (at_park)
    (have_pass)
    (in_park)
  )

  (:durative-action get_money
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (have_money))
    )
  )

  (:durative-action find_park
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (park_found))
    )
  )

  (:durative-action travel_to_park
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (park_found))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (at_park))
    )
  )

  (:durative-action purchase_pass
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (have_money))
      (at start (at_park))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (have_pass))
    )
  )

  (:durative-action enter_park
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (have_pass))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (in_park))
    )
  )
)""",
        "problem_pddl": """(define (problem go_to_amusement_park)
  (:domain amusement_park)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (in_park)
  ))
)""",
    },
    {
        "question": "To make breakfast in bed for their mom, here are the steps and the times needed for each step.\nStep 1. heat up pan on stove (5 minutes)\nStep 2. crack eggs in a bowl (3 minutes)\nStep 3. whisk eggs to scramble (3 minutes)\nStep 4. pour in whisked eggs (10 seconds)\nStep 5. scramble as cooking (10 minutes)\nStep 6. add butter to pain (10 seconds)\nStep 7. put eggs on plate (10 seconds)\n\n\nThese ordering constraints need to be obeyed when executing above steps:\nStep 1 must precede step 6.\nStep 2 must precede step 3.\nStep 3 must precede step 4.\nStep 4 must precede step 5.\nStep 5 must precede step 7.\nStep 6 must precede step 4.\n\n\nQuestion: Assume that you need to execute all the steps to complete the task and that infinite resources are available. What is the shortest possible time to make breakfast in bed for their mom? Think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>)",
        "domain_pddl": """(define (domain breakfast)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pan_heated)
    (eggs_cracked)
    (eggs_whisked)
    (eggs_poured)
    (eggs_cooked)
    (butter_added)
    (eggs_plated)
  )

  (:durative-action heat_pan
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pan_heated))
    )
  )

  (:durative-action crack_eggs
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eggs_cracked))
    )
  )

  (:durative-action whisk_eggs
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (eggs_cracked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eggs_whisked))
    )
  )

  (:durative-action add_butter
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (pan_heated))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (butter_added))
    )
  )

  (:durative-action pour_eggs
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (eggs_whisked))
      (at start (butter_added))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eggs_poured))
    )
  )

  (:durative-action scramble_cook
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (eggs_poured))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eggs_cooked))
    )
  )

  (:durative-action plate_eggs
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (eggs_cooked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eggs_plated))
    )
  )
)""",
        "problem_pddl": """(define (problem breakfast-problem)
  (:domain breakfast)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)
    (eggs_plated)
  ))
)""",
    },
    {
        "question": "To grill with friends, here are the steps and the times needed for each step.\nStep 1. light the grill (3 minutes)\nStep 2. let the charcoal warm up (20 minutes)\nStep 3. make the hamburger patties (5 minutes)\nStep 4. cook the hamburgers (15 minutes)\nStep 5. put the hamburgers on a bun (5 minutes)\n\n\nThese ordering constraints need to be obeyed when executing above steps:\nStep 1 must precede step 2 and 3.\nStep 2 must precede step 4.\nStep 3 must precede step 4.\nStep 4 must precede step 5.\n\n\nQuestion: Assume that you need to execute all the steps to complete the task and that infinite resources are available. What is the shortest possible time to grill with friends? Think step by step. Then, encode your final answer in <answer></answer> (e.g. <answer>1 min</answer>)",
        "domain_pddl": """(define (domain grill-with-friends)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (grill_lit)
    (charcoal_warm)
    (patties_made)
    (burgers_cooked)
    (burgers_on_bun)
  )

  (:durative-action light_grill
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (grill_lit))
    )
  )

  (:durative-action warm_charcoal
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (grill_lit))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (charcoal_warm))
    )
  )

  (:durative-action make_patties
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (grill_lit))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (patties_made))
    )
  )

  (:durative-action cook_burgers
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (charcoal_warm))
      (at start (patties_made))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (burgers_cooked))
    )
  )

  (:durative-action put_on_bun
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (burgers_cooked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (burgers_on_bun))
    )
  )
)""",
        "problem_pddl": """(define (problem grill-with-friends-problem)
  (:domain grill-with-friends)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (burgers_on_bun)
  ))
)""",
    },
]