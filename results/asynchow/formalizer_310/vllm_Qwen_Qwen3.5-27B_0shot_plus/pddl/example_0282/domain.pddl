(define (domain whelping_dogs)
  (:requirements :durative-actions)
  
  (:predicates
    (prepare_box_pending)
    (prepare_box_done)
    (line_box_pending)
    (line_box_done)
    (place_lamp_pending)
    (place_lamp_done)
  )

  (:durative-action prepare_box
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (prepare_box_pending))
    :effect (and (at start (not (prepare_box_pending)))
                 (at end (prepare_box_done)))
  )

  (:durative-action line_box
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (line_box_pending))
                    (at start (prepare_box_done)))
    :effect (and (at start (not (line_box_pending)))
                 (at end (line_box_done)))
  )

  (:durative-action place_lamp
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (place_lamp_pending))
                    (at start (prepare_box_done)))
    :effect (and (at start (not (place_lamp_pending)))
                 (at end (place_lamp_done)))
  )
)
