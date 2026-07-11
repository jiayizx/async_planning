(define (domain pickle_jalapenos)
    (:requirements :durative-actions)
    
    (:predicates
        (slice_pending)
        (slice_done)
        (combine_pending)
        (combine_done)
        (cool_pending)
        (cool_done)
    )

    (:durative-action do_slice
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (slice_pending))
        :effect (and (at start (not (slice_pending))) (at end (slice_done)))
    )

    (:durative-action do_combine
        :parameters ()
        :duration (= ?duration 900)
        :condition (at start (combine_pending))
        :effect (and (at start (not (combine_pending))) (at end (combine_done)))
    )

    (:durative-action do_cool
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (cool_pending)) (at start (combine_done)))
        :effect (and (at start (not (cool_pending))) (at end (cool_done)))
    )
)