(define (domain playground)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step)
    (sunscreen_applied)
    (stroller_keys_found)
    (sand_toys_unpacked)
    (granola_bar_eaten)
    (snack_bag_packed)
    (park_entrance_reached)
    (slide_turn_available)
    (hand_sanitizer_applied)
    (sandcastle_built)
    (slide_temperature_checked)
    (rope_ladder_climbed)
    (tire_swing_used)
    (park_bench_found)
    (slide_descended)
    (rest_completed)
    (playground_gate_entered)
    (sandbox_area_reached)
    (stroller_lock_unlocked)
    (woodchips_crossed)
    (water_fountain_reached)
  )

  (:durative-action put_on_sunscreen
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunscreen_applied))))

  (:durative-action find_stroller_keys
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stroller_keys_found))))

  (:durative-action unpack_sand_toys
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (woodchips_crossed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sand_toys_unpacked))))

  (:durative-action eat_granola_bar
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (snack_bag_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (granola_bar_eaten))))

  (:durative-action pack_snack_bag
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (snack_bag_packed))))

  (:durative-action walk_to_park_entrance
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (sunscreen_applied)) (at start (stroller_lock_unlocked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (park_entrance_reached))))

  (:durative-action wait_for_slide_turn
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (rope_ladder_climbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slide_turn_available))))

  (:durative-action apply_hand_sanitizer
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (sandbox_area_reached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hand_sanitizer_applied))))

  (:durative-action build_sandcastle
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (sunscreen_applied)) (at start (sand_toys_unpacked)) (at start (sandbox_area_reached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sandcastle_built))))

  (:durative-action check_slide_temperature
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (playground_gate_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slide_temperature_checked))))

  (:durative-action climb_rope_ladder
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (playground_gate_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rope_ladder_climbed))))

  (:durative-action use_tire_swing
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (playground_gate_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tire_swing_used))))

  (:durative-action find_park_bench
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (park_entrance_reached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (park_bench_found))))

  (:durative-action slide_down_slide
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (slide_temperature_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slide_descended))))

  (:durative-action sit_down_to_rest
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (park_bench_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rest_completed))))

  (:durative-action enter_playground_gate
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (sunscreen_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (playground_gate_entered))))

  (:durative-action walk_to_sandbox
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (playground_gate_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sandbox_area_reached))))

  (:durative-action unlock_stroller_lock
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (stroller_keys_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stroller_lock_unlocked))))

  (:durative-action run_across_woodchips
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (hand_sanitizer_applied)) (at start (rope_ladder_climbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (woodchips_crossed))))

  (:durative-action run_to_water_fountain
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (slide_descended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_fountain_reached))))
)