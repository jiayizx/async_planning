(define (problem freeze_watermelon_problem)
    (:domain freeze_watermelon)
    
    (:init
        (boil_syrup_pending)
        (chill_syrup_pending)
        (combine_watermelon_pending)
        (cover_watermelon_pending)
        (freeze_fruit_pending)
    )

    (:goal (and
        (boil_syrup_done)
        (chill_syrup_done)
        (combine_watermelon_done)
        (cover_watermelon_done)
        (freeze_fruit_done)
    ))
)
