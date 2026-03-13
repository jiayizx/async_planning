(define (domain roommate-problems)
  (:requirements :durative-actions)
  (:predicates
    (discuss_cleaning_schedule_pending)
    (discuss_cleaning_schedule_done)
    (develop_visitor_plan_pending)
    (develop_visitor_plan_done)
    (discuss_phone_policy_pending)
    (discuss_phone_policy_done)
    (determine_lights_out_time_pending)
    (determine_lights_out_time_done)
    (sign_roommate_agreement_pending)
    (sign_roommate_agreement_done)
  )

  (:durative-action discuss_cleaning_schedule
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (discuss_cleaning_schedule_pending))
    :effect (and (at start (not (discuss_cleaning_schedule_pending)))
                 (at end (discuss_cleaning_schedule_done)))
  )

  (:durative-action develop_visitor_plan
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (develop_visitor_plan_pending))
    :effect (and (at start (not (develop_visitor_plan_pending)))
                 (at end (develop_visitor_plan_done)))
  )

  (:durative-action discuss_phone_policy
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (discuss_phone_policy_pending))
    :effect (and (at start (not (discuss_phone_policy_pending)))
                 (at end (discuss_phone_policy_done)))
  )

  (:durative-action determine_lights_out_time
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (determine_lights_out_time_pending))
    :effect (and (at start (not (determine_lights_out_time_pending)))
                 (at end (determine_lights_out_time_done)))
  )

  (:durative-action sign_roommate_agreement
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (sign_roommate_agreement_pending))
      (at start (discuss_cleaning_schedule_done))
      (at start (develop_visitor_plan_done))
      (at start (discuss_phone_policy_done))
      (at start (determine_lights_out_time_done))
    )
    :effect (and (at start (not (sign_roommate_agreement_pending)))
                 (at end (sign_roommate_agreement_done)))
  )
)
