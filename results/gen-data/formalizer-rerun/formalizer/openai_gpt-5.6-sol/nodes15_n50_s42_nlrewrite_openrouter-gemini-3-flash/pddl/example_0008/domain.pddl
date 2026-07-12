(define (domain take-up-hiking)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (trails_researched)
    (boots_purchased)
    (boots_broken_in)
    (summit_completed)
    (gear_money_saved)
    (hiking_community_joined)
    (safety_seminar_attended)
    (gps_maps_downloaded)
    (base_layer_socks_purchased)
    (weather_forecast_checked)
    (day_bag_packed)
    (hydration_bladder_purchased)
    (first_aid_kit_assembled)
    (boots_waterproofed)
    (trailhead_reached)
  )

  (:durative-action research_trails
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trails_researched)))
  )

  (:durative-action purchase_hiking_boots
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (gear_money_saved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_purchased)))
  )

  (:durative-action break_in_boots
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (first_aid_kit_assembled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_broken_in)))
  )

  (:durative-action complete_summit
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (trailhead_reached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (summit_completed)))
  )

  (:durative-action save_gear_money
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gear_money_saved)))
  )

  (:durative-action join_hiking_community
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hiking_community_joined)))
  )

  (:durative-action attend_safety_seminar
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (hiking_community_joined)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (safety_seminar_attended)))
  )

  (:durative-action download_gps_maps
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gps_maps_downloaded)))
  )

  (:durative-action purchase_base_layer_socks
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (base_layer_socks_purchased)))
  )

  (:durative-action check_weather_forecast
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (trails_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weather_forecast_checked)))
  )

  (:durative-action pack_day_bag
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (trails_researched)) (at start (boots_purchased)) (at start (boots_broken_in)) (at start (base_layer_socks_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (day_bag_packed)))
  )

  (:durative-action purchase_hydration_bladder
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hydration_bladder_purchased)))
  )

  (:durative-action assemble_first_aid_kit
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (trails_researched)) (at start (gps_maps_downloaded)) (at start (hydration_bladder_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (first_aid_kit_assembled)))
  )

  (:durative-action waterproof_boots
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (boots_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_waterproofed)))
  )

  (:durative-action drive_to_trailhead
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (day_bag_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trailhead_reached)))
  )
)