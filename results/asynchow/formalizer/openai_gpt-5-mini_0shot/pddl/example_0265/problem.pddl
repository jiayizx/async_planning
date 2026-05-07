(define (problem sort_out_life_prob)
  (:domain sort_out_life)
  (:objects step1 step2 step3 step4 - step)
  (:init
    ;; All steps initially pending (rule: initialize all "pending" predicates true)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  (:goal (and
    ;; Require all steps completed
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    ;; Include final semantic predicate to force the causal chain: step3 is the final ordered outcome
    (s_completed step3)
  ))
)
