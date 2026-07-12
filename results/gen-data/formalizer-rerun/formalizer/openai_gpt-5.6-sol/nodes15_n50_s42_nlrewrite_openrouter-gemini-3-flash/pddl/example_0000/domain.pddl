(define (domain buy-postage-stamps)
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
    (inventory_checked)
    (post_office_entered)
    (stamp_design_selected)
    (car_keys_found)
    (post_office_researched)
    (wallet_and_id_grabbed)
    (post_office_reached)
    (teller_available)
    (post_office_area_reached)
    (stamp_coils_requested)
    (shopping_list_created)
    (atm_located)
    (car_parked)
    (hours_checked)
    (stamps_paid_for)
  )

  (:durative-action check_stamp_inventory
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inventory_checked)))
  )

  (:durative-action walk_into_post_office
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (shopping_list_created)) (at start (hours_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (post_office_entered)))
  )

  (:durative-action select_stamp_design
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (post_office_area_reached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stamp_design_selected)))
  )

  (:durative-action find_car_keys
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (car_keys_found)))
  )

  (:durative-action research_post_office
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (post_office_researched)))
  )

  (:durative-action grab_wallet_and_id
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wallet_and_id_grabbed)))
  )

  (:durative-action drive_to_post_office
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (post_office_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (post_office_reached)))
  )

  (:durative-action wait_for_teller
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (stamp_design_selected)) (at start (post_office_reached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (teller_available)))
  )

  (:durative-action drive_to_post_office_area
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (car_keys_found)) (at start (wallet_and_id_grabbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (post_office_area_reached)))
  )

  (:durative-action request_stamp_coils
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (post_office_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stamp_coils_requested)))
  )

  (:durative-action create_shopping_list
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (inventory_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shopping_list_created)))
  )

  (:durative-action locate_atm
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (post_office_area_reached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (atm_located)))
  )

  (:durative-action park_car
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (post_office_reached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (car_parked)))
  )

  (:durative-action check_post_office_hours
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (car_parked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hours_checked)))
  )

  (:durative-action pay_teller
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (post_office_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stamps_paid_for)))
  )
)