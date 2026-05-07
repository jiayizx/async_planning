(define (problem treat_bruises_problem)
  (:domain treat_bruises)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init
    ;; All steps start as pending per required convention
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: require every step be done AND include the final semantic predicate (s3_done)
  ;; This forces the planner to respect the dependency Step5 -> Step3 (the 48-hour wait)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (s3_done)
  ))
)
