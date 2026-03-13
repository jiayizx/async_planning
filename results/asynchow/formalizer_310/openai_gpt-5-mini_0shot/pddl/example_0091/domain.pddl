(define (domain go_concert)
  (:requirements :durative-actions)
  (:predicates
    (buy_tickets_pending) (buy_tickets_done)
    (get_dressed_pending) (get_dressed_done)
    (style_hair_pending) (style_hair_done)
    (do_makeup_pending) (do_makeup_done)
    (get_directions_pending) (get_directions_done)
    (drive_pending) (drive_done)
  )

  (:durative-action buy_tickets
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (buy_tickets_pending))
    :effect (and
      (at start (not (buy_tickets_pending)))
      (at end (buy_tickets_done))
    )
  )

  (:durative-action get_dressed
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (get_dressed_pending)) (at start (buy_tickets_done)))
    :effect (and
      (at start (not (get_dressed_pending)))
      (at end (get_dressed_done))
    )
  )

  (:durative-action style_hair
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (style_hair_pending)) (at start (get_dressed_done)))
    :effect (and
      (at start (not (style_hair_pending)))
      (at end (style_hair_done))
    )
  )

  (:durative-action do_makeup
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (do_makeup_pending)) (at start (get_dressed_done)))
    :effect (and
      (at start (not (do_makeup_pending)))
      (at end (do_makeup_done))
    )
  )

  (:durative-action get_directions
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (get_directions_pending)) (at start (style_hair_done)) (at start (do_makeup_done)))
    :effect (and
      (at start (not (get_directions_pending)))
      (at end (get_directions_done))
    )
  )

  (:durative-action drive
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (drive_pending)) (at start (get_directions_done)))
    :effect (and
      (at start (not (drive_pending)))
      (at end (drive_done))
    )
  )
)
