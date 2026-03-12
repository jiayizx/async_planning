(define (domain sandcastle)
  (:requirements :durative-actions)
  (:predicates
    (pack_pending) (pack_done)
    (dress_pending) (dress_done)
    (drive_pending) (drive_done)
    (park_pending) (park_done)
    (fetch_pending) (fetch_done)
  )

  (:durative-action do_pack
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (pack_pending))
    :effect (and
      (at start (not (pack_pending)))
      (at end (pack_done))
    )
  )

  (:durative-action do_dress
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (dress_pending))
    :effect (and
      (at start (not (dress_pending)))
      (at end (dress_done))
    )
  )

  (:durative-action do_drive
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (drive_pending)) (at start (pack_done)) (at start (dress_done)))
    :effect (and
      (at start (not (drive_pending)))
      (at end (drive_done))
    )
  )

  (:durative-action do_park
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (park_pending)) (at start (drive_done)))
    :effect (and
      (at start (not (park_pending)))
      (at end (park_done))
    )
  )

  (:durative-action do_fetch_sand
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (fetch_pending)) (at start (park_done)))
    :effect (and
      (at start (not (fetch_pending)))
      (at end (fetch_done))
    )
  )
)
