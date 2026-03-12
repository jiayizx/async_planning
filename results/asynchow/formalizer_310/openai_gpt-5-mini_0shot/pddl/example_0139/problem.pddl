(define (problem fold_towel_butterflies_prob)
  (:domain fold_towel_butterflies)
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )
  (:goal (and
    (step1_done)
    (step2_done)
    (step3_done)
  ))
)
