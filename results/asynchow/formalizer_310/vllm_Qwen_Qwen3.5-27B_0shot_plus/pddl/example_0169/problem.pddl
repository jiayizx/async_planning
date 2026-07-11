(define (problem overcome_fear_of_reading_problem)
    (:domain overcome_fear_of_reading)
    
    (:init
        (practice_reading_pending)
        (work_on_calm_pending)
        (move_past_mistakes_pending)
    )

    (:goal (and
        (practice_reading_done)
        (work_on_calm_done)
        (move_past_mistakes_done)
    ))
)
