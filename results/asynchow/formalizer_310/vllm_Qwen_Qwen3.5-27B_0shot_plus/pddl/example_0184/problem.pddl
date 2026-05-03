(define (problem coconut_skincare_task)
    (:domain coconut_skincare)
    
    (:init
        (wash_face_pending)
        (moisturize_skin_pending)
        (remove_makeup_pending)
        (refresh_self_pending)
    )

    (:goal (and
        (wash_face_done)
        (moisturize_skin_done)
        (remove_makeup_done)
        (refresh_self_done)
    ))
)
