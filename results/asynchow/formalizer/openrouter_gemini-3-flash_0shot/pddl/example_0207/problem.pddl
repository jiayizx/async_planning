(define (problem party_prep_prob)
  (:domain party_prep)
  (:objects
    step1 step2 step3 step4 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (groomed)
    (appointment_made)
    (transport_figured)
    (scheduled_in_planner)
  ))
)