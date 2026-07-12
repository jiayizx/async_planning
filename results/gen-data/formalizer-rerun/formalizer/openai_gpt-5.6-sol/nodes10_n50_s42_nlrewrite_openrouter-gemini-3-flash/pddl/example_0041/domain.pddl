(define (domain deductive-reasoning)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (assigned_step1 ?s - step)
    (assigned_step2 ?s - step)
    (assigned_step3 ?s - step)
    (assigned_step4 ?s - step)
    (assigned_step5 ?s - step)
    (assigned_step6 ?s - step)
    (assigned_step7 ?s - step)
    (assigned_step8 ?s - step)
    (assigned_step9 ?s - step)
    (assigned_step10 ?s - step)
    (conclusion_drawn)
    (syllogism_validity_evaluated)
    (terms_identified)
    (observations_gathered)
    (inquiry_scope_defined)
    (formal_argument_structured)
    (categorical_premises_drafted)
    (irrelevant_data_filtered)
    (premises_verified)
    (general_principle_established)
  )

  (:durative-action draw_final_logical_conclusion
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (assigned_step1 ?s))
      (at start (step_pending ?s))
      (at start (syllogism_validity_evaluated))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (conclusion_drawn))
    )
  )

  (:durative-action evaluate_syllogism_validity
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (assigned_step2 ?s))
      (at start (step_pending ?s))
      (at start (formal_argument_structured))
      (at start (irrelevant_data_filtered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (syllogism_validity_evaluated))
    )
  )

  (:durative-action identify_major_and_minor_terms
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (assigned_step3 ?s))
      (at start (step_pending ?s))
      (at start (general_principle_established))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (terms_identified))
    )
  )

  (:durative-action gather_initial_observations
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (assigned_step4 ?s))
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (observations_gathered))
    )
  )

  (:durative-action define_inquiry_scope
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (assigned_step5 ?s))
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (inquiry_scope_defined))
    )
  )

  (:durative-action structure_formal_argument
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (assigned_step6 ?s))
      (at start (step_pending ?s))
      (at start (premises_verified))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (formal_argument_structured))
    )
  )

  (:durative-action draft_categorical_premises
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (assigned_step7 ?s))
      (at start (step_pending ?s))
      (at start (terms_identified))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (categorical_premises_drafted))
    )
  )

  (:durative-action filter_irrelevant_data
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (assigned_step8 ?s))
      (at start (step_pending ?s))
      (at start (observations_gathered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (irrelevant_data_filtered))
    )
  )

  (:durative-action verify_premises_truth
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (assigned_step9 ?s))
      (at start (step_pending ?s))
      (at start (terms_identified))
      (at start (categorical_premises_drafted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (premises_verified))
    )
  )

  (:durative-action establish_general_principle
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (assigned_step10 ?s))
      (at start (step_pending ?s))
      (at start (inquiry_scope_defined))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (general_principle_established))
    )
  )
)