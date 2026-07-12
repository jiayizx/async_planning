(define (domain play_nintendo_ds)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cartridge_inserted)
    (touch_screen_calibrated)
    (console_located)
    (power_switched_on)
    (battery_charged)
    (user_profile_selected)
    (game_started)
    (casing_cleaned)
    (display_adjusted)
    (clamshell_opened)
  )

  (:durative-action insert_game_cartridge
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and
      (at start (step_pending ?s))
      (at start (battery_charged))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cartridge_inserted))
    )
  )

  (:durative-action calibrate_touch_screen
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (casing_cleaned))
      (at start (display_adjusted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (touch_screen_calibrated))
    )
  )

  (:durative-action locate_console
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (console_located))
    )
  )

  (:durative-action toggle_power_switch
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and
      (at start (step_pending ?s))
      (at start (user_profile_selected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (power_switched_on))
    )
  )

  (:durative-action charge_battery
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (power_switched_on))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (battery_charged))
    )
  )

  (:durative-action select_user_profile
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (touch_screen_calibrated))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (user_profile_selected))
    )
  )

  (:durative-action press_game_start
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (and
      (at start (step_pending ?s))
      (at start (cartridge_inserted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (game_started))
    )
  )

  (:durative-action clean_exterior_casing
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (casing_cleaned))
    )
  )

  (:durative-action adjust_volume_brightness
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (clamshell_opened))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (display_adjusted))
    )
  )

  (:durative-action open_clamshell_lid
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and
      (at start (step_pending ?s))
      (at start (console_located))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (clamshell_opened))
    )
  )
)