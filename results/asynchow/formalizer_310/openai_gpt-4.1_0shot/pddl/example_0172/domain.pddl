(define (domain peel-papaya)
  (:requirements :durative-actions)
  (:predicates
    (slice_papaya_pending)
    (slice_papaya_done)
    (remove_seeds_pending)
    (remove_seeds_done)
    (slice_wedges_pending)
    (slice_wedges_done)
    (peel_wedges_pending)
    (peel_wedges_done)
  )

  (:durative-action slice_papaya
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (slice_papaya_pending))
    :effect (and (at start (not (slice_papaya_pending))) (at end (slice_papaya_done)))
  )

  (:durative-action remove_seeds
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (remove_seeds_pending)) (at start (slice_papaya_done)))
    :effect (and (at start (not (remove_seeds_pending))) (at end (remove_seeds_done)))
  )

  (:durative-action slice_wedges
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (slice_wedges_pending)) (at start (slice_papaya_done)))
    :effect (and (at start (not (slice_wedges_pending))) (at end (slice_wedges_done)))
  )

  (:durative-action peel_wedges
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (peel_wedges_pending)) (at start (slice_wedges_done)))
    :effect (and (at start (not (peel_wedges_pending))) (at end (peel_wedges_done)))
  )
)
