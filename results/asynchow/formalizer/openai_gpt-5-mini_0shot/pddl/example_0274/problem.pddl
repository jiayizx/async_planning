(define (problem know-double-jointed)
  (:domain double-jointed)

  (:objects
    step1 step2 step3 step4 step5 step6 - step
  )

  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
  )

  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    ;; final semantic predicate ensuring full causal chain completed
    (s6_done)
  ))
)
