(define (problem year-round-herbs-problem)
  (:domain year-round-herbs)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step1_slot step1)
    (step2_slot step2)
    (step3_slot step3)
    (step4_slot step4)
    (step5_slot step5)
  )

  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (seedlings_transplanted)
  ))

  (:metric minimize (total-time))
)