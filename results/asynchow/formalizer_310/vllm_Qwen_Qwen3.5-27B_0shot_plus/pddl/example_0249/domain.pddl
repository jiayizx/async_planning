(define (domain commercial_lease_negotiation)
  (:requirements :durative-actions)
  
  (:predicates
    (speak_to_manager_pending)
    (speak_to_manager_done)
    (consider_agent_pending)
    (consider_agent_done)
    (check_parking_pending)
    (check_parking_done)
    (find_properties_pending)
    (find_properties_done)
  )

  (:durative-action speak_to_manager
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (speak_to_manager_pending))
      (at start (find_properties_done))
    )
    :effect (and
      (at start (not (speak_to_manager_pending)))
      (at end (speak_to_manager_done))
    )
  )

  (:durative-action consider_agent
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and
      (at start (consider_agent_pending))
    )
    :effect (and
      (at start (not (consider_agent_pending)))
      (at end (consider_agent_done))
    )
  )

  (:durative-action check_parking
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and
      (at start (check_parking_pending))
      (at start (find_properties_done))
    )
    :effect (and
      (at start (not (check_parking_pending)))
      (at end (check_parking_done))
    )
  )

  (:durative-action find_properties
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and
      (at start (find_properties_pending))
    )
    :effect (and
      (at start (not (find_properties_pending)))
      (at end (find_properties_done))
    )
  )
)
