(define (domain animal-crossing-screenshot)
  (:requirements :durative-actions)
  (:predicates
    (hold_l_pending)
    (hold_l_done)
    (hold_r_pending)
    (hold_r_done)
    (take_picture_pending)
    (take_picture_done)
  )

  (:durative-action hold_l
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (hold_l_pending))
    :effect (and
      (at start (not (hold_l_pending)))
      (at end (hold_l_done))
    )
  )

  (:durative-action hold_r
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (hold_r_pending))
    :effect (and
      (at start (not (hold_r_pending)))
      (at end (hold_r_done))
    )
  )

  (:durative-action take_picture
    :parameters ()
    :duration (= ?duration 25)
    :condition (and
      (at start (take_picture_pending))
      (at start (hold_l_done))
      (at start (hold_r_done))
    )
    :effect (and
      (at start (not (take_picture_pending)))
      (at end (take_picture_done))
    )
  )
)
