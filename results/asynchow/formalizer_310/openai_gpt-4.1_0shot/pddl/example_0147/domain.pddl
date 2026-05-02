(define (domain choose_cruise)
  (:requirements :durative-actions)
  (:predicates
    (stick_to_budget_pending)
    (stick_to_budget_done)
    (calculate_cost_pending)
    (calculate_cost_done)
    (acknowledge_included_pending)
    (acknowledge_included_done)
  )

  (:durative-action stick_to_budget
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (stick_to_budget_pending))
      (at start (calculate_cost_done))
      (at start (acknowledge_included_done))
    )
    :effect (and
      (at start (not (stick_to_budget_pending)))
      (at end (stick_to_budget_done))
    )
  )

  (:durative-action calculate_cost
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (calculate_cost_pending))
    :effect (and
      (at start (not (calculate_cost_pending)))
      (at end (calculate_cost_done))
    )
  )

  (:durative-action acknowledge_included
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (acknowledge_included_pending))
    :effect (and
      (at start (not (acknowledge_included_pending)))
      (at end (acknowledge_included_done))
    )
  )
)
