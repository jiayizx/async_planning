(define (problem dha_problem)
  (:domain dha_production)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )
  (:goal (and
    (done step1)
    (done step2)
    (done step3)
    (done step4)
    (done step5)
  ))
)