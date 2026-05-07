(define (domain look_good_party)
  (:requirements :durative-actions)
  
  (:predicates
    (schedule_party_pending)
    (schedule_party_done)
    (groom_hands_feet_pending)
    (groom_hands_feet_done)
    (make_hair_appointment_pending)
    (make_hair_appointment_done)
    (figure_transport_pending)
    (figure_transport_done)
  )

  (:durative-action schedule_party
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (schedule_party_pending)))
    :effect (and (at start (not (schedule_party_pending)))
                 (at end (schedule_party_done)))
  )

  (:durative-action groom_hands_feet
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (groom_hands_feet_pending))
                    (at start (schedule_party_done)))
    :effect (and (at start (not (groom_hands_feet_pending)))
                 (at end (groom_hands_feet_done)))
  )

  (:durative-action make_hair_appointment
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (make_hair_appointment_pending))
                    (at start (schedule_party_done)))
    :effect (and (at start (not (make_hair_appointment_pending)))
                 (at end (make_hair_appointment_done)))
  )

  (:durative-action figure_transport
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (figure_transport_pending))
                    (at start (schedule_party_done)))
    :effect (and (at start (not (figure_transport_pending)))
                 (at end (figure_transport_done)))
  )
)