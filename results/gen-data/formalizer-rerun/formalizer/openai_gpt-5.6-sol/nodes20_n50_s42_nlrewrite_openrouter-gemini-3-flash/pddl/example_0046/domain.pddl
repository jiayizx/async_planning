(define (domain candy-store-visit)
  (:requirements :typing :durative-actions)
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
    (address_found)
    (walking_shoes_on)
    (weather_checked)
    (cash_withdrawn)
    (store_entered)
    (truffles_selected)
    (tote_bag_bought)
    (jacket_on)
    (basket_taken)
    (storefront_reached)
    (doors_opened)
    (gps_programmed)
    (wallet_found)
    (candy_weighed)
    (neighborhood_chosen)
    (closing_time_checked)
    (phone_charged)
    (front_door_locked)
    (id_verified)
    (sidewalk_reached)
  )

  (:durative-action look_up_address
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (neighborhood_chosen))
      (at start (front_door_locked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (address_found))))

  (:durative-action put_on_walking_shoes
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (gps_programmed))
      (at start (front_door_locked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (walking_shoes_on))))

  (:durative-action check_weather
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (weather_checked))))

  (:durative-action withdraw_cash
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (id_verified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cash_withdrawn))))

  (:durative-action enter_store
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (weather_checked))
      (at start (doors_opened))
      (at start (closing_time_checked))
      (at start (front_door_locked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (store_entered))))

  (:durative-action select_truffles
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (basket_taken)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (truffles_selected))))

  (:durative-action buy_tote_bag
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (cash_withdrawn)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tote_bag_bought))))

  (:durative-action put_on_jacket
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (id_verified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (jacket_on))))

  (:durative-action take_basket
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (storefront_reached)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (basket_taken))))

  (:durative-action arrive_at_storefront
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (storefront_reached))))

  (:durative-action wait_for_doors
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (sidewalk_reached)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (doors_opened))))

  (:durative-action program_gps
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (address_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gps_programmed))))

  (:durative-action find_wallet
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wallet_found))))

  (:durative-action weigh_candy
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (basket_taken))
      (at start (neighborhood_chosen))
      (at start (front_door_locked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (candy_weighed))))

  (:durative-action choose_neighborhood
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (neighborhood_chosen))))

  (:durative-action check_closing_time
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step16 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (closing_time_checked))))

  (:durative-action charge_phone
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step17 ?s))
      (at start (closing_time_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (phone_charged))))

  (:durative-action lock_front_door
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step18 ?s))
      (at start (phone_charged)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (front_door_locked))))

  (:durative-action verify_id
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step19 ?s))
      (at start (wallet_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (id_verified))))

  (:durative-action reach_sidewalk
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step20 ?s))
      (at start (weather_checked))
      (at start (cash_withdrawn)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sidewalk_reached))))
)