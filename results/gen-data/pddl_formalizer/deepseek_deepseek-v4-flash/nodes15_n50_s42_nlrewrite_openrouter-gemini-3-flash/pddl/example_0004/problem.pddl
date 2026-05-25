(define (problem fighter_pilot_problem)
  (:domain fighter_pilot_domain)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 step11 step12 step13 step14 step15 - step
  )
  (:init
    (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4) (step_pending step5)
    (step_pending step6) (step_pending step7) (step_pending step8) (step_pending step9) (step_pending step10)
    (step_pending step11) (step_pending step12) (step_pending step13) (step_pending step14) (step_pending step15)
  )
  (:goal (and
    (step1_complete) (step2_complete) (step3_complete) (step4_complete) (step5_complete)
    (step6_complete) (step7_complete) (step8_complete) (step9_complete) (step10_complete)
    (step11_complete) (step12_complete) (step13_complete) (step14_complete) (step15_complete)
  ))
  (:metric minimize (total-time))
)
