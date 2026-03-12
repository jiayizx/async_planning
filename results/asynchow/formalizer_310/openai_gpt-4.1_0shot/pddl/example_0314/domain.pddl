(define (domain remove_coffee_stain)
  (:requirements :durative-actions)
  (:predicates
    (try_lemon_juice_pending)
    (try_lemon_juice_done)
    (mix_vinegar_and_dish_soap_pending)
    (mix_vinegar_and_dish_soap_done)
    (use_club_soda_pending)
    (use_club_soda_done)
    (remove_excess_moisture_first_pending)
    (remove_excess_moisture_first_done)
    (test_solution_pending)
    (test_solution_done)
    (apply_solution_pending)
    (apply_solution_done)
    (blot_wet_area_pending)
    (blot_wet_area_done)
    (flush_with_water_pending)
    (flush_with_water_done)
    (remove_excess_moisture_pending)
    (remove_excess_moisture_done)
    (allow_to_dry_pending)
    (allow_to_dry_done)
  )

  (:durative-action try_lemon_juice
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (try_lemon_juice_pending))
    :effect (and (at start (not (try_lemon_juice_pending))) (at end (try_lemon_juice_done)))
  )

  (:durative-action mix_vinegar_and_dish_soap
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (mix_vinegar_and_dish_soap_pending))
    :effect (and (at start (not (mix_vinegar_and_dish_soap_pending))) (at end (mix_vinegar_and_dish_soap_done)))
  )

  (:durative-action use_club_soda
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (use_club_soda_pending))
    :effect (and (at start (not (use_club_soda_pending))) (at end (use_club_soda_done)))
  )

  (:durative-action remove_excess_moisture_first
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (remove_excess_moisture_first_pending))
                    (at start (try_lemon_juice_done))
                    (at start (mix_vinegar_and_dish_soap_done))
                    (at start (use_club_soda_done)))
    :effect (and (at start (not (remove_excess_moisture_first_pending))) (at end (remove_excess_moisture_first_done)))
  )

  (:durative-action test_solution
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (test_solution_pending))
                    (at start (try_lemon_juice_done))
                    (at start (mix_vinegar_and_dish_soap_done))
                    (at start (use_club_soda_done)))
    :effect (and (at start (not (test_solution_pending))) (at end (test_solution_done)))
  )

  (:durative-action apply_solution
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (apply_solution_pending))
                    (at start (test_solution_done))
                    (at start (blot_wet_area_done)))
    :effect (and (at start (not (apply_solution_pending))) (at end (apply_solution_done)))
  )

  (:durative-action blot_wet_area
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (blot_wet_area_pending))
                    (at start (remove_excess_moisture_first_done)))
    :effect (and (at start (not (blot_wet_area_pending))) (at end (blot_wet_area_done)))
  )

  (:durative-action flush_with_water
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (flush_with_water_pending))
                    (at start (apply_solution_done)))
    :effect (and (at start (not (flush_with_water_pending))) (at end (flush_with_water_done)))
  )

  (:durative-action remove_excess_moisture
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (remove_excess_moisture_pending))
                    (at start (flush_with_water_done)))
    :effect (and (at start (not (remove_excess_moisture_pending))) (at end (remove_excess_moisture_done)))
  )

  (:durative-action allow_to_dry
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (allow_to_dry_pending))
                    (at start (remove_excess_moisture_done)))
    :effect (and (at start (not (allow_to_dry_pending))) (at end (allow_to_dry_done)))
  )
)
