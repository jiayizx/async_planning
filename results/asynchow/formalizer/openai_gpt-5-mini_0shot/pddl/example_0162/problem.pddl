(define (problem change-name-after-divorce-problem)
  (:domain change-name-after-divorce)

  (:objects
    step1 step2 step3 step4 - step
  )

  (:init
    ;; all steps start pending (rule 7)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )

  ;; Goal requires every step to be done AND the final semantic outcome
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (name_change_completed)
  ))
)
