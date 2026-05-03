(define (domain choose_cruise)
    (:requirements :durative-actions)
    
    (:predicates
        (stick_to_budget_pending)
        (stick_to_budget_done)
        (calculate_cost_pending)
        (calculate_cost_done)
        (acknowledge_inclusions_pending)
        (acknowledge_inclusions_done)
    )

    (:durative-action do_calculate_cost
        :parameters ()
        :duration (= ?duration 900)
        :condition (at start (calculate_cost_pending))
        :effect (and (at start (not (calculate_cost_pending))) (at end (calculate_cost_done)))
    )

    (:durative-action do_acknowledge_inclusions
        :parameters ()
        :duration (= ?duration 1200)
        :condition (at start (acknowledge_inclusions_pending))
        :effect (and (at start (not (acknowledge_inclusions_pending))) (at end (acknowledge_inclusions_done)))
    )

    (:durative-action do_stick_to_budget
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (stick_to_budget_pending)) (at start (calculate_cost_done)) (at start (acknowledge_inclusions_done)))
        :effect (and (at start (not (stick_to_budget_pending))) (at end (stick_to_budget_done)))
    )
)