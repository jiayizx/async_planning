(define (problem cat_yard_instance)
    (:domain cat_yard_planning)
    
    (:init
        (put_fence_pending)
        (put_pvc_pending)
        (remove_objects_pending)
        (attach_net_pending)
        (build_enclosure_pending)
    )

    (:goal (and
        (put_fence_done)
        (put_pvc_done)
        (remove_objects_done)
        (attach_net_done)
        (build_enclosure_done)
    ))
)
