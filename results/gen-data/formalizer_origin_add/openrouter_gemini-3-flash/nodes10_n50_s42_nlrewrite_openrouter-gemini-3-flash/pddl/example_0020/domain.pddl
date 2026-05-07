(define (domain nintendo_ds_setup)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cartridge_inserted)
    (screen_calibrated)
    (console_located)
    (power_on)
    (battery_charged)
    (profile_selected)
    (game_started)
    (casing_cleaned)
    (levels_adjusted)
    (lid_opened)
  )

  (:durative-action step1_insert_cartridge
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (battery_charged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cartridge_inserted)))
  )

  (:durative-action step2_calibrate_screen
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (casing_cleaned)) (at start (levels_adjusted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (screen_calibrated)))
  )

  (:durative-action step3_locate_console
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (console_located)))
  )

  (:durative-action step4_toggle_power
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (profile_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (power_on)))
  )

  (:durative-action step5_charge_battery
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (power_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (battery_charged)))
  )

  (:durative-action step6_select_profile
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (screen_calibrated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (profile_selected)))
  )

  (:durative-action step7_press_start
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (and (at start (step_pending ?s)) (at start (cartridge_inserted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (game_started)))
  )

  (:durative-action step8_clean_casing
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (casing_cleaned)))
  )

  (:durative-action step9_adjust_levels
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (lid_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (levels_adjusted)))
  )

  (:durative-action step10_open_lid
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (console_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lid_opened)))
  )
)