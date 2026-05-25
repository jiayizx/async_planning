(define (domain recycle_wood)
    (:requirements :durative-actions)
    
    (:predicates
        (search_pending)
        (search_done)
        (remove_pending)
        (remove_done)
        (cut_pending)
        (cut_done)
        (transport_pending)
        (transport_done)
    )

    (:durative-action do_search
        :parameters ()
        :duration (= ?duration 1800)
        :condition (at start (search_pending))
        :effect (and (at start (not (search_pending))) (at end (search_done)))
    )

    (:durative-action do_remove
        :parameters ()
        :duration (= ?duration 900)
        :condition (at start (remove_pending))
        :effect (and (at start (not (remove_pending))) (at end (remove_done)))
    )

    (:durative-action do_cut
        :parameters ()
        :duration (= ?duration 7200)
        :condition (at start (cut_pending))
        :effect (and (at start (not (cut_pending))) (at end (cut_done)))
    )

    (:durative-action do_transport
        :parameters ()
        :duration (= ?duration 3600)
        :condition (and (at start (transport_pending)) (at start (search_done)) (at start (remove_done)) (at start (cut_done)))
        :effect (and (at start (not (transport_pending))) (at end (transport_done)))
    )
)