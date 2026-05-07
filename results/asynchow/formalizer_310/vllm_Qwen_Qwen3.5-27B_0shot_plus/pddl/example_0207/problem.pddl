(define (problem look_good_party_instance)
  (:domain look_good_party)
  
  (:init
    (schedule_party_pending)
    (groom_hands_feet_pending)
    (make_hair_appointment_pending)
    (figure_transport_pending)
  )
  
  (:goal (and
    (schedule_party_done)
    (groom_hands_feet_done)
    (make_hair_appointment_done)
    (figure_transport_done)
  ))
)