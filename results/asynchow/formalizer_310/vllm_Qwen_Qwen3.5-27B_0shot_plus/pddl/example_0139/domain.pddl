(define (domain towel_butterflies)
    (:requirements :durative-actions)
    
    (:predicates
        (fold_towel_pending)
        (fold_towel_done)
        (roll_washcloth_pending)
        (roll_washcloth_done)
        (decorate_pending)
        (decorate_done)
    )

    (:durative-action fold_towel
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (fold_towel_pending))
        :effect (and (at start (not (fold_towel_pending))) (at end (fold_towel_done)))
    )

    (:durative-action roll_washcloth
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (roll_washcloth_pending))
        :effect (and (at start (not (roll_washcloth_pending))) (at end (roll_washcloth_done)))
    )

    (:durative-action decorate
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (decorate_pending)) (at start (fold_towel_done)) (at start (roll_washcloth_done)))
        :effect (and (at start (not (decorate_pending))) (at end (decorate_done)))
    )
)
