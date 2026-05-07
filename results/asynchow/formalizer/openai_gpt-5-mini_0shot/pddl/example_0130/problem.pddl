(define (problem answer_reference_check)
  (:domain reference_check)

  (:objects
    step1 step2 step3 - step
  )

  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )

  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           (s3_done)
         ))
)
