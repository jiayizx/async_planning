(define (problem save_for_vacation_problem)
    (:domain save_for_vacation)
    
    (:init
        (budget_pending)
        (work_more_pending)
        (save_groceries_pending)
        (stop_alcohol_pending)
        (stop_eating_out_pending)
    )

    (:goal (and
        (budget_done)
        (work_more_done)
        (save_groceries_done)
        (stop_alcohol_done)
        (stop_eating_out_done)
    ))
)
