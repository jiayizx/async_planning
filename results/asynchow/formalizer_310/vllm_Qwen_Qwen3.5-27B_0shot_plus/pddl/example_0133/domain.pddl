(define (domain mocha-making)
    (:requirements :durative-actions)
    
    (:predicates
        (make_coffee_pending)
        (make_coffee_done)
        (prepare_milk_pending)
        (prepare_milk_done)
        (add_chocolate_pending)
        (add_chocolate_done)
    )

    (:durative-action make_coffee
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (make_coffee_pending))
        :effect (and
            (at start (not (make_coffee_pending)))
            (at end (make_coffee_done))
        )
    )

    (:durative-action prepare_milk
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (prepare_milk_pending))
        :effect (and
            (at start (not (prepare_milk_pending)))
            (at end (prepare_milk_done))
        )
    )

    (:durative-action add_chocolate
        :parameters ()
        :duration (= ?duration 60)
        :condition (and
            (at start (add_chocolate_pending))
            (at start (make_coffee_done))
        )
        :effect (and
            (at start (not (add_chocolate_pending)))
            (at end (add_chocolate_done))
        )
    )
)