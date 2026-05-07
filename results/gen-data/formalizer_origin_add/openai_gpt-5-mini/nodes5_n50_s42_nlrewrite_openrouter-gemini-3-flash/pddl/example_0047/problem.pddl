(define (problem see_maine)
  (:domain maine_trip)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; All steps start pending (required by the no-(not ...) rule for preconditions)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    ;; Include the final semantic predicate for the overall chain so the planner
    ;; must respect the full causal ordering (ensures the critical path is enforced)
    (drove_park_loop)
  ))
)
