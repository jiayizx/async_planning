(define (problem buy-bus-pass-problem)
  (:domain buy-bus-pass)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    ;; No semantic predicates or step_done are initially true
  )

  ;; Goal: all steps done AND the final semantic predicate (purchased_pass)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (purchased_pass)
  ))
)
