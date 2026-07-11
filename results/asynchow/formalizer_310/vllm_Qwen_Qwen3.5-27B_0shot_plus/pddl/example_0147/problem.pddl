(define (problem choose_cruise_problem)
    (:domain choose_cruise)
    
    (:init
        (stick_to_budget_pending)
        (calculate_cost_pending)
        (acknowledge_inclusions_pending)
    )

    (:goal (and (stick_to_budget_done) (calculate_cost_done) (acknowledge_inclusions_done)))
)