(define (problem be-kidney-donor)
  (:domain kidney-donor)
  (:objects step1 step2 step3 - step)
  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    ;; final semantic predicate to force the full causal chain
    (s3_done)
  ))
)
