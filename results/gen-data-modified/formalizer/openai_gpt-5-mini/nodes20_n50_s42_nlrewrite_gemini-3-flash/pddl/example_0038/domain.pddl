(define (domain playground)
  (:requirements :durative-actions)
  (:predicates
    (put_on_sunscreen_pending) (put_on_sunscreen_done)
    (find_spare_keys_pending) (find_spare_keys_done)
    (unload_stroller_pending) (unload_stroller_done)
    (buy_ice_cream_pending) (buy_ice_cream_done)
    (locate_ice_cream_truck_pending) (locate_ice_cream_truck_done)
    (walk_parking_to_gate_pending) (walk_parking_to_gate_done)
    (set_up_picnic_blanket_pending) (set_up_picnic_blanket_done)
    (fill_water_bottles_pending) (fill_water_bottles_done)
    (climb_jungle_gym_pending) (climb_jungle_gym_done)
    (check_slide_heat_pending) (check_slide_heat_done)
    (find_shaded_spot_pending) (find_shaded_spot_done)
    (put_on_sunglasses_pending) (put_on_sunglasses_done)
    (pay_entrance_fee_pending) (pay_entrance_fee_done)
    (slide_big_slide_pending) (slide_big_slide_done)
    (push_friend_swings_pending) (push_friend_swings_done)
    (pack_diaper_bag_pending) (pack_diaper_bag_done)
    (walk_to_fountain_area_pending) (walk_to_fountain_area_done)
    (unlock_car_doors_pending) (unlock_car_doors_done)
    (drive_to_playground_pending) (drive_to_playground_done)
    (run_to_sandbox_pending) (run_to_sandbox_done)
  )

  (:durative-action do_put_on_sunscreen
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (put_on_sunscreen_pending))
    :effect (and (at start (not (put_on_sunscreen_pending))) (at end (put_on_sunscreen_done)))
  )

  (:durative-action do_find_spare_keys
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (find_spare_keys_pending))
    :effect (and (at start (not (find_spare_keys_pending))) (at end (find_spare_keys_done)))
  )

  (:durative-action do_unload_stroller
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (unload_stroller_pending)) (at start (drive_to_playground_done)))
    :effect (and (at start (not (unload_stroller_pending))) (at end (unload_stroller_done)))
  )

  (:durative-action do_buy_ice_cream
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (buy_ice_cream_pending)) (at start (locate_ice_cream_truck_done)))
    :effect (and (at start (not (buy_ice_cream_pending))) (at end (buy_ice_cream_done)))
  )

  (:durative-action do_locate_ice_cream_truck
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (locate_ice_cream_truck_pending))
    :effect (and (at start (not (locate_ice_cream_truck_pending))) (at end (locate_ice_cream_truck_done)))
  )

  (:durative-action do_walk_parking_to_gate
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (walk_parking_to_gate_pending)) (at start (put_on_sunscreen_done)) (at start (unlock_car_doors_done)))
    :effect (and (at start (not (walk_parking_to_gate_pending))) (at end (walk_parking_to_gate_done)))
  )

  (:durative-action do_set_up_picnic_blanket
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (set_up_picnic_blanket_pending)) (at start (find_shaded_spot_done)))
    :effect (and (at start (not (set_up_picnic_blanket_pending))) (at end (set_up_picnic_blanket_done)))
  )

  (:durative-action do_fill_water_bottles
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (fill_water_bottles_pending)) (at start (walk_to_fountain_area_done)))
    :effect (and (at start (not (fill_water_bottles_pending))) (at end (fill_water_bottles_done)))
  )

  (:durative-action do_climb_jungle_gym
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (climb_jungle_gym_pending)) (at start (put_on_sunscreen_done)) (at start (unload_stroller_done)) (at start (walk_to_fountain_area_done)))
    :effect (and (at start (not (climb_jungle_gym_pending))) (at end (climb_jungle_gym_done)))
  )

  (:durative-action do_check_slide_heat
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (check_slide_heat_pending)) (at start (pack_diaper_bag_done)))
    :effect (and (at start (not (check_slide_heat_pending))) (at end (check_slide_heat_done)))
  )

  (:durative-action do_find_shaded_spot
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (find_shaded_spot_pending)) (at start (pack_diaper_bag_done)))
    :effect (and (at start (not (find_shaded_spot_pending))) (at end (find_shaded_spot_done)))
  )

  (:durative-action do_put_on_sunglasses
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (put_on_sunglasses_pending)) (at start (pack_diaper_bag_done)))
    :effect (and (at start (not (put_on_sunglasses_pending))) (at end (put_on_sunglasses_done)))
  )

  (:durative-action do_pay_entrance_fee
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pay_entrance_fee_pending)) (at start (walk_parking_to_gate_done)))
    :effect (and (at start (not (pay_entrance_fee_pending))) (at end (pay_entrance_fee_done)))
  )

  (:durative-action do_slide_big_slide
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (slide_big_slide_pending)) (at start (check_slide_heat_done)))
    :effect (and (at start (not (slide_big_slide_pending))) (at end (slide_big_slide_done)))
  )

  (:durative-action do_push_friend_swings
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (push_friend_swings_pending)) (at start (pay_entrance_fee_done)))
    :effect (and (at start (not (push_friend_swings_pending))) (at end (push_friend_swings_done)))
  )

  (:durative-action do_pack_diaper_bag
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pack_diaper_bag_pending)) (at start (put_on_sunscreen_done)))
    :effect (and (at start (not (pack_diaper_bag_pending))) (at end (pack_diaper_bag_done)))
  )

  (:durative-action do_walk_to_fountain_area
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (walk_to_fountain_area_pending)) (at start (pack_diaper_bag_done)))
    :effect (and (at start (not (walk_to_fountain_area_pending))) (at end (walk_to_fountain_area_done)))
  )

  (:durative-action do_unlock_car_doors
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (unlock_car_doors_pending)) (at start (find_spare_keys_done)))
    :effect (and (at start (not (unlock_car_doors_pending))) (at end (unlock_car_doors_done)))
  )

  (:durative-action do_drive_to_playground
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (drive_to_playground_pending)) (at start (fill_water_bottles_done)) (at start (find_shaded_spot_done)))
    :effect (and (at start (not (drive_to_playground_pending))) (at end (drive_to_playground_done)))
  )

  (:durative-action do_run_to_sandbox
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (run_to_sandbox_pending)) (at start (slide_big_slide_done)))
    :effect (and (at start (not (run_to_sandbox_pending))) (at end (run_to_sandbox_done)))
  )
)
