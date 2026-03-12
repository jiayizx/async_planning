(define (problem photograph-rugs-problem)
  (:domain photograph-rugs)

  (:init
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending)
    (step6_pending) (step7_pending) (step8_pending) (step9_pending) (step10_pending)
  )

  (:goal (and
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
  ))
)
