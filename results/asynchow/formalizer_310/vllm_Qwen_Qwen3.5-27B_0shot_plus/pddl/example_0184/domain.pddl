(define (domain coconut_skincare)
    (:requirements :durative-actions)
    
    (:predicates
        (wash_face_pending)
        (wash_face_done)
        (moisturize_skin_pending)
        (moisturize_skin_done)
        (remove_makeup_pending)
        (remove_makeup_done)
        (refresh_self_pending)
        (refresh_self_done)
    )

    (:durative-action wash_face
        :parameters ()
        :duration (= ?duration 120)
        :condition (and
            (at start (wash_face_pending))
            (at start (remove_makeup_done))
        )
        :effect (and
            (at start (not (wash_face_pending)))
            (at end (wash_face_done))
        )
    )

    (:durative-action moisturize_skin
        :parameters ()
        :duration (= ?duration 120)
        :condition (and
            (at start (moisturize_skin_pending))
            (at start (wash_face_done))
        )
        :effect (and
            (at start (not (moisturize_skin_pending)))
            (at end (moisturize_skin_done))
        )
    )

    (:durative-action remove_makeup
        :parameters ()
        :duration (= ?duration 180)
        :condition (and
            (at start (remove_makeup_pending))
        )
        :effect (and
            (at start (not (remove_makeup_pending)))
            (at end (remove_makeup_done))
        )
    )

    (:durative-action refresh_self
        :parameters ()
        :duration (= ?duration 60)
        :condition (and
            (at start (refresh_self_pending))
        )
        :effect (and
            (at start (not (refresh_self_pending)))
            (at end (refresh_self_done))
        )
    )
)
