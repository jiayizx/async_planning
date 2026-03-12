(define (problem fly_as_kid_problem)
  (:domain fly_as_kid)
  ; shortest possible makespan (critical path) = 97804800 seconds
  (:init
    (attend_flight_school_pending)
    (find_plane_pending)
    (talk_bank_pending)
    (buy_plane_pending)
    (go_runway_pending)
  )
  (:goal (and
    (attend_flight_school_done)
    (find_plane_done)
    (talk_bank_done)
    (buy_plane_done)
    (go_runway_done)
  ))
)
