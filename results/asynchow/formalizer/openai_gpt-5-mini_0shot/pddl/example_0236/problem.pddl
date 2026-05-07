(define (problem cook_flounder_problem)
  (:domain cook_flounder)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; All steps are initially pending (required)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: every step completed AND final semantic predicate (rest_done) true
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (step_done step5)
            (rest_done)
          ))
)
