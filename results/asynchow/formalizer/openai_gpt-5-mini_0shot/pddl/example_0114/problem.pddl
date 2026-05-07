(define (problem try_ice_skating)
  (:domain ice_skating)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    ; All steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ; Goal requires every step_done and the final semantic predicate
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    ; final semantic predicate to force the full causal chain
    (right_on_done)
  ))
)
