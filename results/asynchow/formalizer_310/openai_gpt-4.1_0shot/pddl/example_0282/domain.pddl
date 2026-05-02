(define (domain whelp_large_breed_dogs)
  (:requirements :durative-actions)
  (:predicates
    (prepare_whelping_box_pending)
    (prepare_whelping_box_done)
    (line_whelping_box_pending)
    (line_whelping_box_done)
    (place_heat_lamp_pending)
    (place_heat_lamp_done)
  )

  (:durative-action prepare_whelping_box
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (prepare_whelping_box_pending))
    :effect (and
      (at start (not (prepare_whelping_box_pending)))
      (at end (prepare_whelping_box_done))
    )
  )

  (:durative-action line_whelping_box
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (line_whelping_box_pending))
      (at start (prepare_whelping_box_done))
    )
    :effect (and
      (at start (not (line_whelping_box_pending)))
      (at end (line_whelping_box_done))
    )
  )

  (:durative-action place_heat_lamp
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (place_heat_lamp_pending))
      (at start (prepare_whelping_box_done))
    )
    :effect (and
      (at start (not (place_heat_lamp_pending)))
      (at end (place_heat_lamp_done))
    )
  )
)
