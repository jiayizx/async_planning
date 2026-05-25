(define (problem try_new_hairstyle)
    (:domain hairstyle_planning)
    
    (:init
        (ask_opinions_pending)
        (browse_styles_pending)
        (get_snapshot_pending)
        (make_appointment_pending)
        (drive_to_salon_pending)
        (show_picture_pending)
    )

    (:goal (and
        (ask_opinions_done)
        (browse_styles_done)
        (get_snapshot_done)
        (make_appointment_done)
        (drive_to_salon_done)
        (show_picture_done)
    ))
)
