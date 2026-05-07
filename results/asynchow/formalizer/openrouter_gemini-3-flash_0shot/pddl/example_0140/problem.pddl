(define (problem lead_removal_problem)
  (:domain remove_lead_from_water)
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
      (results_reviewed)
    )
  )
  (:metric minimize (total-time))
)