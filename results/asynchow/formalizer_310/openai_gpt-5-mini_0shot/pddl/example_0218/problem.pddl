(define (problem pickle_jalapenos_prob)
  (:domain pickle_jalapenos)
  (:init
    (slice_pending)
    (brine_pending)
    (cool_pending)
  )
  (:goal (and
    (slice_done)
    (brine_done)
    (cool_done)
  ))
)
