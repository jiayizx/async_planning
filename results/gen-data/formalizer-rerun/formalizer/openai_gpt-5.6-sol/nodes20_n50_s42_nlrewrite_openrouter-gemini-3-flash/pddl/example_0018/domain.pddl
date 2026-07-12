(define (domain starbucks-secret-menu)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_done ?s - step)
    (step1_pending ?s - step)
    (step2_pending ?s - step)
    (step3_pending ?s - step)
    (step4_pending ?s - step)
    (step5_pending ?s - step)
    (step6_pending ?s - step)
    (step7_pending ?s - step)
    (step8_pending ?s - step)
    (step9_pending ?s - step)
    (step10_pending ?s - step)
    (step11_pending ?s - step)
    (step12_pending ?s - step)
    (step13_pending ?s - step)
    (step14_pending ?s - step)
    (step15_pending ?s - step)
    (step16_pending ?s - step)
    (step17_pending ?s - step)
    (step18_pending ?s - step)
    (step19_pending ?s - step)
    (step20_pending ?s - step)
    (recipe_read)
    (app_downloaded)
    (syrups_checked)
    (mobile_orders_confirmed)
    (drink_picked_up)
    (base_drink_selected)
    (store_selected)
    (account_logged_in)
    (recipe_saved)
    (balance_checked)
    (location_enabled)
    (drink_size_verified)
    (toppings_checked)
    (account_created)
    (ready_notification_received)
    (app_updated)
    (modifications_entered)
    (card_reloaded)
    (order_placed)
    (order_reviewed)
  )

  (:durative-action read_recipe
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step1_pending ?s))
      (at start (syrups_checked))
      (at start (recipe_saved))
      (at start (balance_checked)))
    :effect (and
      (at start (not (step1_pending ?s)))
      (at end (step_done ?s))
      (at end (recipe_read))))

  (:durative-action download_app
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step2_pending ?s))
    :effect (and
      (at start (not (step2_pending ?s)))
      (at end (step_done ?s))
      (at end (app_downloaded))))

  (:durative-action check_syrups
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step3_pending ?s))
      (at start (base_drink_selected)))
    :effect (and
      (at start (not (step3_pending ?s)))
      (at end (step_done ?s))
      (at end (syrups_checked))))

  (:durative-action confirm_mobile_orders
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step4_pending ?s))
      (at start (toppings_checked)))
    :effect (and
      (at start (not (step4_pending ?s)))
      (at end (step_done ?s))
      (at end (mobile_orders_confirmed))))

  (:durative-action pick_up_drink
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step5_pending ?s))
      (at start (modifications_entered))
      (at start (order_placed)))
    :effect (and
      (at start (not (step5_pending ?s)))
      (at end (step_done ?s))
      (at end (drink_picked_up))))

  (:durative-action select_base_drink
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step6_pending ?s))
      (at start (account_created)))
    :effect (and
      (at start (not (step6_pending ?s)))
      (at end (step_done ?s))
      (at end (base_drink_selected))))

  (:durative-action select_store
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step7_pending ?s))
      (at start (mobile_orders_confirmed))
      (at start (account_logged_in)))
    :effect (and
      (at start (not (step7_pending ?s)))
      (at end (step_done ?s))
      (at end (store_selected))))

  (:durative-action log_in
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step8_pending ?s))
      (at start (app_updated)))
    :effect (and
      (at start (not (step8_pending ?s)))
      (at end (step_done ?s))
      (at end (account_logged_in))))

  (:durative-action save_recipe
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step9_pending ?s))
    :effect (and
      (at start (not (step9_pending ?s)))
      (at end (step_done ?s))
      (at end (recipe_saved))))

  (:durative-action check_balance
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step10_pending ?s))
    :effect (and
      (at start (not (step10_pending ?s)))
      (at end (step_done ?s))
      (at end (balance_checked))))

  (:durative-action enable_location
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (step11_pending ?s))
    :effect (and
      (at start (not (step11_pending ?s)))
      (at end (step_done ?s))
      (at end (location_enabled))))

  (:durative-action verify_size
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step12_pending ?s))
    :effect (and
      (at start (not (step12_pending ?s)))
      (at end (step_done ?s))
      (at end (drink_size_verified))))

  (:durative-action call_store
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step13_pending ?s))
      (at start (syrups_checked)))
    :effect (and
      (at start (not (step13_pending ?s)))
      (at end (step_done ?s))
      (at end (toppings_checked))))

  (:durative-action create_account
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step14_pending ?s))
      (at start (account_logged_in)))
    :effect (and
      (at start (not (step14_pending ?s)))
      (at end (step_done ?s))
      (at end (account_created))))

  (:durative-action wait_for_notification
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step15_pending ?s))
      (at start (card_reloaded))
      (at start (order_reviewed)))
    :effect (and
      (at start (not (step15_pending ?s)))
      (at end (step_done ?s))
      (at end (ready_notification_received))))

  (:durative-action update_app
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step16_pending ?s))
      (at start (app_downloaded)))
    :effect (and
      (at start (not (step16_pending ?s)))
      (at end (step_done ?s))
      (at end (app_updated))))

  (:durative-action enter_modifications
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step17_pending ?s))
      (at start (recipe_read))
      (at start (recipe_saved))
      (at start (drink_size_verified)))
    :effect (and
      (at start (not (step17_pending ?s)))
      (at end (step_done ?s))
      (at end (modifications_entered))))

  (:durative-action reload_card
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step18_pending ?s))
      (at start (balance_checked)))
    :effect (and
      (at start (not (step18_pending ?s)))
      (at end (step_done ?s))
      (at end (card_reloaded))))

  (:durative-action place_order
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step19_pending ?s))
      (at start (modifications_entered)))
    :effect (and
      (at start (not (step19_pending ?s)))
      (at end (step_done ?s))
      (at end (order_placed))))

  (:durative-action review_order
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step20_pending ?s))
      (at start (app_downloaded))
      (at start (location_enabled)))
    :effect (and
      (at start (not (step20_pending ?s)))
      (at end (step_done ?s))
      (at end (order_reviewed))))
)