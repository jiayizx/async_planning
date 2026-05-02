(define (problem reference_numeric_problem)
  (:domain reference_numeric)
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
