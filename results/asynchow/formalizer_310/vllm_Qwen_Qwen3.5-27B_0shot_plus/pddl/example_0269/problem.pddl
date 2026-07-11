(define (problem make_marshmallow_desserts)
    (:domain marshmallow-desserts)
    
    (:init
        (melt_chocolate_pending)
        (arrange_ingredients_pending)
        (drizzle_chocolate_pending)
    )

    (:goal (and
        (melt_chocolate_done)
        (arrange_ingredients_done)
        (drizzle_chocolate_done)
    ))
)