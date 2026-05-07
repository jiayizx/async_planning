(define (problem take_garcinia_problem)
  (:domain take_garcinia)
  (:objects step1 step2 step3 - step)
  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  ;; Goals: all steps done and include the semantic outcome(s)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    ;; include final semantic predicate(s) to enforce full causal chain
    (liquid_done)
  ))
)
