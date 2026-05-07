(define (problem remove_judgment_problem)
  (:domain remove_judgment)
  (:objects step1 step2 step3 step4 step5 step6 step7 - step)

  (:init
    ;; All steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
  )

  ;; Goal: every step completed and final semantic predicate achieved (s7_complete)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)
    (s7_complete)
  ))
)
