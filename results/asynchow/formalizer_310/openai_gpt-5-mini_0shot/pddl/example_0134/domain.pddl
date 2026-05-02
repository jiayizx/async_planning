(define (domain ac_screenshot)
  (:requirements :durative-actions)
  (:predicates
    (hold_L_pending)
    (hold_L_done)
    (hold_R_pending)
    (hold_R_done)
    (take_picture_pending)
    (take_picture_done)
  )

  (:durative-action hold_L
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (hold_L_pending))
    :effect (and
      (at start (not (hold_L_pending)))
      (at end (hold_L_done))
    )
  )

  (:durative-action hold_R
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (hold_R_pending))
    :effect (and
      (at start (not (hold_R_pending)))
      (at end (hold_R_done))
    )
  )

  (:durative-action take_picture
    :parameters ()
    :duration (= ?duration 25)
    :condition (and (at start (take_picture_pending)) (at start (hold_L_done)) (at start (hold_R_done)))
    :effect (and
      (at start (not (take_picture_pending)))
      (at end (take_picture_done))
    )
  )
)
