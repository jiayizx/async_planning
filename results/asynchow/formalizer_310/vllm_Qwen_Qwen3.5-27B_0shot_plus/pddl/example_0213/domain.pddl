(define (domain cookie-making)
    (:requirements :durative-actions)
    
    (:predicates
        (preheat_pending)
        (preheat_done)
        (combine_pending)
        (combine_done)
        (blend_pending)
        (blend_done)
        (add_blend_pending)
        (add_blend_done)
        (place_pending)
        (place_done)
    )

    (:durative-action preheat_oven
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (preheat_pending))
        :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
    )

    (:durative-action combine_dry_ingredients
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (combine_pending))
        :effect (and (at start (not (combine_pending))) (at end (combine_done)))
    )

    (:durative-action blend_sugars
        :parameters ()
        :duration (= ?duration 240)
        :condition (at start (blend_pending))
        :effect (and (at start (not (blend_pending))) (at end (blend_done)))
    )

    (:durative-action add_and_blend
        :parameters ()
        :duration (= ?duration 360)
        :condition (and (at start (add_blend_pending)) (at start (combine_done)) (at start (blend_done)))
        :effect (and (at start (not (add_blend_pending))) (at end (add_blend_done)))
    )

    (:durative-action place_dough
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (place_pending)) (at start (add_blend_done)))
        :effect (and (at start (not (place_pending))) (at end (place_done)))
    )
)
