(define (domain peel_papaya)
  (:requirements :durative-actions)
  (:predicates
    (slice_halved_pending)
    (slice_halved_done)
    (remove_seeds_pending)
    (remove_seeds_done)
    (slice_wedges_pending)
    (slice_wedges_done)
    (peel_wedges_pending)
    (peel_wedges_done)
  )

  (:durative-action do_slice_halved
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (slice_halved_pending))
    :effect (and
              (at start (not (slice_halved_pending)))
              (at end (slice_halved_done))
            )
  )

  (:durative-action do_remove_seeds
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (remove_seeds_pending)) (at start (slice_halved_done)))
    :effect (and
              (at start (not (remove_seeds_pending)))
              (at end (remove_seeds_done))
            )
  )

  (:durative-action do_slice_wedges
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (slice_wedges_pending)) (at start (slice_halved_done)))
    :effect (and
              (at start (not (slice_wedges_pending)))
              (at end (slice_wedges_done))
            )
  )

  (:durative-action do_peel_wedges
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (peel_wedges_pending)) (at start (slice_wedges_done)))
    :effect (and
              (at start (not (peel_wedges_pending)))
              (at end (peel_wedges_done))
            )
  )
)
