(define (domain strengthen_hips)
  (:requirements :durative-actions)
  (:predicates
    (stretch_right_time_pending)
    (stretch_right_time_done)
    (stretch_itb_pending)
    (stretch_itb_done)
    (piriformis_stretch_pending)
    (piriformis_stretch_done)
    (leg_to_chest_pending)
    (leg_to_chest_done)
    (hamstring_stretch_pending)
    (hamstring_stretch_done)
  )

  (:durative-action stretch_right_time
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (stretch_right_time_pending))
    :effect (and
      (at start (not (stretch_right_time_pending)))
      (at end (stretch_right_time_done))
    )
  )

  (:durative-action stretch_itb
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (stretch_itb_pending))
      (at start (stretch_right_time_done))
    )
    :effect (and
      (at start (not (stretch_itb_pending)))
      (at end (stretch_itb_done))
    )
  )

  (:durative-action piriformis_stretch
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (piriformis_stretch_pending))
      (at start (stretch_right_time_done))
    )
    :effect (and
      (at start (not (piriformis_stretch_pending)))
      (at end (piriformis_stretch_done))
    )
  )

  (:durative-action leg_to_chest
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (leg_to_chest_pending))
      (at start (stretch_right_time_done))
    )
    :effect (and
      (at start (not (leg_to_chest_pending)))
      (at end (leg_to_chest_done))
    )
  )

  (:durative-action hamstring_stretch
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (hamstring_stretch_pending))
      (at start (stretch_right_time_done))
    )
    :effect (and
      (at start (not (hamstring_stretch_pending)))
      (at end (hamstring_stretch_done))
    )
  )
)
