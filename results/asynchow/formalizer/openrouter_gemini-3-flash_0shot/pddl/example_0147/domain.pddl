(define (domain choose_cruise)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cost_calculated)
    (inclusions_acknowledged)
    (budget_stuck_to)
  )

  (:durative-action calculate_cost
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cost_calculated))
    )
  )

  (:durative-action acknowledge_inclusions
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (inclusions_acknowledged))
    )
  )

  (:durative-action stick_to_budget
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (cost_calculated))
      (at start (inclusions_acknowledged))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (budget_stuck_to))
    )
  )
)