(define (problem fly_as_kid_problem)
  (:domain fly_as_kid)
  
  (:init
    (attend_flight_school_pending)
    (find_a_plane_pending)
    (talk_to_bank_pending)
    (buy_the_plane_pending)
    (go_to_runway_pending)
  )

  (:goal (and
    (attend_flight_school_done)
    (find_a_plane_done)
    (talk_to_bank_done)
    (buy_the_plane_done)
    (go_to_runway_done)
  ))
)
