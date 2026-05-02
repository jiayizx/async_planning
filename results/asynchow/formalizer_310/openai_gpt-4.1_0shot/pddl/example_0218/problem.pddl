(define (problem pickle-jalapenos-problem)
  (:domain pickle-jalapenos)
  (:init
    (slice_peppers_pending)
    (combine_brine_pending)
    (cool_brine_pending)
  )
  (:goal (and
    (slice_peppers_done)
    (combine_brine_done)
    (cool_brine_done)
  ))
)
