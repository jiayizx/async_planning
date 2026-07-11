(define (domain marshmallow-desserts)
    (:requirements :durative-actions)
    
    (:predicates
        (melt_chocolate_pending)
        (melt_chocolate_done)
        (arrange_ingredients_pending)
        (arrange_ingredients_done)
        (drizzle_chocolate_pending)
        (drizzle_chocolate_done)
    )

    (:durative-action melt_chocolate
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (melt_chocolate_pending))
        :effect (and (at start (not (melt_chocolate_pending))) (at end (melt_chocolate_done)))
    )

    (:durative-action arrange_ingredients
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (arrange_ingredients_pending))
        :effect (and (at start (not (arrange_ingredients_pending))) (at end (arrange_ingredients_done)))
    )

    (:durative-action drizzle_chocolate
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (drizzle_chocolate_pending)) (at start (melt_chocolate_done)) (at start (arrange_ingredients_done)))
        :effect (and (at start (not (drizzle_chocolate_pending))) (at end (drizzle_chocolate_done)))
    )
)