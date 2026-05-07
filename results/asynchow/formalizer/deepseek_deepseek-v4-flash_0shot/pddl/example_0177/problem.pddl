(define (problem boost-problem)
  (:domain boost)
  (:objects
    step1 step2 step3 step4 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  (:goal (and (step_done step1) (step_done step2) (step_done step3) (step_done step4)
              (caution_done) (lavender_done) (ginger_done) (blackpepper_done)
         )
  )
)