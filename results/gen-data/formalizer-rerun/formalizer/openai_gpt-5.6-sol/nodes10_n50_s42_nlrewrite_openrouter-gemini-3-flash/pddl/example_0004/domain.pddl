(define (domain go-into-nature)
  (:requirements :durative-actions :typing)
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
    (camping_gear_packed)
    (trail_maps_researched)
    (weather_forecast_checked)
    (groceries_bought)
    (campsite_reserved)
    (day_bag_packed)
    (trailhead_reached)
    (gas_tank_filled)
    (wilderness_hike_begun)
    (gps_and_power_banks_charged)
  )

  (:durative-action pack-camping-gear
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (campsite_reserved))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (camping_gear_packed))
    )
  )

  (:durative-action research-trail-maps
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (trail_maps_researched))
    )
  )

  (:durative-action check-weather-forecast
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (gps_and_power_banks_charged))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (weather_forecast_checked))
    )
  )

  (:durative-action buy-groceries-and-supplies
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (groceries_bought))
    )
  )

  (:durative-action reserve-campsite
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (trail_maps_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (campsite_reserved))
    )
  )

  (:durative-action pack-day-bag
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (weather_forecast_checked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (day_bag_packed))
    )
  )

  (:durative-action drive-to-trailhead
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (groceries_bought))
      (at start (gas_tank_filled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (trailhead_reached))
    )
  )

  (:durative-action fill-gas-tank
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (camping_gear_packed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gas_tank_filled))
    )
  )

  (:durative-action begin-wilderness-hike
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (trailhead_reached))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wilderness_hike_begun))
    )
  )

  (:durative-action charge-gps-and-power-banks
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gps_and_power_banks_charged))
    )
  )
)