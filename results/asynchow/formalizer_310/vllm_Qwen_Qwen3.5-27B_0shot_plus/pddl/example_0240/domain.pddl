(define (domain cook_buttercup_squash)
    (:requirements :durative-actions)
    
    (:predicates
        (preheat_oven_pending)
        (preheat_oven_done)
        (scoop_seeds_pending)
        (scoop_seeds_done)
        (combine_ingredients_pending)
        (combine_ingredients_done)
        (bake_pending)
        (bake_done)
    )

    (:durative-action preheat_oven
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (preheat_oven_pending))
        :effect (and (at start (not (preheat_oven_pending))) (at end (preheat_oven_done)))
    )

    (:durative-action scoop_seeds
        :parameters ()
        :duration (= ?duration 600)
        :condition (at start (scoop_seeds_pending))
        :effect (and (at start (not (scoop_seeds_pending))) (at end (scoop_seeds_done)))
    )

    (:durative-action combine_ingredients
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (combine_ingredients_pending))
        :effect (and (at start (not (combine_ingredients_pending))) (at end (combine_ingredients_done)))
    )

    (:durative-action bake
        :parameters ()
        :duration (= ?duration 2400)
        :condition (and (at start (bake_pending))
                        (at start (preheat_oven_done))
                        (at start (scoop_seeds_done))
                        (at start (combine_ingredients_done)))
        :effect (and (at start (not (bake_pending))) (at end (bake_done)))
    )
)
