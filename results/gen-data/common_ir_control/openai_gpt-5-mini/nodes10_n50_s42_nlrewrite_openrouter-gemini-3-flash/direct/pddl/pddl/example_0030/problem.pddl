(define (problem prenatal_safety_problem)
  (:domain prenatal_safety)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 - step
  )
  (:init
    ;; All steps start as pending
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

  ;; Goal: all steps completed AND the final semantic predicate produced by the last action in the
  ;; longest causal chain. According to the ordering constraints, Step 5 is on the critical path and
  ;; finishes last; we therefore include its semantic predicate (s5_complete) in the goal to force
  ;; the planner to respect the full ordering.
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
    (s5_complete)
  ))
)
