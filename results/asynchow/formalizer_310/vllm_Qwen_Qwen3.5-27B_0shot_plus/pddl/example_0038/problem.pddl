(define (problem thanksgiving_task)
  (:domain thanksgiving_planning)
  
  (:init
    (ask_friends_pending)
    (think_special_pending)
    (search_internet_pending)
    (drive_store_pending)
    (buy_supplies_pending)
    (bake_food_pending)
    (setup_supplies_pending)
  )

  (:goal (and
    (ask_friends_done)
    (think_special_done)
    (search_internet_done)
    (drive_store_done)
    (buy_supplies_done)
    (bake_food_done)
    (setup_supplies_done)
  ))
)
