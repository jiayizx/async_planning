(define (domain boxer_care)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (water_filled)
    (research_done)
    (at_park)
    (vet_scheduled)
    (meal_prepared)
    (bowls_purchased)
    (area_cleaned)
    (medical_clearance)
    (fetch_done)
    (kibble_purchased)
    (unit_sanitized)
    (vet_attended)
    (flea_preventative_applied)
    (station_set)
    (coat_brushed)
    (weight_measured)
    (eating_monitored)
    (bag_packed)
    (nutritionist_consulted)
    (kit_ordered)
  )

  (:durative-action fill_water
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (bowls_purchased)) (at start (unit_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_filled)))
  )

  (:durative-action research_diet
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (weight_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action drive_to_park
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (medical_clearance)) (at start (bag_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_park)))
  )

  (:durative-action schedule_vet
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vet_scheduled)))
  )

  (:durative-action prepare_meal
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (research_done)) (at start (weight_measured)) (at start (nutritionist_consulted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meal_prepared)))
  )

  (:durative-action purchase_bowls
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowls_purchased)))
  )

  (:durative-action clean_area
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (kibble_purchased)) (at start (station_set)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (area_cleaned)))
  )

  (:durative-action receive_clearance
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (vet_scheduled)) (at start (vet_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (medical_clearance)))
  )

  (:durative-action play_fetch
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (at_park)) (at start (bag_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fetch_done)))
  )

  (:durative-action purchase_kibble
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kibble_purchased)))
  )

  (:durative-action sanitize_unit
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (unit_sanitized)))
  )

  (:durative-action attend_vet
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (vet_scheduled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vet_attended)))
  )

  (:durative-action apply_flea_preventative
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (kit_ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flea_preventative_applied)))
  )

  (:durative-action setup_station
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (station_set)))
  )

  (:durative-action brush_coat
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (flea_preventative_applied)) (at start (kit_ordered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coat_brushed)))
  )

  (:durative-action measure_weight
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (bowls_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weight_measured)))
  )

  (:durative-action monitor_eating
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (meal_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eating_monitored)))
  )

  (:durative-action pack_bag
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (medical_clearance)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bag_packed)))
  )

  (:durative-action consult_nutritionist
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (nutritionist_consulted)))
  )

  (:durative-action order_kit
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (kit_ordered)))
  )
)