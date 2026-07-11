(define (domain cook_mushrooms)
    (:requirements :durative-actions)
    
    (:predicates
        (heat_oil_pending)
        (heat_oil_done)
        (prepare_mushrooms_pending)
        (prepare_mushrooms_done)
        (add_mushrooms_pending)
        (add_mushrooms_done)
        (cook_mushrooms_pending)
        (cook_mushrooms_done)
        (season_serve_pending)
        (season_serve_done)
    )

    (:durative-action heat_oil
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (heat_oil_pending))
        :effect (and (at start (not (heat_oil_pending))) (at end (heat_oil_done)))
    )

    (:durative-action prepare_mushrooms
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (prepare_mushrooms_pending))
        :effect (and (at start (not (prepare_mushrooms_pending))) (at end (prepare_mushrooms_done)))
    )

    (:durative-action add_mushrooms
        :parameters ()
        :duration (= ?duration 180)
        :condition (and (at start (add_mushrooms_pending)) (at start (heat_oil_done)) (at start (prepare_mushrooms_done)))
        :effect (and (at start (not (add_mushrooms_pending))) (at end (add_mushrooms_done)))
    )

    (:durative-action cook_mushrooms
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (cook_mushrooms_pending)) (at start (add_mushrooms_done)))
        :effect (and (at start (not (cook_mushrooms_pending))) (at end (cook_mushrooms_done)))
    )

    (:durative-action season_serve
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (season_serve_pending)) (at start (cook_mushrooms_done)))
        :effect (and (at start (not (season_serve_pending))) (at end (season_serve_done)))
    )
)
