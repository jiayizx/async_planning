(define (domain hairstyle-planning)
  (:requirements :durative-actions)
  (:predicates
    (ask_opinions_pending)
    (ask_opinions_done)
    (browse_styles_pending)
    (browse_styles_done)
    (get_snapshot_pending)
    (get_snapshot_done)
    (make_appointment_pending)
    (make_appointment_done)
    (drive_salon_pending)
    (drive_salon_done)
    (show_picture_pending)
    (show_picture_done)
  )

  (:durative-action ask_opinions
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (ask_opinions_pending))
    :effect (and (at start (not (ask_opinions_pending))) (at end (ask_opinions_done)))
  )

  (:durative-action browse_styles
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (browse_styles_pending))
    :effect (and (at start (not (browse_styles_pending))) (at end (browse_styles_done)))
  )

  (:durative-action get_snapshot
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (get_snapshot_pending)) (at start (ask_opinions_done)) (at start (browse_styles_done)))
    :effect (and (at start (not (get_snapshot_pending))) (at end (get_snapshot_done)))
  )

  (:durative-action make_appointment
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (make_appointment_pending)) (at start (get_snapshot_done)))
    :effect (and (at start (not (make_appointment_pending))) (at end (make_appointment_done)))
  )

  (:durative-action drive_salon
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (drive_salon_pending)) (at start (make_appointment_done)))
    :effect (and (at start (not (drive_salon_pending))) (at end (drive_salon_done)))
  )

  (:durative-action show_picture
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (show_picture_pending)) (at start (drive_salon_done)))
    :effect (and (at start (not (show_picture_pending))) (at end (show_picture_done)))
  )
)
