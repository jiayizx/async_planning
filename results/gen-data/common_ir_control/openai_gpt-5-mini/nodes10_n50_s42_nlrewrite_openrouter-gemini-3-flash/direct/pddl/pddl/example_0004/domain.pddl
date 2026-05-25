(define (domain go_into_nature)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_ok)
    (s2_ok)
    (s3_ok)
    (s4_ok)
    (s5_ok)
    (s6_ok)
    (s7_ok)
    (s8_ok)
    (s9_ok)
    (s10_ok)
  )

  (:durative-action do_step1_pack_gear_into_car
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step1) (s5_ok)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_ok))
    )
  )

  (:durative-action do_step2_research_trail_maps
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_ok))
    )
  )

  (:durative-action do_step3_check_weather_forecast
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step3) (s10_ok)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_ok))
    )
  )

  (:durative-action do_step4_buy_groceries_and_supplies
    :duration (= ?duration 7200)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_ok))
    )
  )

  (:durative-action do_step5_reserve_campsite_online
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step5) (s2_ok)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_ok))
    )
  )

  (:durative-action do_step6_pack_day_bag
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step6) (s3_ok)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_ok))
    )
  )

  (:durative-action do_step7_drive_to_trailhead
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending step7) (s4_ok) (s8_ok)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_ok))
    )
  )

  (:durative-action do_step8_fill_gas_tank
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step8) (s1_ok)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_ok))
    )
  )

  (:durative-action do_step9_begin_hike
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step9) (s7_ok)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_ok))
    )
  )

  (:durative-action do_step10_charge_gps_and_powerbanks
    :duration (= ?duration 21600)
    :condition (at start (step_pending step10))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_ok))
    )
  )
)
