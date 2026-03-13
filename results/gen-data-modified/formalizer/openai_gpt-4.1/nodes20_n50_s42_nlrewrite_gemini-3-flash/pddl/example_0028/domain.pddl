(define (domain movie_theater_prep)
  (:requirements :durative-actions)
  (:predicates
    (purchase_digital_tickets_online_pending)
    (purchase_digital_tickets_online_done)
    (walk_from_parking_lot_pending)
    (walk_from_parking_lot_done)
    (check_local_theater_showtimes_pending)
    (check_local_theater_showtimes_done)
    (iron_clean_shirt_pending)
    (iron_clean_shirt_done)
    (charge_smartphone_pending)
    (charge_smartphone_done)
    (drive_car_to_cinema_pending)
    (drive_car_to_cinema_done)
    (take_quick_shower_pending)
    (take_quick_shower_done)
    (get_dressed_in_ironed_clothes_pending)
    (get_dressed_in_ironed_clothes_done)
    (find_wallet_and_keys_pending)
    (find_wallet_and_keys_done)
    (decide_which_movie_pending)
    (decide_which_movie_done)
    (feed_pet_pending)
    (feed_pet_done)
    (confirm_battery_level_pending)
    (confirm_battery_level_done)
    (double_check_windows_locked_pending)
    (double_check_windows_locked_done)
    (pick_out_outfit_pending)
    (pick_out_outfit_done)
    (call_friends_pending)
    (call_friends_done)
    (put_on_shoes_and_coat_pending)
    (put_on_shoes_and_coat_done)
    (check_weather_forecast_pending)
    (check_weather_forecast_done)
    (prepare_small_snack_pending)
    (prepare_small_snack_done)
    (download_theater_app_pending)
    (download_theater_app_done)
    (clear_schedule_pending)
    (clear_schedule_done)
  )

  (:durative-action purchase_digital_tickets_online
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (purchase_digital_tickets_online_pending)) (at start (charge_smartphone_done)) (at start (find_wallet_and_keys_done)))
    :effect (and (at start (not (purchase_digital_tickets_online_pending))) (at end (purchase_digital_tickets_online_done)))
  )

  (:durative-action walk_from_parking_lot
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (walk_from_parking_lot_pending)) (at start (drive_car_to_cinema_done)) (at start (double_check_windows_locked_done)))
    :effect (and (at start (not (walk_from_parking_lot_pending))) (at end (walk_from_parking_lot_done)))
  )

  (:durative-action check_local_theater_showtimes
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (check_local_theater_showtimes_pending)) (at start (clear_schedule_done)))
    :effect (and (at start (not (check_local_theater_showtimes_pending))) (at end (check_local_theater_showtimes_done)))
  )

  (:durative-action iron_clean_shirt
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (iron_clean_shirt_pending)) (at start (prepare_small_snack_done)))
    :effect (and (at start (not (iron_clean_shirt_pending))) (at end (iron_clean_shirt_done)))
  )

  (:durative-action charge_smartphone
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (charge_smartphone_pending)) (at start (confirm_battery_level_done)))
    :effect (and (at start (not (charge_smartphone_pending))) (at end (charge_smartphone_done)))
  )

  (:durative-action drive_car_to_cinema
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (drive_car_to_cinema_pending)) (at start (download_theater_app_done)) (at start (clear_schedule_done)))
    :effect (and (at start (not (drive_car_to_cinema_pending))) (at end (drive_car_to_cinema_done)))
  )

  (:durative-action take_quick_shower
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (take_quick_shower_pending)) (at start (decide_which_movie_done)))
    :effect (and (at start (not (take_quick_shower_pending))) (at end (take_quick_shower_done)))
  )

  (:durative-action get_dressed_in_ironed_clothes
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (get_dressed_in_ironed_clothes_pending)) (at start (iron_clean_shirt_done)))
    :effect (and (at start (not (get_dressed_in_ironed_clothes_pending))) (at end (get_dressed_in_ironed_clothes_done)))
  )

  (:durative-action find_wallet_and_keys
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (find_wallet_and_keys_pending)) (at start (charge_smartphone_done)) (at start (get_dressed_in_ironed_clothes_done)) (at start (prepare_small_snack_done)))
    :effect (and (at start (not (find_wallet_and_keys_pending))) (at end (find_wallet_and_keys_done)))
  )

  (:durative-action decide_which_movie
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (decide_which_movie_pending))
    :effect (and (at start (not (decide_which_movie_pending))) (at end (decide_which_movie_done)))
  )

  (:durative-action feed_pet
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (feed_pet_pending)) (at start (confirm_battery_level_done)))
    :effect (and (at start (not (feed_pet_pending))) (at end (feed_pet_done)))
  )

  (:durative-action confirm_battery_level
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (confirm_battery_level_pending)) (at start (check_weather_forecast_done)))
    :effect (and (at start (not (confirm_battery_level_pending))) (at end (confirm_battery_level_done)))
  )

  (:durative-action double_check_windows_locked
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (double_check_windows_locked_pending))
    :effect (and (at start (not (double_check_windows_locked_pending))) (at end (double_check_windows_locked_done)))
  )

  (:durative-action pick_out_outfit
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pick_out_outfit_pending)) (at start (take_quick_shower_done)))
    :effect (and (at start (not (pick_out_outfit_pending))) (at end (pick_out_outfit_done)))
  )

  (:durative-action call_friends
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (call_friends_pending)) (at start (check_local_theater_showtimes_done)))
    :effect (and (at start (not (call_friends_pending))) (at end (call_friends_done)))
  )

  (:durative-action put_on_shoes_and_coat
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (put_on_shoes_and_coat_pending)) (at start (pick_out_outfit_done)))
    :effect (and (at start (not (put_on_shoes_and_coat_pending))) (at end (put_on_shoes_and_coat_done)))
  )

  (:durative-action check_weather_forecast
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (check_weather_forecast_pending)) (at start (pick_out_outfit_done)))
    :effect (and (at start (not (check_weather_forecast_pending))) (at end (check_weather_forecast_done)))
  )

  (:durative-action prepare_small_snack
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (prepare_small_snack_pending)) (at start (decide_which_movie_done)) (at start (feed_pet_done)))
    :effect (and (at start (not (prepare_small_snack_pending))) (at end (prepare_small_snack_done)))
  )

  (:durative-action download_theater_app
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (download_theater_app_pending)) (at start (purchase_digital_tickets_online_done)))
    :effect (and (at start (not (download_theater_app_pending))) (at end (download_theater_app_done)))
  )

  (:durative-action clear_schedule
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (clear_schedule_pending))
    :effect (and (at start (not (clear_schedule_pending))) (at end (clear_schedule_done)))
  )
)
