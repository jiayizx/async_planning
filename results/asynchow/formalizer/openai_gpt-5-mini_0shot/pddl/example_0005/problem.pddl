(define (problem escape_from_prison)
  (:domain prison_escape)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; All steps are initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: all steps done AND the final semantic predicate (ran_tunnel) must be true
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (ran_tunnel)
  ))
)
