(define (problem keep-nail-polish-problem)
  (:domain keep-nail-polish-from-separating)

  (:objects
    step1 step2 step3 step4 - step
  )

  (:init
    (s1_pending)
    (s2_pending)
    (s3_pending)
    (s4_pending)
  )

  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           (step_done step4)
           (s3_done)
         ))
)
