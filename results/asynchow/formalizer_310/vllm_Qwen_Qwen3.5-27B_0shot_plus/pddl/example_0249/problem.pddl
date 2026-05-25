(define (problem negotiate_lease)
  (:domain commercial_lease_negotiation)
  
  (:init
    (speak_to_manager_pending)
    (consider_agent_pending)
    (check_parking_pending)
    (find_properties_pending)
  )

  (:goal (and
    (speak_to_manager_done)
    (consider_agent_done)
    (check_parking_done)
    (find_properties_done)
  ))
)
