(define (domain nintendo-ds-play)
  (:requirements :durative-actions)
  (:predicates
    (insert_game_pending)
    (insert_game_done)
    (calibrate_touch_pending)
    (calibrate_touch_done)
    (locate_console_pending)
    (locate_console_done)
    (charge_battery_pending)
    (charge_battery_done)
    (connect_ac_pending)
    (connect_ac_done)
    (power_on_pending)
    (power_on_done)
    (select_game_pending)
    (select_game_done)
    (clean_case_pending)
    (clean_case_done)
    (configure_clock_pending)
    (configure_clock_done)
    (open_lid_pending)
    (open_lid_done)
  )

  (:durative-action insert_game
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (insert_game_pending)) (at start (connect_ac_done)))
    :effect (and (at start (not (insert_game_pending))) (at end (insert_game_done)))
  )

  (:durative-action calibrate_touch
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (calibrate_touch_pending)) (at start (clean_case_done)) (at start (configure_clock_done)))
    :effect (and (at start (not (calibrate_touch_pending))) (at end (calibrate_touch_done)))
  )

  (:durative-action locate_console
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (locate_console_pending))
    :effect (and (at start (not (locate_console_pending))) (at end (locate_console_done)))
  )

  (:durative-action charge_battery
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (charge_battery_pending)) (at start (power_on_done)))
    :effect (and (at start (not (charge_battery_pending))) (at end (charge_battery_done)))
  )

  (:durative-action connect_ac
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (connect_ac_pending)) (at start (charge_battery_done)))
    :effect (and (at start (not (connect_ac_pending))) (at end (connect_ac_done)))
  )

  (:durative-action power_on
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (power_on_pending)) (at start (calibrate_touch_done)))
    :effect (and (at start (not (power_on_pending))) (at end (power_on_done)))
  )

  (:durative-action select_game
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (select_game_pending)) (at start (insert_game_done)))
    :effect (and (at start (not (select_game_pending))) (at end (select_game_done)))
  )

  (:durative-action clean_case
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (clean_case_pending))
    :effect (and (at start (not (clean_case_pending))) (at end (clean_case_done)))
  )

  (:durative-action configure_clock
    :parameters ()
    :duration (= ?duration 90)
    :condition (and (at start (configure_clock_pending)) (at start (open_lid_done)))
    :effect (and (at start (not (configure_clock_pending))) (at end (configure_clock_done)))
  )

  (:durative-action open_lid
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (open_lid_pending)) (at start (locate_console_done)))
    :effect (and (at start (not (open_lid_pending))) (at end (open_lid_done)))
  )
)
