(define (problem choose-cruise-prob)
  (:domain choose-cruise)
  (:objects step1 step2 step3 - step)

  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )

  ;; Note: Ordering constraints encoded via the requirement that the Step1 action
  ;; requires the semantic predicates produced by Step2 and Step3.

  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    ;; final semantic predicate to force the causal chain (Step1 is the final outcome)
    (stick_budget_done)
  ))
)
