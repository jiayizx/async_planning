(define (domain fly_as_kid)
  (:requirements :durative-actions)
  (:predicates
    (attend_flight_school_pending)
    (attend_flight_school_done)
    (find_plane_pending)
    (find_plane_done)
    (talk_bank_pending)
    (talk_bank_done)
    (buy_plane_pending)
    (buy_plane_done)
    (go_runway_pending)
    (go_runway_done)
  )

  (:durative-action attend_flight_school
    :parameters ()
    :duration (= ?duration 63072000)
    :condition (at start (attend_flight_school_pending))
    :effect (and (at start (not (attend_flight_school_pending))) (at end (attend_flight_school_done)))
  )

  (:durative-action find_plane
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (and (at start (find_plane_pending)) (at start (attend_flight_school_done)))
    :effect (and (at start (not (find_plane_pending))) (at end (find_plane_done)))
  )

  (:durative-action talk_bank
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (talk_bank_pending)) (at start (attend_flight_school_done)))
    :effect (and (at start (not (talk_bank_pending))) (at end (talk_bank_done)))
  )

  (:durative-action buy_plane
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (buy_plane_pending)) (at start (find_plane_done)) (at start (talk_bank_done)))
    :effect (and (at start (not (buy_plane_pending))) (at end (buy_plane_done)))
  )

  (:durative-action go_runway
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (go_runway_pending)) (at start (buy_plane_done)))
    :effect (and (at start (not (go_runway_pending))) (at end (go_runway_done)))
  )
)
