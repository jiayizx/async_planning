(define (problem make-strawberry-butterflies)
  (:domain strawberry-butterflies)
  (:objects step1 step2 step3 step4 - step)
  (:init
    ;; All steps are initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  ;; Goal: all steps done, and include the final semantic predicate (s4_completed)
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (s4_completed)
         ))
)
