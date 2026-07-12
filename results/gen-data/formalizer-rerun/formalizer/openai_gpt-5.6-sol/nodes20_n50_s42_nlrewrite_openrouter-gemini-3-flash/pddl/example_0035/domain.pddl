(define (domain plant-garden)
  (:requirements :durative-actions :typing)
  (:types
    step - object
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type
    step11-type step12-type step13-type step14-type step15-type
    step16-type step17-type step18-type step19-type step20-type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (fencing_installed)
    (soil_climate_researched)
    (soil_tilled)
    (irrigation_trenches_dug)
    (rocks_debris_removed)
    (irrigation_components_purchased)
    (compost_amendments_purchased)
    (cedar_mulch_laid)
    (seedlings_transplanted)
    (seeds_started)
    (timer_connected)
    (controller_unboxed)
    (topsoil_spread)
    (perimeter_marked)
    (water_system_tested)
    (compost_mixed)
    (watering_schedule_programmed)
    (garden_planted)
    (irrigation_pipes_laid)
    (landscape_design_sketch_completed)
  )

  (:durative-action install_fencing
    :parameters (?s - step1-type)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (irrigation_pipes_laid)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fencing_installed)))
  )

  (:durative-action research_soil_and_climate
    :parameters (?s - step2-type)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (soil_climate_researched)))
  )

  (:durative-action till_soil
    :parameters (?s - step3-type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (rocks_debris_removed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (soil_tilled)))
  )

  (:durative-action dig_irrigation_trenches
    :parameters (?s - step4-type)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (perimeter_marked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (irrigation_trenches_dug)))
  )

  (:durative-action remove_rocks_and_debris
    :parameters (?s - step5-type)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rocks_debris_removed)))
  )

  (:durative-action purchase_irrigation_components
    :parameters (?s - step6-type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (irrigation_components_purchased)))
  )

  (:durative-action buy_compost_and_amendments
    :parameters (?s - step7-type)
    :duration (= ?duration 5400)
    :condition (and
      (at start (step_pending ?s))
      (at start (soil_climate_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (compost_amendments_purchased)))
  )

  (:durative-action lay_cedar_mulch
    :parameters (?s - step8-type)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (irrigation_pipes_laid)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cedar_mulch_laid)))
  )

  (:durative-action transplant_seedlings
    :parameters (?s - step9-type)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (seeds_started)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (seedlings_transplanted)))
  )

  (:durative-action start_seeds
    :parameters (?s - step10-type)
    :duration (= ?duration 3628800)
    :condition (and
      (at start (step_pending ?s))
      (at start (landscape_design_sketch_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (seeds_started)))
  )

  (:durative-action connect_timer
    :parameters (?s - step11-type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (controller_unboxed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (timer_connected)))
  )

  (:durative-action unbox_controller
    :parameters (?s - step12-type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (controller_unboxed)))
  )

  (:durative-action spread_topsoil
    :parameters (?s - step13-type)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (compost_mixed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (topsoil_spread)))
  )

  (:durative-action mark_perimeter
    :parameters (?s - step14-type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (soil_climate_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (perimeter_marked)))
  )

  (:durative-action test_water_system
    :parameters (?s - step15-type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (timer_connected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (water_system_tested)))
  )

  (:durative-action mix_compost
    :parameters (?s - step16-type)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (compost_amendments_purchased))
      (at start (landscape_design_sketch_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (compost_mixed)))
  )

  (:durative-action program_watering_schedule
    :parameters (?s - step17-type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (water_system_tested)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (watering_schedule_programmed)))
  )

  (:durative-action place_garden_lights
    :parameters (?s - step18-type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (fencing_installed))
      (at start (irrigation_pipes_laid)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (garden_planted)))
  )

  (:durative-action lay_irrigation_pipes
    :parameters (?s - step19-type)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (irrigation_trenches_dug))
      (at start (irrigation_components_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (irrigation_pipes_laid)))
  )

  (:durative-action sketch_landscape_design
    :parameters (?s - step20-type)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (landscape_design_sketch_completed)))
  )
)