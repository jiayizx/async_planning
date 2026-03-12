(define (domain look_good_party)
  (:requirements :durative-actions)
  (:predicates
    (groom_pending) (groom_done)
    (hair_pending) (hair_done)
    (route_pending) (route_done)
    (schedule_pending) (schedule_done)
  )

  (:durative-action groom_hands_and_feet
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (groom_pending)) (at start (schedule_done)))
    :effect (and (at start (not (groom_pending))) (at end (groom_done)))
  )

  (:durative-action make_hair_appointment
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (hair_pending)) (at start (schedule_done)))
    :effect (and (at start (not (hair_pending))) (at end (hair_done)))
  )

  (:durative-action figure_out_how_to_get_there
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (route_pending)) (at start (schedule_done)))
    :effect (and (at start (not (route_pending))) (at end (route_done)))
  )

  (:durative-action schedule_party_in_planner
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (schedule_pending))
    :effect (and (at start (not (schedule_pending))) (at end (schedule_done)))
  )
)
