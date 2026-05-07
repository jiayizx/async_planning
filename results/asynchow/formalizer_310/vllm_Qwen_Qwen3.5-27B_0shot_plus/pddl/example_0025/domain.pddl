(define (domain scuba_cave_diving)
  (:requirements :durative-actions)
  
  (:predicates
    (purchase_scuba_gear_pending)
    (purchase_scuba_gear_done)
    (find_body_of_water_pending)
    (find_body_of_water_done)
    (dive_into_water_pending)
    (dive_into_water_done)
    (enter_underwater_caves_pending)
    (enter_underwater_caves_done)
    (put_scuba_gear_on_pending)
    (put_scuba_gear_on_done)
    (explore_caves_pending)
    (explore_caves_done)
    (return_to_surface_pending)
    (return_to_surface_done)
  )

  (:durative-action purchase_scuba_gear
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (purchase_scuba_gear_pending)))
    :effect (and (at start (not (purchase_scuba_gear_pending)))
                 (at end (purchase_scuba_gear_done)))
  )

  (:durative-action find_body_of_water
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (find_body_of_water_pending)))
    :effect (and (at start (not (find_body_of_water_pending)))
                 (at end (find_body_of_water_done)))
  )

  (:durative-action dive_into_water
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (dive_into_water_pending))
                    (at start (find_body_of_water_done))
                    (at start (put_scuba_gear_on_done)))
    :effect (and (at start (not (dive_into_water_pending)))
                 (at end (dive_into_water_done)))
  )

  (:durative-action enter_underwater_caves
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (enter_underwater_caves_pending))
                    (at start (dive_into_water_done)))
    :effect (and (at start (not (enter_underwater_caves_pending)))
                 (at end (enter_underwater_caves_done)))
  )

  (:durative-action put_scuba_gear_on
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (put_scuba_gear_on_pending))
                    (at start (purchase_scuba_gear_done)))
    :effect (and (at start (not (put_scuba_gear_on_pending)))
                 (at end (put_scuba_gear_on_done)))
  )

  (:durative-action explore_caves
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (explore_caves_pending))
                    (at start (enter_underwater_caves_done)))
    :effect (and (at start (not (explore_caves_pending)))
                 (at end (explore_caves_done)))
  )

  (:durative-action return_to_surface
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (return_to_surface_pending))
                    (at start (explore_caves_done)))
    :effect (and (at start (not (return_to_surface_pending)))
                 (at end (return_to_surface_done)))
  )
)
