(define (problem deal_with_anxiety_ordering_prob)
  (:domain deal_with_anxiety_ordering)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    ;; All steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: all steps done and final semantic predicate (food_received)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (food_received)
  ))
)
