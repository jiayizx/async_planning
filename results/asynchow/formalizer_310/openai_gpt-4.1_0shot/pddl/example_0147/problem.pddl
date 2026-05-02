(define (problem choose_cruise-problem)
  (:domain choose_cruise)
  (:init
    (stick_to_budget_pending)
    (calculate_cost_pending)
    (acknowledge_included_pending)
  )
  (:goal (and
    (stick_to_budget_done)
    (calculate_cost_done)
    (acknowledge_included_done)
  ))
)
