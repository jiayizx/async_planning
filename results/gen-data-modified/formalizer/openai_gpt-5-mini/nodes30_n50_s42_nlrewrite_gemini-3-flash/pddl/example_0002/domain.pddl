(define (domain buy_milk_allergy_free_chocolate)
  (:requirements :durative-actions)
  (:predicates
    (research_brands_pending) (research_brands_done)
    (download_app_pending) (download_app_done)
    (check_discounts_pending) (check_discounts_done)
    (compile_ingredients_pending) (compile_ingredients_done)
    (locate_aisle_pending) (locate_aisle_done)
    (ask_clerk_pending) (ask_clerk_done)
    (read_label_dark_pending) (read_label_dark_done)
    (read_label_rice_pending) (read_label_rice_done)
    (read_label_oat_pending) (read_label_oat_done)
    (verify_nutfree_pending) (verify_nutfree_done)
    (compare_prices_pending) (compare_prices_done)
    (place_in_basket_pending) (place_in_basket_done)
    (pick_bag_pending) (pick_bag_done)
    (double_check_warning_pending) (double_check_warning_done)
    (drive_store_pending) (drive_store_done)
    (charge_phone_pending) (charge_phone_done)
    (save_coupon_pending) (save_coupon_done)
    (enter_store_pending) (enter_store_done)
    (put_on_shoes_pending) (put_on_shoes_done)
    (navigate_checkout_pending) (navigate_checkout_done)
    (locate_confectionery_pending) (locate_confectionery_done)
    (find_keys_pending) (find_keys_done)
    (print_list_pending) (print_list_done)
    (check_bank_pending) (check_bank_done)
    (consult_blog_pending) (consult_blog_done)
    (ask_service_pending) (ask_service_done)
    (put_on_coat_pending) (put_on_coat_done)
    (drive_pharmacy_pending) (drive_pharmacy_done)
    (pay_register_pending) (pay_register_done)
    (walk_to_car_pending) (walk_to_car_done)
  )

  (:durative-action research_brands
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (research_brands_pending)))
    :effect (and (at start (not (research_brands_pending))) (at end (research_brands_done)))
  )

  (:durative-action download_app
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (download_app_pending)) (at start (charge_phone_done)))
    :effect (and (at start (not (download_app_pending))) (at end (download_app_done)))
  )

  (:durative-action check_discounts
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (check_discounts_pending)))
    :effect (and (at start (not (check_discounts_pending))) (at end (check_discounts_done)))
  )

  (:durative-action compile_ingredients
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (compile_ingredients_pending)) (at start (research_brands_done)))
    :effect (and (at start (not (compile_ingredients_pending))) (at end (compile_ingredients_done)))
  )

  (:durative-action locate_aisle
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (locate_aisle_pending)))
    :effect (and (at start (not (locate_aisle_pending))) (at end (locate_aisle_done)))
  )

  (:durative-action ask_clerk
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (ask_clerk_pending)) (at start (ask_service_done)))
    :effect (and (at start (not (ask_clerk_pending))) (at end (ask_clerk_done)))
  )

  (:durative-action read_label_dark
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (read_label_dark_pending)) (at start (locate_confectionery_done)))
    :effect (and (at start (not (read_label_dark_pending))) (at end (read_label_dark_done)))
  )

  (:durative-action read_label_rice
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (read_label_rice_pending)) (at start (locate_confectionery_done)))
    :effect (and (at start (not (read_label_rice_pending))) (at end (read_label_rice_done)))
  )

  (:durative-action read_label_oat
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (read_label_oat_pending)) (at start (locate_confectionery_done)))
    :effect (and (at start (not (read_label_oat_pending))) (at end (read_label_oat_done)))
  )

  (:durative-action verify_nutfree
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (verify_nutfree_pending)) (at start (locate_aisle_done)) (at start (enter_store_done)))
    :effect (and (at start (not (verify_nutfree_pending))) (at end (verify_nutfree_done)))
  )

  (:durative-action compare_prices
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (compare_prices_pending)) (at start (ask_clerk_done)) (at start (read_label_rice_done)))
    :effect (and (at start (not (compare_prices_pending))) (at end (compare_prices_done)))
  )

  (:durative-action place_in_basket
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (place_in_basket_pending)) (at start (put_on_coat_done)) (at start (drive_pharmacy_done)))
    :effect (and (at start (not (place_in_basket_pending))) (at end (place_in_basket_done)))
  )

  (:durative-action pick_bag
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pick_bag_pending)) (at start (find_keys_done)))
    :effect (and (at start (not (pick_bag_pending))) (at end (pick_bag_done)))
  )

  (:durative-action double_check_warning
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (double_check_warning_pending)) (at start (locate_aisle_done)) (at start (print_list_done)))
    :effect (and (at start (not (double_check_warning_pending))) (at end (double_check_warning_done)))
  )

  (:durative-action drive_store
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (drive_store_pending)) (at start (put_on_shoes_done)))
    :effect (and (at start (not (drive_store_pending))) (at end (drive_store_done)))
  )

  (:durative-action charge_phone
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (charge_phone_pending)))
    :effect (and (at start (not (charge_phone_pending))) (at end (charge_phone_done)))
  )

  (:durative-action save_coupon
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (save_coupon_pending)) (at start (check_discounts_done)))
    :effect (and (at start (not (save_coupon_pending))) (at end (save_coupon_done)))
  )

  (:durative-action enter_store
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (enter_store_pending)) (at start (drive_store_done)))
    :effect (and (at start (not (enter_store_pending))) (at end (enter_store_done)))
  )

  (:durative-action put_on_shoes
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (put_on_shoes_pending)))
    :effect (and (at start (not (put_on_shoes_pending))) (at end (put_on_shoes_done)))
  )

  (:durative-action navigate_checkout
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (navigate_checkout_pending)) (at start (place_in_basket_done)) (at start (drive_store_done)))
    :effect (and (at start (not (navigate_checkout_pending))) (at end (navigate_checkout_done)))
  )

  (:durative-action locate_confectionery
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (locate_confectionery_pending)))
    :effect (and (at start (not (locate_confectionery_pending))) (at end (locate_confectionery_done)))
  )

  (:durative-action find_keys
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (find_keys_pending)))
    :effect (and (at start (not (find_keys_pending))) (at end (find_keys_done)))
  )

  (:durative-action print_list
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (print_list_pending)) (at start (research_brands_done)))
    :effect (and (at start (not (print_list_pending))) (at end (print_list_done)))
  )

  (:durative-action check_bank
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (check_bank_pending)) (at start (download_app_done)) (at start (put_on_shoes_done)))
    :effect (and (at start (not (check_bank_pending))) (at end (check_bank_done)))
  )

  (:durative-action consult_blog
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (consult_blog_pending)) (at start (verify_nutfree_done)))
    :effect (and (at start (not (consult_blog_pending))) (at end (consult_blog_done)))
  )

  (:durative-action ask_service
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (ask_service_pending)) (at start (charge_phone_done)))
    :effect (and (at start (not (ask_service_pending))) (at end (ask_service_done)))
  )

  (:durative-action put_on_coat
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (put_on_coat_pending)))
    :effect (and (at start (not (put_on_coat_pending))) (at end (put_on_coat_done)))
  )

  (:durative-action drive_pharmacy
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (drive_pharmacy_pending)) (at start (put_on_shoes_done)))
    :effect (and (at start (not (drive_pharmacy_pending))) (at end (drive_pharmacy_done)))
  )

  (:durative-action pay_register
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pay_register_pending)) (at start (consult_blog_done)) (at start (download_app_done)))
    :effect (and (at start (not (pay_register_pending))) (at end (pay_register_done)))
  )

  (:durative-action walk_to_car
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (walk_to_car_pending)) (at start (drive_store_done)))
    :effect (and (at start (not (walk_to_car_pending))) (at end (walk_to_car_done)))
  )
)
