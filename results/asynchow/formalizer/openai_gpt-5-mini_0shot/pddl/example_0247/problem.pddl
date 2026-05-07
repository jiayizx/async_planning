(define (problem deal_period_problem)
  (:domain deal_period_domain)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )
  ;; Goal: all step_done and final semantic predicate (used_pad_done)
  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           (step_done step4)
           (step_done step5)
           (used_pad_done)
         ))
)
