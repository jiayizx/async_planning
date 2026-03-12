(define (domain pickle_jalapenos)
  (:requirements :durative-actions)
  (:predicates
    (slice_pending)
    (slice_done)
    (brine_pending)
    (brine_done)
    (cool_pending)
    (cool_done)
  )

  (:durative-action do_slice_peppers
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (slice_pending))
    :effect (and (at start (not (slice_pending))) (at end (slice_done)))
  )

  (:durative-action do_make_brine
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (brine_pending))
    :effect (and (at start (not (brine_pending))) (at end (brine_done)))
  )

  (:durative-action do_cool_mixture
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (cool_pending)) (at start (brine_done)))
    :effect (and (at start (not (cool_pending))) (at end (cool_done)))
  )
)
