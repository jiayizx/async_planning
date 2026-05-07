(define (problem prepare_angel_hair_pasta)
    (:domain angel_hair_pasta)
    
    (:init
        (cook_pasta_pending)
        (olive_oil_garlic_parmesan_pending)
        (tomato_sauce_pending)
        (pasta_salad_pending)
    )

    (:goal (and
        (cook_pasta_done)
        (olive_oil_garlic_parmesan_done)
        (tomato_sauce_done)
        (pasta_salad_done)
    ))
)