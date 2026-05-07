(define (domain sleepover_party)
  (:requirements :durative-actions)
  
  (:predicates
    (find_time_pending)
    (find_time_done)
    (ask_friends_pending)
    (ask_friends_done)
    (make_list_pending)
    (make_list_done)
    (drive_store_pending)
    (drive_store_done)
    (buy_supplies_pending)
    (buy_supplies_done)
    (make_food_pending)
    (make_food_done)
    (get_supplies_pending)
    (get_supplies_done)
  )

  (:durative-action find_time
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (find_time_pending)))
    :effect (and (at start (not (find_time_pending))) (at end (find_time_done)))
  )

  (:durative-action ask_friends
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (ask_friends_pending)) (at start (find_time_done)))
    :effect (and (at start (not (ask_friends_pending))) (at end (ask_friends_done)))
  )

  (:durative-action make_list
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (make_list_pending)) (at start (ask_friends_done)))
    :effect (and (at start (not (make_list_pending))) (at end (make_list_done)))
  )

  (:durative-action drive_store
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (drive_store_pending)) (at start (make_list_done)))
    :effect (and (at start (not (drive_store_pending))) (at end (drive_store_done)))
  )

  (:durative-action buy_supplies
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (buy_supplies_pending)) (at start (drive_store_done)))
    :effect (and (at start (not (buy_supplies_pending))) (at end (buy_supplies_done)))
  )

  (:durative-action make_food
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (make_food_pending)) (at start (buy_supplies_done)))
    :effect (and (at start (not (make_food_pending))) (at end (make_food_done)))
  )

  (:durative-action get_supplies
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (get_supplies_pending)) (at start (buy_supplies_done)))
    :effect (and (at start (not (get_supplies_pending))) (at end (get_supplies_done)))
  )
)