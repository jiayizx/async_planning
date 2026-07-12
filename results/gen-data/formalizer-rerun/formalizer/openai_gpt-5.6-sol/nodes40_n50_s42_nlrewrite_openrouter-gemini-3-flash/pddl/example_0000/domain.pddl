(define (domain outdoors)
  (:requirements :typing :durative-actions)
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
    (map_purchased) (jacket_packed) (summit_photographed) (parks_researched)
    (trail_selected) (weather_checked) (tent_setup) (sunscreen_applied)
    (power_bank_charged) (cash_withdrawn) (stove_packed) (bladder_filled)
    (food_bought) (boots_cleaned) (route_highlighted) (ignition_tested)
    (campsite_reserved) (first_aid_organized) (poles_inspected) (bladder_packed)
    (park_pass_renewed) (weekend_decided) (gps_downloaded) (weight_verified)
    (compass_calibrated) (contacts_laminated) (tires_checked) (medical_supplies_bought)
    (fuel_bought) (boots_waterproofed) (sunglasses_packed) (backpack_bought)
    (cookware_packed) (phone_updated) (baskets_tightened) (poles_bought)
    (outdoors_enjoyed) (reviews_read) (friends_invited) (trailhead_reached))

  (:durative-action purchase_map
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (park_pass_renewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (map_purchased))))
  (:durative-action pack_jacket
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (weather_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jacket_packed))))
  (:durative-action photograph_summit
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (trail_selected)) (at start (backpack_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (summit_photographed))))
  (:durative-action research_parks
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (weekend_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parks_researched))))
  (:durative-action select_trail
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (parks_researched)) (at start (campsite_reserved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trail_selected))))
  (:durative-action check_weather
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (weekend_decided)) (at start (gps_downloaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weather_checked))))
  (:durative-action setup_tent
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (cash_withdrawn)) (at start (stove_packed)) (at start (tires_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tent_setup))))
  (:durative-action apply_sunscreen
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (weather_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunscreen_applied))))
  (:durative-action charge_power_bank
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (power_bank_charged))))
  (:durative-action withdraw_cash
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cash_withdrawn))))
  (:durative-action pack_stove
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (trail_selected)) (at start (gps_downloaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stove_packed))))
  (:durative-action fill_bladder
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (jacket_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bladder_filled))))
  (:durative-action buy_food
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (boots_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (food_bought))))
  (:durative-action clean_boots
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (backpack_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_cleaned))))
  (:durative-action highlight_route
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (map_purchased)) (at start (boots_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (route_highlighted))))
  (:durative-action test_ignition
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (stove_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ignition_tested))))
  (:durative-action reserve_campsite
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (cash_withdrawn)) (at start (food_bought)) (at start (first_aid_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (campsite_reserved))))
  (:durative-action organize_first_aid
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (map_purchased)) (at start (medical_supplies_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (first_aid_organized))))
  (:durative-action inspect_poles
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (poles_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (poles_inspected))))
  (:durative-action pack_bladder
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (bladder_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bladder_packed))))
  (:durative-action renew_park_pass
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (cash_withdrawn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (park_pass_renewed))))
  (:durative-action decide_weekend
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weekend_decided))))
  (:durative-action download_gps
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (phone_updated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gps_downloaded))))
  (:durative-action verify_weight
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (bladder_filled)) (at start (food_bought)) (at start (first_aid_organized)) (at start (poles_inspected)) (at start (phone_updated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weight_verified))))
  (:durative-action calibrate_compass
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (power_bank_charged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (compass_calibrated))))
  (:durative-action laminate_contacts
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (map_purchased)) (at start (medical_supplies_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contacts_laminated))))
  (:durative-action check_tires
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (weekend_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tires_checked))))
  (:durative-action buy_medical_supplies
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (medical_supplies_bought))))
  (:durative-action buy_fuel
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (ignition_tested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fuel_bought))))
  (:durative-action waterproof_boots
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (boots_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_waterproofed))))
  (:durative-action pack_sunglasses
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)) (at start (weather_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunglasses_packed))))
  (:durative-action buy_backpack
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (backpack_bought))))
  (:durative-action pack_cookware
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)) (at start (stove_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cookware_packed))))
  (:durative-action update_phone
    :parameters (?s - step) :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_updated))))
  (:durative-action tighten_baskets
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)) (at start (poles_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (baskets_tightened))))
  (:durative-action buy_poles
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (poles_bought))))
  (:durative-action begin_hike
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)) (at start (stove_packed)) (at start (weight_verified)) (at start (backpack_bought)) (at start (trailhead_reached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outdoors_enjoyed))))
  (:durative-action read_reviews
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)) (at start (parks_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (reviews_read))))
  (:durative-action invite_friends
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)) (at start (weekend_decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friends_invited))))
  (:durative-action drive_to_trailhead
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trailhead_reached))))
)