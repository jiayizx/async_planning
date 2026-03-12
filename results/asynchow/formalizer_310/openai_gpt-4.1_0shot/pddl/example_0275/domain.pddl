(define (domain shrink_rings)
  (:requirements :durative-actions)
  (:predicates
    (clean_ring_pending)
    (clean_ring_done)
    (apply_silicone_pending)
    (apply_silicone_done)
    (smooth_silicone_pending)
    (smooth_silicone_done)
    (dry_silicone_pending)
    (dry_silicone_done)
    (try_ring_pending)
    (try_ring_done)
  )

  (:durative-action clean_ring
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (clean_ring_pending))
    :effect (and (at start (not (clean_ring_pending))) (at end (clean_ring_done)))
  )

  (:durative-action apply_silicone
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (apply_silicone_pending)) (at start (clean_ring_done)))
    :effect (and (at start (not (apply_silicone_pending))) (at end (apply_silicone_done)))
  )

  (:durative-action smooth_silicone
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (smooth_silicone_pending)) (at start (apply_silicone_done)))
    :effect (and (at start (not (smooth_silicone_pending))) (at end (smooth_silicone_done)))
  )

  (:durative-action dry_silicone
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (dry_silicone_pending)) (at start (apply_silicone_done)))
    :effect (and (at start (not (dry_silicone_pending))) (at end (dry_silicone_done)))
  )

  (:durative-action try_ring
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (try_ring_pending)) (at start (dry_silicone_done)))
    :effect (and (at start (not (try_ring_pending))) (at end (try_ring_done)))
  )
)
