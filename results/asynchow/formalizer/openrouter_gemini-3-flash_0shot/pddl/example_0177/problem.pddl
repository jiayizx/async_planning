(define (problem athletic_performance_problem)
  (:domain athletic_performance)
  (:objects
    step1 step2 step3 step4 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (step_done step4)
      (caution_used)
      (lavender_massaged)
      (ginger_used)
      (pepper_tried)
    )
  )
)