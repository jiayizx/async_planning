(define (problem service-brakes-prob)
  (:domain service-brakes)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; all steps initially pending (rule 7)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: all steps done, and final semantic predicate from the last step
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (step_done step5)
            (changed_cylinder_done)
         ))
)
