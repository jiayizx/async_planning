(define (problem take_garcinia_problem)
  (:domain take_garcinia)
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
    (pill_taken)
    (liquid_considered)
  ))
)