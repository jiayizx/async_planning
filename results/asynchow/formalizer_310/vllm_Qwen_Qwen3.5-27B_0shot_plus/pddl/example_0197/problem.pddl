(define (problem reference_numeric_style_prob)
  (:domain reference_numeric_style)
  
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )

  (:goal (and (step1_done) (step2_done) (step3_done)))
)