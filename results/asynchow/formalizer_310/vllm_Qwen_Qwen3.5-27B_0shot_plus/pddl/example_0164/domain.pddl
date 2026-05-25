(define (domain art_supplies)
  (:requirements :durative-actions)
  
  (:predicates
    (sketch_pending)
    (sketch_done)
    (hold_marker_pending)
    (hold_marker_done)
    (color_pending)
    (color_done)
  )

  (:durative-action do_sketch
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (sketch_pending))
      (at start (hold_marker_done))
    )
    :effect (and
      (at start (not (sketch_pending)))
      (at end (sketch_done))
    )
  )

  (:durative-action do_hold_marker
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (hold_marker_pending))
    :effect (and
      (at start (not (hold_marker_pending)))
      (at end (hold_marker_done))
    )
  )

  (:durative-action do_color
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (color_pending))
      (at start (hold_marker_done))
    )
    :effect (and
      (at start (not (color_pending)))
      (at end (color_done))
    )
  )
)