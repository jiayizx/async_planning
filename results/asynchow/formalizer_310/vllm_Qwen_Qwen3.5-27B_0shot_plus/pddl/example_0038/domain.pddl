(define (domain thanksgiving_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (ask_friends_pending)
    (ask_friends_done)
    (think_special_pending)
    (think_special_done)
    (search_internet_pending)
    (search_internet_done)
    (drive_store_pending)
    (drive_store_done)
    (buy_supplies_pending)
    (buy_supplies_done)
    (bake_food_pending)
    (bake_food_done)
    (setup_supplies_pending)
    (setup_supplies_done)
  )

  (:durative-action ask_friends
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (ask_friends_pending)))
    :effect (and (at start (not (ask_friends_pending))) (at end (ask_friends_done)))
  )

  (:durative-action think_special
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (think_special_pending)) (at start (ask_friends_done)))
    :effect (and (at start (not (think_special_pending))) (at end (think_special_done)))
  )

  (:durative-action search_internet
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (search_internet_pending)) (at start (ask_friends_done)))
    :effect (and (at start (not (search_internet_pending))) (at end (search_internet_done)))
  )

  (:durative-action drive_store
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (drive_store_pending)) (at start (think_special_done)) (at start (search_internet_done)))
    :effect (and (at start (not (drive_store_pending))) (at end (drive_store_done)))
  )

  (:durative-action buy_supplies
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (buy_supplies_pending)) (at start (drive_store_done)))
    :effect (and (at start (not (buy_supplies_pending))) (at end (buy_supplies_done)))
  )

  (:durative-action bake_food
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (bake_food_pending)) (at start (buy_supplies_done)))
    :effect (and (at start (not (bake_food_pending))) (at end (bake_food_done)))
  )

  (:durative-action setup_supplies
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (setup_supplies_pending)) (at start (bake_food_done)))
    :effect (and (at start (not (setup_supplies_pending))) (at end (setup_supplies_done)))
  )
)
