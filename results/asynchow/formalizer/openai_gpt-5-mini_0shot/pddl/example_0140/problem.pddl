(define (problem remove-lead-problem)
  (:domain remove-lead)
  (:objects step1 step2 step3 - step)

  (:init
    ;; All steps start as pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )

  ;; Goals: all steps done and the final semantic predicate (review_results_done)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (review_results_done)
  ))
)
