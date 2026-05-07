(define (problem flavor_cigars_prob)
  (:domain flavor_cigars)
  (:objects step1 step2 step3 step4 step5 step6 step7 - step)
  (:init
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending) (step6_pending) (step7_pending)
  )
  (:goal (and
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done) (step6_done) (step7_done)
    (enjoy_done)
  ))
)