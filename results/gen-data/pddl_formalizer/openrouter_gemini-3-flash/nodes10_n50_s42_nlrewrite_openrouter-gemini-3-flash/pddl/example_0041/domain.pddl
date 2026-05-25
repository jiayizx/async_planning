(define (domain deductive_reasoning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (observations_gathered)
    (scope_defined)
    (data_filtered)
    (principle_established)
    (terms_identified)
    (premises_drafted)
    (premises_verified)
    (argument_structured)
    (validity_evaluated)
    (conclusion_drawn)
  )

  (:durative-action gather_observations
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (observations_gathered)))
  )

  (:durative-action define_scope
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scope_defined)))
  )

  (:durative-action filter_data
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (observations_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (data_filtered)))
  )

  (:durative-action establish_principle
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (scope_defined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (principle_established)))
  )

  (:durative-action identify_terms
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (principle_established)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (terms_identified)))
  )

  (:durative-action draft_premises
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (terms_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (premises_drafted)))
  )

  (:durative-action verify_premises
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (terms_identified)) (at start (premises_drafted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (premises_verified)))
  )

  (:durative-action structure_argument
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (premises_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (argument_structured)))
  )

  (:durative-action evaluate_validity
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (argument_structured)) (at start (data_filtered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (validity_evaluated)))
  )

  (:durative-action draw_conclusion
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (validity_evaluated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (conclusion_drawn)))
  )
)