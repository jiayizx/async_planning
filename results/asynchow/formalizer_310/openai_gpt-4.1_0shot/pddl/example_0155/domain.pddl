(define (domain stretch-canvas-shoes)
  (:requirements :durative-actions)
  (:predicates
    (freeze_shoes_pending)
    (freeze_shoes_done)
    (stuff_newspapers_pending)
    (stuff_newspapers_done)
    (stuff_socks_pending)
    (stuff_socks_done)
  )

  (:durative-action freeze_shoes
    :parameters ()
    :duration (= ?duration 36000)
    :condition (and
      (at start (freeze_shoes_pending))
      (at start (stuff_newspapers_done))
      (at start (stuff_socks_done))
    )
    :effect (and
      (at start (not (freeze_shoes_pending)))
      (at end (freeze_shoes_done))
    )
  )

  (:durative-action stuff_newspapers
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (stuff_newspapers_pending))
    :effect (and
      (at start (not (stuff_newspapers_pending)))
      (at end (stuff_newspapers_done))
    )
  )

  (:durative-action stuff_socks
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (stuff_socks_pending))
    :effect (and
      (at start (not (stuff_socks_pending)))
      (at end (stuff_socks_done))
    )
  )
)
