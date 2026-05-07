(define (problem choose_chandelier)
  (:domain chandelier)
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )
  (:goal (and
    (step1_done)
    (step2_done)
    (step3_done)
    (chandelier_size_chosen)
  ))
)