(define (domain blackhead_removal)
  (:requirements :durative-actions)
  (:predicates
    (understand_limitations_pending)
    (understand_limitations_done)
    (egg_white_mask_pending)
    (egg_white_mask_done)
    (warmed_honey_pending)
    (warmed_honey_done)
  )

  (:durative-action do_understand_limitations
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (understand_limitations_pending))
    :effect (and
      (at start (not (understand_limitations_pending)))
      (at end (understand_limitations_done))
    )
  )

  (:durative-action do_egg_white_mask
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (egg_white_mask_pending))
      (at start (understand_limitations_done))
    )
    :effect (and
      (at start (not (egg_white_mask_pending)))
      (at end (egg_white_mask_done))
    )
  )

  (:durative-action do_warmed_honey
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (warmed_honey_pending))
      (at start (understand_limitations_done))
    )
    :effect (and
      (at start (not (warmed_honey_pending)))
      (at end (warmed_honey_done))
    )
  )
)
