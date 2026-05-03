(define (problem roommate_agreement_problem)
  (:domain roommate_agreement)
  
  (:init
    (discuss_cleaning_pending)
    (develop_visitor_plan_pending)
    (discuss_phone_policy_pending)
    (determine_lights_out_pending)
    (sign_agreement_pending)
  )

  (:goal (and
    (discuss_cleaning_done)
    (develop_visitor_plan_done)
    (discuss_phone_policy_done)
    (determine_lights_out_done)
    (sign_agreement_done)
  ))
)
