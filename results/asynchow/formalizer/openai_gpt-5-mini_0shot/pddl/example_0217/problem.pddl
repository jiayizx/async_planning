(define (problem operate_nest_problem)
  (:domain operate_nest)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    ;; mark which object corresponds to which domain action
    (is_step1 step1)
    (is_step2 step2)
    (is_step3 step3)
    (is_step4 step4)
    (is_step5 step5)

    ;; all steps start pending (rule requires initializing all pending predicates as true)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: all steps done AND the final semantic predicate (s5_completed) to force full causal chain
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (s5_completed)
  ))
)
