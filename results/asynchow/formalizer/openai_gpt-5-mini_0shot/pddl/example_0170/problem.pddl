(define (problem live_minimalist)
  (:domain minimalist)
  (:objects step1 step2 step3 step4 - step)

  (:init
    ;; All steps start pending (per rule 7)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )

  ;; Goal requires all steps done and the final semantic predicate (s1_completed)
  ;; This enforces the full causal chain (step4 -> step2 -> step1) as well as step3's completion.
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (s1_completed)
         ))
)
