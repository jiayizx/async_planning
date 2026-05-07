(define (domain corned_beef_hash)
    (:requirements :durative-actions)
    
    (:predicates
        (gather_ingredients_pending)
        (gather_ingredients_done)
        (combine_mixture_pending)
        (combine_mixture_done)
        (toast_bread_pending)
        (toast_bread_done)
        (spread_mixture_pending)
        (spread_mixture_done)
    )

    (:durative-action gather_ingredients
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (gather_ingredients_pending))
        :effect (and (at start (not (gather_ingredients_pending))) (at end (gather_ingredients_done)))
    )

    (:durative-action combine_mixture
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (combine_mixture_pending)) (at start (gather_ingredients_done)))
        :effect (and (at start (not (combine_mixture_pending))) (at end (combine_mixture_done)))
    )

    (:durative-action toast_bread
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (toast_bread_pending))
        :effect (and (at start (not (toast_bread_pending))) (at end (toast_bread_done)))
    )

    (:durative-action spread_mixture
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (spread_mixture_pending)) (at start (combine_mixture_done)) (at start (toast_bread_done)))
        :effect (and (at start (not (spread_mixture_pending))) (at end (spread_mixture_done)))
    )
)