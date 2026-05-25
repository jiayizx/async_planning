(define (problem explain_kwanzaa)
  (:domain kwanzaa_presentation)

  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 - step
  )

  (:init
    ;; all steps initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
    (step_pending step8)
    (step_pending step9)
    (step_pending step10)
  )

  ;; Goal: all steps completed, and include the final semantic predicate (s1_done)
  ;; to force the planner to respect the ordering that leads to the final outcome.
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)
    (step_done step8)
    (step_done step9)
    (step_done step10)
    (s1_done)
  ))
)
