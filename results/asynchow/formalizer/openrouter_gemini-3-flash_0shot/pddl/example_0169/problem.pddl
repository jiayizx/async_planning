(define (problem overcome_fear_reading_prob)
  (:domain overcome_fear_reading)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (reading_practiced)
      (calmness_achieved)
      (mistakes_moved_past)
    )
  )
)