(define (problem charge_bmw_key_problem)
  (:domain charge_bmw_key)
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
