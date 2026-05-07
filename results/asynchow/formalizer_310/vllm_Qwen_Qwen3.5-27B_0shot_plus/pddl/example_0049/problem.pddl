(define (problem little_league_baseball_problem)
    (:domain little_league_baseball)
    
    (:init
        (sign_up_pending)
        (buy_gear_pending)
        (get_driven_pending)
        (wake_up_pending)
        (pay_fees_pending)
    )

    (:goal (and
        (sign_up_done)
        (buy_gear_done)
        (get_driven_done)
        (wake_up_done)
        (pay_fees_done)
    ))
)