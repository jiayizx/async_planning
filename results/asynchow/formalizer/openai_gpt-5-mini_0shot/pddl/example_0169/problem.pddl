(define (problem overcome_reading_fear_problem)
  (:domain overcome_reading_fear)
  (:objects step1 step2 step3 - step)

  (:init
    ; All steps start as pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )

  ; Goal: all steps done AND the final semantic predicate produced by the last action (s3_completed)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (s3_completed)
  ))
)
