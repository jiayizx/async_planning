(define (domain pickle-jalapenos)
  (:requirements :durative-actions)
  (:predicates
    (slice_peppers_pending)
    (slice_peppers_done)
    (combine_brine_pending)
    (combine_brine_done)
    (cool_brine_pending)
    (cool_brine_done)
  )

  (:durative-action slice_peppers
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (slice_peppers_pending))
    :effect (and
      (at start (not (slice_peppers_pending)))
      (at end (slice_peppers_done))
    )
  )

  (:durative-action combine_brine
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (combine_brine_pending))
    :effect (and
      (at start (not (combine_brine_pending)))
      (at end (combine_brine_done))
    )
  )

  (:durative-action cool_brine
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (cool_brine_pending))
      (at start (combine_brine_done))
    )
    :effect (and
      (at start (not (cool_brine_pending)))
      (at end (cool_brine_done))
    )
  )
)
