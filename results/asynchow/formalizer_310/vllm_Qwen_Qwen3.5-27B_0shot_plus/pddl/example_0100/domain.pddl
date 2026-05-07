(define (domain save_for_vacation)
    (:requirements :durative-actions)
    
    (:predicates
        (budget_pending)
        (budget_done)
        (work_more_pending)
        (work_more_done)
        (save_groceries_pending)
        (save_groceries_done)
        (stop_alcohol_pending)
        (stop_alcohol_done)
        (stop_eating_out_pending)
        (stop_eating_out_done)
    )

    (:durative-action come_up_with_budget
        :parameters ()
        :duration (= ?duration 3600)
        :condition (at start (budget_pending))
        :effect (and (at start (not (budget_pending))) (at end (budget_done)))
    )

    (:durative-action work_more_hours
        :parameters ()
        :duration (= ?duration 5184000)
        :condition (and (at start (work_more_pending)) (at start (budget_done)))
        :effect (and (at start (not (work_more_pending))) (at end (work_more_done)))
    )

    (:durative-action not_spend_groceries
        :parameters ()
        :duration (= ?duration 5184000)
        :condition (and (at start (save_groceries_pending)) (at start (budget_done)))
        :effect (and (at start (not (save_groceries_pending))) (at end (save_groceries_done)))
    )

    (:durative-action stop_spending_alcohol
        :parameters ()
        :duration (= ?duration 5184000)
        :condition (and (at start (stop_alcohol_pending)) (at start (budget_done)))
        :effect (and (at start (not (stop_alcohol_pending))) (at end (stop_alcohol_done)))
    )

    (:durative-action stop_eating_out
        :parameters ()
        :duration (= ?duration 5184000)
        :condition (and (at start (stop_eating_out_pending)) (at start (budget_done)))
        :effect (and (at start (not (stop_eating_out_pending))) (at end (stop_eating_out_done)))
    )
)
