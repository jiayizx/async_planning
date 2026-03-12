(define (problem be_a_kidney_donor)
  (:domain kidney_donor)
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
  )
  (:goal (and (step1_done) (step2_done) (step3_done)))
)
