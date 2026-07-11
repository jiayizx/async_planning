(define (problem cook_buttercup_squash_instance)
    (:domain cook_buttercup_squash)
    
    (:init
        (preheat_oven_pending)
        (scoop_seeds_pending)
        (combine_ingredients_pending)
        (bake_pending)
    )

    (:goal (and
        (preheat_oven_done)
        (scoop_seeds_done)
        (combine_ingredients_done)
        (bake_done)
    ))
)
