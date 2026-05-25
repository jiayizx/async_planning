(define (domain identify_hornet)
    (:requirements :durative-actions)
    
    (:predicates
        (observe_pending)
        (observe_done)
        (look_pending)
        (look_done)
        (estimate_pending)
        (estimate_done)
    )

    (:durative-action do_look
        :parameters ()
        :duration (= ?duration 600)
        :condition (at start (look_pending))
        :effect (and (at start (not (look_pending))) (at end (look_done)))
    )

    (:durative-action do_observe
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (observe_pending)) (at start (look_done)))
        :effect (and (at start (not (observe_pending))) (at end (observe_done)))
    )

    (:durative-action do_estimate
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (estimate_pending)) (at start (look_done)))
        :effect (and (at start (not (estimate_pending))) (at end (estimate_done)))
    )
)