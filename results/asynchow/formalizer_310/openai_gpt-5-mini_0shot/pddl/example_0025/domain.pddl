(define (domain scuba_cave)
  (:requirements :durative-actions)
  (:predicates
    (step1_purchase_gear_pending)
    (step1_purchase_gear_done)
    (step2_find_body_of_water_pending)
    (step2_find_body_of_water_done)
    (step3_dive_into_water_pending)
    (step3_dive_into_water_done)
    (step4_enter_underwater_caves_pending)
    (step4_enter_underwater_caves_done)
    (step5_put_scuba_gear_on_pending)
    (step5_put_scuba_gear_on_done)
    (step6_explore_caves_pending)
    (step6_explore_caves_done)
    (step7_return_to_surface_pending)
    (step7_return_to_surface_done)
  )

  (:durative-action step1_purchase_gear
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step1_purchase_gear_pending))
    :effect (and
              (at start (not (step1_purchase_gear_pending)))
              (at end (step1_purchase_gear_done))
            )
  )

  (:durative-action step2_find_body_of_water
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step2_find_body_of_water_pending))
    :effect (and
              (at start (not (step2_find_body_of_water_pending)))
              (at end (step2_find_body_of_water_done))
            )
  )

  (:durative-action step3_dive_into_water
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step3_dive_into_water_pending))
                    (at start (step5_put_scuba_gear_on_done))
                    (at start (step2_find_body_of_water_done)))
    :effect (and
              (at start (not (step3_dive_into_water_pending)))
              (at end (step3_dive_into_water_done))
            )
  )

  (:durative-action step4_enter_underwater_caves
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step4_enter_underwater_caves_pending))
                    (at start (step3_dive_into_water_done)))
    :effect (and
              (at start (not (step4_enter_underwater_caves_pending)))
              (at end (step4_enter_underwater_caves_done))
            )
  )

  (:durative-action step5_put_scuba_gear_on
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step5_put_scuba_gear_on_pending))
                    (at start (step1_purchase_gear_done)))
    :effect (and
              (at start (not (step5_put_scuba_gear_on_pending)))
              (at end (step5_put_scuba_gear_on_done))
            )
  )

  (:durative-action step6_explore_caves
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step6_explore_caves_pending))
                    (at start (step4_enter_underwater_caves_done)))
    :effect (and
              (at start (not (step6_explore_caves_pending)))
              (at end (step6_explore_caves_done))
            )
  )

  (:durative-action step7_return_to_surface
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step7_return_to_surface_pending))
                    (at start (step6_explore_caves_done)))
    :effect (and
              (at start (not (step7_return_to_surface_pending)))
              (at end (step7_return_to_surface_done))
            )
  )
)
