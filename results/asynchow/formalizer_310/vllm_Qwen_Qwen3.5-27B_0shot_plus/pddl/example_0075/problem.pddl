(define (problem choose_vacation)
    (:domain vacation_planning)
    
    (:init
        (mull_over_pending)
        (ask_husband_pending)
        (select_preference_pending)
        (write_locations_pending)
        (put_in_hat_pending)
        (draw_paper_pending)
    )

    (:goal (and
        (mull_over_done)
        (ask_husband_done)
        (select_preference_done)
        (write_locations_done)
        (put_in_hat_done)
        (draw_paper_done)
    ))
)
