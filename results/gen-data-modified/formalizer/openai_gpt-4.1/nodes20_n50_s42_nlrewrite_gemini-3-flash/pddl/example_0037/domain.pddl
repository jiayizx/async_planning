(define (domain marathon-prep)
  (:requirements :durative-actions)
  (:predicates
    (purchase_shoes_pending)
    (purchase_shoes_done)
    (research_mealplan_pending)
    (research_mealplan_done)
    (join_club_pending)
    (join_club_done)
    (schedule_exam_pending)
    (schedule_exam_done)
    (practice_run_pending)
    (practice_run_done)
    (register_online_pending)
    (register_online_done)
    (receive_clearance_pending)
    (receive_clearance_done)
    (break_in_shoes_pending)
    (break_in_shoes_done)
    (purchase_hydration_pending)
    (purchase_hydration_done)
    (book_hotel_pending)
    (book_hotel_done)
    (print_map_pending)
    (print_map_done)
    (create_schedule_pending)
    (create_schedule_done)
    (buy_groceries_pending)
    (buy_groceries_done)
    (arrange_travel_pending)
    (arrange_travel_done)
    (pay_entry_pending)
    (pay_entry_done)
    (base_building_pending)
    (base_building_done)
    (stretching_pending)
    (stretching_done)
    (pickup_bib_pending)
    (pickup_bib_done)
    (increase_mileage_pending)
    (increase_mileage_done)
    (execute_training_pending)
    (execute_training_done)
  )

  (:durative-action purchase_shoes
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (purchase_shoes_pending)) (at start (purchase_hydration_done)))
    :effect (and (at start (not (purchase_shoes_pending))) (at end (purchase_shoes_done)))
  )

  (:durative-action research_mealplan
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (research_mealplan_pending)) (at start (join_club_done)))
    :effect (and (at start (not (research_mealplan_pending))) (at end (research_mealplan_done)))
  )

  (:durative-action join_club
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (join_club_pending)) (at start (increase_mileage_done)))
    :effect (and (at start (not (join_club_pending))) (at end (join_club_done)))
  )

  (:durative-action schedule_exam
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (schedule_exam_pending))
    :effect (and (at start (not (schedule_exam_pending))) (at end (schedule_exam_done)))
  )

  (:durative-action practice_run
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (practice_run_pending)) (at start (base_building_done)))
    :effect (and (at start (not (practice_run_pending))) (at end (practice_run_done)))
  )

  (:durative-action register_online
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (register_online_pending))
    :effect (and (at start (not (register_online_pending))) (at end (register_online_done)))
  )

  (:durative-action receive_clearance
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (receive_clearance_pending)) (at start (schedule_exam_done)) (at start (purchase_hydration_done)))
    :effect (and (at start (not (receive_clearance_pending))) (at end (receive_clearance_done)))
  )

  (:durative-action break_in_shoes
    :parameters ()
    :duration (= ?duration 36000)
    :condition (and (at start (break_in_shoes_pending)) (at start (purchase_shoes_done)) (at start (buy_groceries_done)))
    :effect (and (at start (not (break_in_shoes_pending))) (at end (break_in_shoes_done)))
  )

  (:durative-action purchase_hydration
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (purchase_hydration_pending)) (at start (execute_training_done)))
    :effect (and (at start (not (purchase_hydration_pending))) (at end (purchase_hydration_done)))
  )

  (:durative-action book_hotel
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (book_hotel_pending)) (at start (pay_entry_done)))
    :effect (and (at start (not (book_hotel_pending))) (at end (book_hotel_done)))
  )

  (:durative-action print_map
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (print_map_pending)) (at start (create_schedule_done)))
    :effect (and (at start (not (print_map_pending))) (at end (print_map_done)))
  )

  (:durative-action create_schedule
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (create_schedule_pending))
    :effect (and (at start (not (create_schedule_pending))) (at end (create_schedule_done)))
  )

  (:durative-action buy_groceries
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (buy_groceries_pending)) (at start (research_mealplan_done)))
    :effect (and (at start (not (buy_groceries_pending))) (at end (buy_groceries_done)))
  )

  (:durative-action arrange_travel
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (arrange_travel_pending))
    :effect (and (at start (not (arrange_travel_pending))) (at end (arrange_travel_done)))
  )

  (:durative-action pay_entry
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pay_entry_pending)) (at start (register_online_done)))
    :effect (and (at start (not (pay_entry_pending))) (at end (pay_entry_done)))
  )

  (:durative-action base_building
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (base_building_pending)) (at start (receive_clearance_done)))
    :effect (and (at start (not (base_building_pending))) (at end (base_building_done)))
  )

  (:durative-action stretching
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (stretching_pending)) (at start (create_schedule_done)))
    :effect (and (at start (not (stretching_pending))) (at end (stretching_done)))
  )

  (:durative-action pickup_bib
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pickup_bib_pending)) (at start (register_online_done)) (at start (arrange_travel_done)))
    :effect (and (at start (not (pickup_bib_pending))) (at end (pickup_bib_done)))
  )

  (:durative-action increase_mileage
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (increase_mileage_pending)) (at start (practice_run_done)))
    :effect (and (at start (not (increase_mileage_pending))) (at end (increase_mileage_done)))
  )

  (:durative-action execute_training
    :parameters ()
    :duration (= ?duration 10368000)
    :condition (and (at start (execute_training_pending)) (at start (stretching_done)))
    :effect (and (at start (not (execute_training_pending))) (at end (execute_training_done)))
  )
)
