(define (problem herbs_problem)
  (:domain herbs_year_round)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    ;; All steps are initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: all steps completed and final semantic predicate (transplant_done) true
  ;; This forces respecting the full causal chain. The provided shortest time is 17 days, 1 hour, 14 minutes.
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (transplant_done)
  ))
)
