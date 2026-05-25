(define (domain strawberry_butterflies)
    (:requirements :durative-actions)
    
    (:predicates
        (slice_strawberry_pending)
        (slice_strawberry_done)
        (pull_quarters_pending)
        (pull_quarters_done)
        (prepare_chili_pending)
        (prepare_chili_done)
        (place_cap_pending)
        (place_cap_done)
    )

    (:durative-action slice_strawberry
        :parameters ()
        :duration (= ?duration 60)
        :condition (at start (slice_strawberry_pending))
        :effect (and (at start (not (slice_strawberry_pending))) (at end (slice_strawberry_done)))
    )

    (:durative-action pull_quarters
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (pull_quarters_pending)) (at start (slice_strawberry_done)))
        :effect (and (at start (not (pull_quarters_pending))) (at end (pull_quarters_done)))
    )

    (:durative-action prepare_chili
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (prepare_chili_pending))
        :effect (and (at start (not (prepare_chili_pending))) (at end (prepare_chili_done)))
    )

    (:durative-action place_cap
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (place_cap_pending)) (at start (prepare_chili_done)))
        :effect (and (at start (not (place_cap_pending))) (at end (place_cap_done)))
    )
)
