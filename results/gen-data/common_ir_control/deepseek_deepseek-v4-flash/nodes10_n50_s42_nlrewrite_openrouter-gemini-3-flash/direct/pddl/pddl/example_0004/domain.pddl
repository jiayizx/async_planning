(define (domain go_into_nature)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pack_gear_done)
    (research_maps_done)
    (check_weather_done)
    (buy_groceries_done)
    (reserve_campsite_done)
    (pack_day_bag_done)
    (drive_trailhead_done)
    (fill_gas_done)
    (begin_hike_done)
    (charge_gps_done)
  )
  
  (:durative-action pack_gear
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step1)) (at start (reserve_campsite_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (pack_gear_done)))
  )
  
  (:durative-action research_maps
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (research_maps_done)))
  )
  
  (:durative-action check_weather
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (charge_gps_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (check_weather_done)))
  )
  
  (:durative-action buy_groceries
    :duration (= ?duration 7200)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (buy_groceries_done)))
  )
  
  (:durative-action reserve_campsite
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (research_maps_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (reserve_campsite_done)))
  )
  
  (:durative-action pack_day_bag
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step6)) (at start (check_weather_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (pack_day_bag_done)))
  )
  
  (:durative-action drive_trailhead
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step7)) (at start (buy_groceries_done)) (at start (fill_gas_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (drive_trailhead_done)))
  )
  
  (:durative-action fill_gas
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step8)) (at start (pack_gear_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (fill_gas_done)))
  )
  
  (:durative-action begin_hike
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step9)) (at start (drive_trailhead_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (begin_hike_done)))
  )
  
  (:durative-action charge_gps
    :duration (= ?duration 21600)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (charge_gps_done)))
  )
)