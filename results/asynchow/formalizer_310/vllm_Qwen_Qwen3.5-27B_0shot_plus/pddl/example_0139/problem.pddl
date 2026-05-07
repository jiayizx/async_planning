(define (problem fold_butterflies)
    (:domain towel_butterflies)
    
    (:init
        (fold_towel_pending)
        (roll_washcloth_pending)
        (decorate_pending)
    )

    (:goal (and (fold_towel_done) (roll_washcloth_done) (decorate_done)))
)
