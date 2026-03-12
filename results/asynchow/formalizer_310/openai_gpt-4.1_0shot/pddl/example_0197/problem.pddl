(define (problem reference-numeric-style-problem)
  (:domain reference-numeric-style)
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )
  (:goal (and (step1_done) (step2_done) (step3_done)))
)
