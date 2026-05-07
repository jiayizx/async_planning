(define (problem reference_numeric_problem)
  (:domain reference_numeric)
  (:objects step1 step2 step3 - step)

  (:init
    ;; All steps are initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )

  ;; Goal: all steps done, and include a final semantic predicate (s2_completed)
  ;; to force the planner to respect the causal chain.  (s2_completed) is the
  ;; semantic predicate produced by step2.
  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           (s2_completed)
         ))
)
