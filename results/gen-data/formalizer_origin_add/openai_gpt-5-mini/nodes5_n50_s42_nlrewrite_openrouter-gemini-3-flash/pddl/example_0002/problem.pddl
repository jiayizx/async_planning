(define (problem count-finnish-problem)
  (:domain count-finnish)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    ;; all steps start as pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: all steps completed and final semantic predicate (result of last action)
  ;; The final semantic predicate is s5_done (memorize 1-5 completed)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (s5_done)
  ))
)
