(define (problem make_app_problem)
  (:domain make_app)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    ;; all steps are initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal requires all steps done and the final semantic predicate (test_done)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (test_done)
  ))
)
