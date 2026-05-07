(define (problem art_supplies_prob)
  (:domain art_supplies)
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
    (sketch_done)
    (marker_held)
    (coloring_done)
  ))
  (:metric minimize (total-time))
)