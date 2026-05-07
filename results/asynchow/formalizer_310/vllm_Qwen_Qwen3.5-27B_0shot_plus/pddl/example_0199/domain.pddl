(define (domain cat_yard_planning)
    (:requirements :durative-actions :time)
    
    (:predicates
        (put_fence_pending)
        (put_fence_done)
        (put_pvc_pending)
        (put_pvc_done)
        (remove_objects_pending)
        (remove_objects_done)
        (attach_net_pending)
        (attach_net_done)
        (build_enclosure_pending)
        (build_enclosure_done)
    )

    (:durative-action put_fence
        :parameters ()
        :duration (= ?duration 172800)
        :condition (at start (put_fence_pending))
        :effect (and (at start (not (put_fence_pending))) (at end (put_fence_done)))
    )

    (:durative-action put_pvc
        :parameters ()
        :duration (= ?duration 10800)
        :condition (and (at start (put_pvc_pending)) (at start (put_fence_done)))
        :effect (and (at start (not (put_pvc_pending))) (at end (put_pvc_done)))
    )

    (:durative-action remove_objects
        :parameters ()
        :duration (= ?duration 7200)
        :condition (and (at start (remove_objects_pending)) (at start (put_fence_done)))
        :effect (and (at start (not (remove_objects_pending))) (at end (remove_objects_done)))
    )

    (:durative-action attach_net
        :parameters ()
        :duration (= ?duration 7200)
        :condition (at start (attach_net_pending))
        :effect (and (at start (not (attach_net_pending))) (at end (attach_net_done)))
    )

    (:durative-action build_enclosure
        :parameters ()
        :duration (= ?duration 259200)
        :condition (at start (build_enclosure_pending))
        :effect (and (at start (not (build_enclosure_pending))) (at end (build_enclosure_done)))
    )
)
