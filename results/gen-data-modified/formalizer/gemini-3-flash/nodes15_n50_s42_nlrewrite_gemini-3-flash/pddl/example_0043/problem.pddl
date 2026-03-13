(define (problem kitchen_lighting_problem)
  (:domain kitchen_lighting)
  (:init
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending)
    (step6_pending) (step7_pending) (step8_pending) (step9_pending) (step10_pending)
    (step11_pending) (step12_pending) (step13_pending) (step14_pending) (step15_pending)
  )
  (:goal (and
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done)
  ))
)