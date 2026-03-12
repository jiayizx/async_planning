(define (domain guppy-care)
  (:requirements :durative-actions)
  (:predicates
    (dose_bacteria_pending)
    (dose_bacteria_done)
    (acclimate_guppies_pending)
    (acclimate_guppies_done)
    (purchase_kit_pending)
    (purchase_kit_done)
    (setup_timer_pending)
    (setup_timer_done)
    (condition_water_pending)
    (condition_water_done)
    (fill_aquarium_pending)
    (fill_aquarium_done)
    (test_water_pending)
    (test_water_done)
    (introduce_guppies_pending)
    (introduce_guppies_done)
    (initial_analysis_pending)
    (initial_analysis_done)
    (research_light_pending)
    (research_light_done)
  )

  (:durative-action dose_bacteria
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (dose_bacteria_pending)) (at start (test_water_done)))
    :effect (and (at start (not (dose_bacteria_pending))) (at end (dose_bacteria_done)))
  )

  (:durative-action acclimate_guppies
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (acclimate_guppies_pending)) (at start (fill_aquarium_done)))
    :effect (and (at start (not (acclimate_guppies_pending))) (at end (acclimate_guppies_done)))
  )

  (:durative-action purchase_kit
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (purchase_kit_pending))
    :effect (and (at start (not (purchase_kit_pending))) (at end (purchase_kit_done)))
  )

  (:durative-action setup_timer
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (setup_timer_pending)) (at start (research_light_done)))
    :effect (and (at start (not (setup_timer_pending))) (at end (setup_timer_done)))
  )

  (:durative-action condition_water
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (condition_water_pending)) (at start (initial_analysis_done)))
    :effect (and (at start (not (condition_water_pending))) (at end (condition_water_done)))
  )

  (:durative-action fill_aquarium
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (fill_aquarium_pending)) (at start (condition_water_done)))
    :effect (and (at start (not (fill_aquarium_pending))) (at end (fill_aquarium_done)))
  )

  (:durative-action test_water
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (test_water_pending)) (at start (acclimate_guppies_done)))
    :effect (and (at start (not (test_water_pending))) (at end (test_water_done)))
  )

  (:durative-action introduce_guppies
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (introduce_guppies_pending)) (at start (dose_bacteria_done)))
    :effect (and (at start (not (introduce_guppies_pending))) (at end (introduce_guppies_done)))
  )

  (:durative-action initial_analysis
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (initial_analysis_pending)) (at start (purchase_kit_done)))
    :effect (and (at start (not (initial_analysis_pending))) (at end (initial_analysis_done)))
  )

  (:durative-action research_light
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (research_light_pending))
    :effect (and (at start (not (research_light_pending))) (at end (research_light_done)))
  )
)
