(define (domain postage_stamps)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (inventory_checked)
    (walked_in)
    (design_selected)
    (keys_found)
    (location_researched)
    (wallet_grabbed)
    (driven_to_location)
    (waited_in_queue)
    (driven_to_area)
    (stamps_requested)
    (list_created)
    (atm_located)
    (car_parked)
    (hours_checked)
    (paid_teller)
  )

  (:durative-action step1_check_inventory
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inventory_checked)))
  )

  (:durative-action step2_walk_in
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (inventory_checked)) (at start (keys_found)) (at start (wallet_grabbed)) (at start (driven_to_area)) (at start (list_created)) (at start (car_parked)) (at start (hours_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (walked_in)))
  )

  (:durative-action step3_select_design
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (keys_found)) (at start (wallet_grabbed)) (at start (driven_to_area)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (design_selected)))
  )

  (:durative-action step4_find_keys
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (keys_found)))
  )

  (:durative-action step5_research_location
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (location_researched)))
  )

  (:durative-action step6_grab_wallet
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wallet_grabbed)))
  )

  (:durative-action step7_drive_to_location
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (location_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (driven_to_location)))
  )

  (:durative-action step8_wait_in_queue
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (design_selected)) (at start (keys_found)) (at start (location_researched)) (at start (wallet_grabbed)) (at start (driven_to_location)) (at start (driven_to_area)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waited_in_queue)))
  )

  (:durative-action step9_drive_to_area
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (keys_found)) (at start (wallet_grabbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (driven_to_area)))
  )

  (:durative-action step10_request_stamps
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (inventory_checked)) (at start (keys_found)) (at start (wallet_grabbed)) (at start (driven_to_area)) (at start (list_created)) (at start (car_parked)) (at start (hours_checked)) (at start (walked_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stamps_requested)))
  )

  (:durative-action step11_create_list
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (inventory_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (list_created)))
  )

  (:durative-action step12_locate_atm
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (keys_found)) (at start (wallet_grabbed)) (at start (driven_to_area)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (atm_located)))
  )

  (:durative-action step13_park_car
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (location_researched)) (at start (driven_to_location)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (car_parked)))
  )

  (:durative-action step14_check_hours
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (location_researched)) (at start (driven_to_location)) (at start (car_parked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hours_checked)))
  )

  (:durative-action step15_pay_teller
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (inventory_checked)) (at start (keys_found)) (at start (wallet_grabbed)) (at start (driven_to_area)) (at start (list_created)) (at start (car_parked)) (at start (hours_checked)) (at start (walked_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paid_teller)))
  )
)