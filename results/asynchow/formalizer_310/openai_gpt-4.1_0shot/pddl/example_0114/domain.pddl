(define (domain ice_skate_try)
  (:requirements :durative-actions)
  (:predicates
    (search_for_ice_rink_pending)
    (search_for_ice_rink_done)
    (drive_to_ice_rink_pending)
    (drive_to_ice_rink_done)
    (rent_ice_skates_pending)
    (rent_ice_skates_done)
    (put_left_skate_on_pending)
    (put_left_skate_on_done)
    (put_right_skate_on_pending)
    (put_right_skate_on_done)
  )

  (:durative-action do_search_for_ice_rink
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (search_for_ice_rink_pending))
    :effect (and (at start (not (search_for_ice_rink_pending)))
                 (at end (search_for_ice_rink_done)))
  )

  (:durative-action do_drive_to_ice_rink
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (drive_to_ice_rink_pending))
                    (at start (search_for_ice_rink_done)))
    :effect (and (at start (not (drive_to_ice_rink_pending)))
                 (at end (drive_to_ice_rink_done)))
  )

  (:durative-action do_rent_ice_skates
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (rent_ice_skates_pending))
                    (at start (drive_to_ice_rink_done)))
    :effect (and (at start (not (rent_ice_skates_pending)))
                 (at end (rent_ice_skates_done)))
  )

  (:durative-action do_put_left_skate_on
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (put_left_skate_on_pending))
                    (at start (rent_ice_skates_done)))
    :effect (and (at start (not (put_left_skate_on_pending)))
                 (at end (put_left_skate_on_done)))
  )

  (:durative-action do_put_right_skate_on
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (put_right_skate_on_pending))
                    (at start (rent_ice_skates_done)))
    :effect (and (at start (not (put_right_skate_on_pending)))
                 (at end (put_right_skate_on_done)))
  )
)
