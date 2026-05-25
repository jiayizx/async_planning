(define (problem choose_flowers_problem) (:domain choose_flowers)
  (:init
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending)
  )
  (:goal (and
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (arrange_petals_done)
  ))
)