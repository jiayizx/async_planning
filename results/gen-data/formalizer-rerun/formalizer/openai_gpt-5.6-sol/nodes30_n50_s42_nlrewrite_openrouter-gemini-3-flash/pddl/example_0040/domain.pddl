(define (domain wake-for-school)
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
    (out_of_shower) (socks_on) (weather_checked) (notebook_packed)
    (coffee_ground) (deodorant_applied) (shower_lathered) (hair_styled)
    (alarm_off) (bag_zipped) (left_shoe_on) (shoelaces_tied)
    (coffee_water_poured) (backpack_by_door) (shoes_located)
    (umbrella_decided) (body_dried) (underwear_on) (eyes_opened)
    (school_id_grabbed) (sitting_on_bed) (trousers_on) (shirt_on)
    (feet_in_shoes) (pens_checked) (belt_fastened) (right_shoe_on)
    (phone_and_id_picked_up) (soap_rinsed) (water_adjusted)
  )

  (:durative-action step_out_of_shower
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (shower_lathered)) (at start (water_adjusted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (out_of_shower))))

  (:durative-action put_on_socks
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (sitting_on_bed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (socks_on))))

  (:durative-action check_weather
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (alarm_off)) (at start (eyes_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weather_checked))))

  (:durative-action pack_notebook
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (notebook_packed))))

  (:durative-action grind_coffee
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coffee_ground))))

  (:durative-action apply_deodorant
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (deodorant_applied))))

  (:durative-action shower_and_lather
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (coffee_water_poured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shower_lathered))))

  (:durative-action style_hair
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hair_styled))))

  (:durative-action turn_off_alarm
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (alarm_off))))

  (:durative-action zip_bag
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (eyes_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bag_zipped))))

  (:durative-action put_on_left_shoe
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (shoes_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (left_shoe_on))))

  (:durative-action tie_shoelaces
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (feet_in_shoes)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoelaces_tied))))

  (:durative-action pour_coffee_water
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (coffee_ground)) (at start (alarm_off)) (at start (sitting_on_bed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coffee_water_poured))))

  (:durative-action place_backpack_by_door
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (notebook_packed)) (at start (bag_zipped)) (at start (pens_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (backpack_by_door))))

  (:durative-action locate_shoes
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (alarm_off)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_located))))

  (:durative-action decide_umbrella
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (weather_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (umbrella_decided))))

  (:durative-action dry_with_towel
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (coffee_water_poured)) (at start (soap_rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (body_dried))))

  (:durative-action put_on_underwear
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (body_dried)) (at start (soap_rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (underwear_on))))

  (:durative-action open_eyes_and_stretch
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eyes_opened))))

  (:durative-action grab_school_id
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (school_id_grabbed))))

  (:durative-action sit_on_bed
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sitting_on_bed))))

  (:durative-action put_on_trousers
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (socks_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (trousers_on))))

  (:durative-action put_on_shirt
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (deodorant_applied)) (at start (underwear_on)) (at start (trousers_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shirt_on))))

  (:durative-action slide_feet_into_shoes
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (phone_and_id_picked_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (feet_in_shoes))))

  (:durative-action check_pens
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pens_checked))))

  (:durative-action fasten_belt
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (trousers_on)) (at start (pens_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (belt_fastened))))

  (:durative-action put_on_right_shoe
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (hair_styled)) (at start (left_shoe_on)) (at start (trousers_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (right_shoe_on))))

  (:durative-action pick_up_phone_and_id
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (eyes_opened)) (at start (school_id_grabbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_and_id_picked_up))))

  (:durative-action rinse_soap
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (out_of_shower)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soap_rinsed))))

  (:durative-action adjust_shower_temperature
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (weather_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_adjusted))))
)