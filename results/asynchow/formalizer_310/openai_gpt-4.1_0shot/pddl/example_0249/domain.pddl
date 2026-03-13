(define (domain negotiate_lease)
  (:requirements :durative-actions)
  (:predicates
    (speak_property_manager_pending)
    (speak_property_manager_done)
    (hire_agent_pending)
    (hire_agent_done)
    (check_parking_pending)
    (check_parking_done)
    (find_properties_pending)
    (find_properties_done)
  )

  (:durative-action speak_property_manager
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (speak_property_manager_pending)) (at start (find_properties_done)))
    :effect (and (at start (not (speak_property_manager_pending))) (at end (speak_property_manager_done)))
  )

  (:durative-action hire_agent
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (hire_agent_pending))
    :effect (and (at start (not (hire_agent_pending))) (at end (hire_agent_done)))
  )

  (:durative-action check_parking
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (check_parking_pending)) (at start (find_properties_done)))
    :effect (and (at start (not (check_parking_pending))) (at end (check_parking_done)))
  )

  (:durative-action find_properties
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (find_properties_pending))
    :effect (and (at start (not (find_properties_pending))) (at end (find_properties_done)))
  )
)
