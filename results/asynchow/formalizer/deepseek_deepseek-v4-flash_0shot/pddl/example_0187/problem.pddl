(define (problem identify_strengths_problem)
  (:domain identify_strengths)
  (:objects
    step1 step2 step3 step4 - step
  )
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step3_done)
  ))
)