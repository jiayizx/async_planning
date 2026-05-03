(define (domain angel_hair_pasta)
    (:requirements :durative-actions)
    
    (:predicates
        (cook_pasta_pending)
        (cook_pasta_done)
        (olive_oil_garlic_parmesan_pending)
        (olive_oil_garlic_parmesan_done)
        (tomato_sauce_pending)
        (tomato_sauce_done)
        (pasta_salad_pending)
        (pasta_salad_done)
    )

    (:durative-action cook_pasta
        :parameters ()
        :duration (= ?duration 600)
        :condition (at start (cook_pasta_pending))
        :effect (and (at start (not (cook_pasta_pending))) (at end (cook_pasta_done)))
    )

    (:durative-action olive_oil_garlic_parmesan
        :parameters ()
        :duration (= ?duration 900)
        :condition (and (at start (olive_oil_garlic_parmesan_pending)) (at start (cook_pasta_done)))
        :effect (and (at start (not (olive_oil_garlic_parmesan_pending))) (at end (olive_oil_garlic_parmesan_done)))
    )

    (:durative-action tomato_sauce
        :parameters ()
        :duration (= ?duration 1200)
        :condition (and (at start (tomato_sauce_pending)) (at start (cook_pasta_done)))
        :effect (and (at start (not (tomato_sauce_pending))) (at end (tomato_sauce_done)))
    )

    (:durative-action pasta_salad
        :parameters ()
        :duration (= ?duration 1800)
        :condition (and (at start (pasta_salad_pending)) (at start (cook_pasta_done)))
        :effect (and (at start (not (pasta_salad_pending))) (at end (pasta_salad_done)))
    )
)