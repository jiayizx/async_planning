(define (problem use-watch-as-compass-problem)
  (:domain use-watch-as-compass)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 - step
  )
  (:init
    (s1_pending) (s2_pending) (s3_pending) (s4_pending) (s5_pending) (s6_pending) (s7_pending) (s8_pending)
  )
  (:goal (and
    (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5) (step_done step6) (step_done step7) (step_done step8)
    (s3_complete)
  ))
)