(define (domain dishwasher-installation)
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
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (is_step16 ?s - step)
    (is_step17 ?s - step)
    (is_step18 ?s - step)
    (is_step19 ?s - step)
    (is_step20 ?s - step)
    (old_unit_removed)
    (new_unit_positioned)
    (water_supply_connected)
    (cabinet_height_measured)
    (water_checked_for_leaks)
    (power_cord_plugged)
    (kickplate_attached)
    (cardboard_disposed)
    (dishwasher_unboxed)
    (leveling_legs_adjusted)
    (floor_runner_laid)
    (operation_verified)
    (circuit_breaker_off)
    (drain_hose_routed)
    (mounting_brackets_secured)
    (protective_film_removed)
    (breaker_panel_labeled)
    (old_wiring_disconnected)
    (delivery_path_cleared)
    (shipping_pallet_broken_down)
  )

  (:durative-action remove_old_dishwasher
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (old_wiring_disconnected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (old_unit_removed))))

  (:durative-action slide_new_dishwasher_into_place
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (old_unit_removed))
      (at start (floor_runner_laid)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (new_unit_positioned))))

  (:durative-action connect_water_supply
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (water_supply_connected))))

  (:durative-action measure_cabinet_opening
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cabinet_height_measured))))

  (:durative-action turn_on_water_and_check_leaks
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (water_supply_connected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (water_checked_for_leaks))))

  (:durative-action plug_in_power_cord
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (protective_film_removed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (power_cord_plugged))))

  (:durative-action attach_kickplate
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (leveling_legs_adjusted))
      (at start (mounting_brackets_secured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (kickplate_attached))))

  (:durative-action dispose_cardboard
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (shipping_pallet_broken_down)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cardboard_disposed))))

  (:durative-action unbox_dishwasher
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (delivery_path_cleared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dishwasher_unboxed))))

  (:durative-action adjust_leveling_legs
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (leveling_legs_adjusted))))

  (:durative-action lay_floor_runner
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (floor_runner_laid))))

  (:durative-action run_test_cycle
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (water_supply_connected))
      (at start (power_cord_plugged))
      (at start (drain_hose_routed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (operation_verified))))

  (:durative-action turn_off_circuit_breaker
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (circuit_breaker_off))))

  (:durative-action route_drain_hose
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drain_hose_routed))))

  (:durative-action secure_mounting_brackets
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (cabinet_height_measured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mounting_brackets_secured))))

  (:durative-action remove_protective_film
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step16 ?s))
      (at start (dishwasher_unboxed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (protective_film_removed))))

  (:durative-action label_breaker_panel
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step17 ?s))
      (at start (circuit_breaker_off)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (breaker_panel_labeled))))

  (:durative-action disconnect_old_wiring
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step18 ?s))
      (at start (circuit_breaker_off)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (old_wiring_disconnected))))

  (:durative-action clear_delivery_path
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step19 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (delivery_path_cleared))))

  (:durative-action break_down_shipping_pallet
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step20 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shipping_pallet_broken_down))))
)