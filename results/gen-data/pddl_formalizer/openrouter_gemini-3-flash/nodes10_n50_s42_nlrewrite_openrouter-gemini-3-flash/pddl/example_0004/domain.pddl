(define (domain nature_trip)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (maps_researched)
    (campsite_reserved)
    (gear_packed)
    (gas_filled)
    (groceries_bought)
    (weather_checked)
    (daybag_packed)
    (gps_charged)
    (trailhead_reached)
    (hike_begun)
  )

  (:durative-action research_maps
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (maps_researched)))
  )

  (:durative-action reserve_campsite
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (maps_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (campsite_reserved)))
  )

  (:durative-action pack_gear
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (campsite_reserved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gear_packed)))
  )

  (:durative-action fill_gas
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (gear_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gas_filled)))
  )

  (:durative-action buy_groceries
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (groceries_bought)))
  )

  (:durative-action charge_gps
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gps_charged)))
  )

  (:durative-action check_weather
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (gps_charged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weather_checked)))
  )

  (:durative-action pack_daybag
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (weather_checked)) (at start (groceries_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (daybag_packed)))
  )

  (:durative-action drive_to_trailhead
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (gas_filled)) (at start (groceries_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trailhead_reached)))
  )

  (:durative-action begin_hike
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (trailhead_reached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hike_begun)))
  )
)