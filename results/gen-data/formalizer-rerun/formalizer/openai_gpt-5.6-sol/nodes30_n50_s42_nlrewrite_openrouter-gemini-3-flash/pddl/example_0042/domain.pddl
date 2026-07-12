(define (domain park-walk)
  (:requirements :typing :durative-actions)
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
    (is_step19 ?s - step) (is_step20 ?s - step) (is_step21 ?s - step)
    (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step)
    (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (shoes_found) (forecast_checked) (bottle_filled) (smartwatch_charged)
    (podcast_downloaded) (granola_bar_packed) (sunscreen_applied)
    (sunglasses_found) (keys_located) (park_open_checked)
    (fitness_tracker_on) (trail_decided) (socks_on) (clothes_selected)
    (door_space_cleared) (smartphone_found) (front_door_locked)
    (headphone_battery_checked) (headphones_connected) (bottle_rinsed)
    (keys_phone_pocketed) (athletic_clothes_on) (hip_pack_prepared)
    (directions_found) (laundry_checked) (out_of_bed) (hat_on)
    (shoelaces_tied) (everything_checked) (walk_ready)
  )

  (:durative-action find_walking_shoes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (park_open_checked)) (at start (door_space_cleared)) (at start (headphone_battery_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_found))))

  (:durative-action check_weather_forecast
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (smartphone_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (forecast_checked))))

  (:durative-action fill_water_bottle
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (bottle_rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottle_filled))))

  (:durative-action charge_smartwatch
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (smartwatch_charged))))

  (:durative-action download_podcast
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (shoelaces_tied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (podcast_downloaded))))

  (:durative-action pack_granola_bar
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (hip_pack_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (granola_bar_packed))))

  (:durative-action apply_sunscreen
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (sunglasses_found)) (at start (trail_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunscreen_applied))))

  (:durative-action find_sunglasses
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunglasses_found))))

  (:durative-action locate_house_keys
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (keys_located))))

  (:durative-action check_park_open
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (park_open_checked))))

  (:durative-action put_on_fitness_tracker
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (shoelaces_tied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fitness_tracker_on))))

  (:durative-action decide_trail
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trail_decided))))

  (:durative-action put_on_socks
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (shoes_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (socks_on))))

  (:durative-action select_athletic_clothes
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_selected))))

  (:durative-action clear_door_space
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (smartphone_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (door_space_cleared))))

  (:durative-action find_smartphone
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (out_of_bed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (smartphone_found))))

  (:durative-action lock_front_door
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (athletic_clothes_on)) (at start (hat_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (front_door_locked))))

  (:durative-action check_headphone_battery
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (headphone_battery_checked))))

  (:durative-action connect_headphones
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (fitness_tracker_on)) (at start (headphone_battery_checked)) (at start (hip_pack_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (headphones_connected))))

  (:durative-action rinse_water_bottle
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (out_of_bed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bottle_rinsed))))

  (:durative-action pocket_keys_and_phone
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (forecast_checked)) (at start (keys_located)) (at start (smartphone_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (keys_phone_pocketed))))

  (:durative-action change_into_athletic_clothes
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (clothes_selected)) (at start (hip_pack_prepared)) (at start (laundry_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (athletic_clothes_on))))

  (:durative-action prepare_hip_pack
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (directions_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hip_pack_prepared))))

  (:durative-action look_up_directions
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (trail_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (directions_found))))

  (:durative-action check_laundry
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laundry_checked))))

  (:durative-action wake_up
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (out_of_bed))))

  (:durative-action put_on_hat
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (park_open_checked)) (at start (trail_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hat_on))))

  (:durative-action tie_shoelaces
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (shoes_found)) (at start (smartwatch_charged)) (at start (hip_pack_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoelaces_tied))))

  (:durative-action double_check_everything
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (socks_on)) (at start (door_space_cleared)) (at start (laundry_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (everything_checked))))

  (:durative-action walk_to_car
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (bottle_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (walk_ready))))
)