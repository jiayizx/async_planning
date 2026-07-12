(define (domain grocery-trip)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step) (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step) (is_step4 ?s - step)
    (is_step5 ?s - step) (is_step6 ?s - step) (is_step7 ?s - step) (is_step8 ?s - step)
    (is_step9 ?s - step) (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step) (is_step16 ?s - step)
    (is_step17 ?s - step) (is_step18 ?s - step) (is_step19 ?s - step) (is_step20 ?s - step)
    (is_step21 ?s - step) (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step) (is_step28 ?s - step)
    (is_step29 ?s - step) (is_step30 ?s - step) (is_step31 ?s - step) (is_step32 ?s - step)
    (is_step33 ?s - step) (is_step34 ?s - step) (is_step35 ?s - step) (is_step36 ?s - step)
    (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step) (is_step40 ?s - step)
    (pantry_checked) (shopping_list_compiled) (coat_on) (produce_bags_located)
    (front_door_locked) (tire_pressure_checked) (car_keys_grabbed) (refrigerator_checked)
    (coupons_searched) (loyalty_app_downloaded) (lights_off) (walking_shoes_on)
    (weather_checked) (budget_set) (circular_reviewed) (trash_emptied)
    (meal_ideas_written) (clean_socks_found) (power_bank_grabbed) (cold_bag_picked_up)
    (bags_at_entryway) (recycling_taken_out) (store_decided) (wallet_receipts_cleared)
    (awake) (gas_checked) (coffee_finished) (dishes_washed)
    (mail_checked) (teeth_brushed) (hat_gloves_on) (sunglasses_found)
    (store_hours_checked) (lip_balm_applied) (fragrance_applied) (wallet_id_found)
    (stove_checked) (windows_closed) (phone_charged) (pockets_checked)
  )

  (:durative-action check_pantry
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (awake)) (at start (dishes_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pantry_checked))))
  (:durative-action compile_shopping_list
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (pantry_checked)) (at start (wallet_receipts_cleared)) (at start (wallet_id_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shopping_list_compiled))))
  (:durative-action put_on_coat
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coat_on))))
  (:durative-action locate_produce_bags
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (loyalty_app_downloaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (produce_bags_located))))
  (:durative-action lock_front_door
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (lights_off)) (at start (windows_closed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (front_door_locked))))
  (:durative-action check_tire_pressure
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (gas_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tire_pressure_checked))))
  (:durative-action grab_car_keys
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (coffee_finished)) (at start (mail_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (car_keys_grabbed))))
  (:durative-action check_refrigerator
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (trash_emptied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (refrigerator_checked))))
  (:durative-action search_coupons
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coupons_searched))))
  (:durative-action download_loyalty_app
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (coupons_searched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (loyalty_app_downloaded))))
  (:durative-action turn_off_lights
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lights_off))))
  (:durative-action put_on_walking_shoes
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (coffee_finished)) (at start (wallet_id_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (walking_shoes_on))))
  (:durative-action check_weather
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (gas_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weather_checked))))
  (:durative-action set_budget
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (coupons_searched)) (at start (mail_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (budget_set))))
  (:durative-action review_circular
    :parameters (?s - step) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (shopping_list_compiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (circular_reviewed))))
  (:durative-action empty_trash
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (mail_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trash_emptied))))
  (:durative-action write_meal_ideas
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (pantry_checked)) (at start (refrigerator_checked)) (at start (bags_at_entryway)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meal_ideas_written))))
  (:durative-action find_clean_socks
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clean_socks_found))))
  (:durative-action grab_power_bank
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (loyalty_app_downloaded)) (at start (coffee_finished)) (at start (phone_charged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (power_bank_grabbed))))
  (:durative-action pick_up_cold_bag
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (weather_checked)) (at start (wallet_receipts_cleared)) (at start (gas_checked)) (at start (hat_gloves_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cold_bag_picked_up))))
  (:durative-action place_bags_entryway
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (store_decided)) (at start (coffee_finished)) (at start (teeth_brushed)) (at start (sunglasses_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bags_at_entryway))))
  (:durative-action take_out_recycling
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (trash_emptied)) (at start (cold_bag_picked_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (recycling_taken_out))))
  (:durative-action decide_store
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (store_decided))))
  (:durative-action clear_wallet_receipts
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wallet_receipts_cleared))))
  (:durative-action wake_up
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (awake))))
  (:durative-action check_gas
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (store_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gas_checked))))
  (:durative-action finish_coffee
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coffee_finished))))
  (:durative-action wash_dishes
    :parameters (?s - step) :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dishes_washed))))
  (:durative-action check_mail
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mail_checked))))
  (:durative-action brush_teeth
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (awake)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (teeth_brushed))))
  (:durative-action put_on_hat_gloves
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)) (at start (coat_on)) (at start (walking_shoes_on)) (at start (circular_reviewed)) (at start (dishes_washed)) (at start (lip_balm_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hat_gloves_on))))
  (:durative-action find_sunglasses
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)) (at start (produce_bags_located)) (at start (store_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunglasses_found))))
  (:durative-action check_store_hours
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)) (at start (clean_socks_found)) (at start (awake)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (store_hours_checked))))
  (:durative-action apply_lip_balm
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)) (at start (tire_pressure_checked)) (at start (teeth_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lip_balm_applied))))
  (:durative-action apply_fragrance
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)) (at start (teeth_brushed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fragrance_applied))))
  (:durative-action find_wallet_id
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)) (at start (store_decided)) (at start (awake)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wallet_id_found))))
  (:durative-action check_stove
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)) (at start (wallet_id_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stove_checked))))
  (:durative-action close_windows
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (windows_closed))))
  (:durative-action charge_phone
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)) (at start (loyalty_app_downloaded)) (at start (wallet_id_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_charged))))
  (:durative-action double_check_pockets
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)) (at start (wallet_id_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pockets_checked))))
)