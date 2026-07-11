(define (domain fresh_milk)
  (:requirements :durative-actions)
  
  (:predicates
    (walk_to_cabinet_pending)
    (walk_to_cabinet_done)
    (open_cabinet_pending)
    (open_cabinet_done)
    (place_items_pending)
    (place_items_done)
    (pour_milk_pending)
    (pour_milk_done)
    (walk_to_fridge_pending)
    (walk_to_fridge_done)
    (grab_new_milk_pending)
    (grab_new_milk_done)
    (drink_milk_pending)
    (drink_milk_done)
  )

  (:durative-action walk_to_cabinet
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (walk_to_cabinet_pending))
    :effect (and (at start (not (walk_to_cabinet_pending)))
                 (at end (walk_to_cabinet_done)))
  )

  (:durative-action open_cabinet
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (open_cabinet_pending))
                    (at start (walk_to_cabinet_done)))
    :effect (and (at start (not (open_cabinet_pending)))
                 (at end (open_cabinet_done)))
  )

  (:durative-action place_items
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (place_items_pending))
                    (at start (open_cabinet_done))
                    (at start (grab_new_milk_done)))
    :effect (and (at start (not (place_items_pending)))
                 (at end (place_items_done)))
  )

  (:durative-action pour_milk
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pour_milk_pending))
                    (at start (place_items_done)))
    :effect (and (at start (not (pour_milk_pending)))
                 (at end (pour_milk_done)))
  )

  (:durative-action walk_to_fridge
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (walk_to_fridge_pending))
    :effect (and (at start (not (walk_to_fridge_pending)))
                 (at end (walk_to_fridge_done)))
  )

  (:durative-action grab_new_milk
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (grab_new_milk_pending))
                    (at start (walk_to_fridge_done)))
    :effect (and (at start (not (grab_new_milk_pending)))
                 (at end (grab_new_milk_done)))
  )

  (:durative-action drink_milk
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (drink_milk_pending))
                    (at start (pour_milk_done)))
    :effect (and (at start (not (drink_milk_pending)))
                 (at end (drink_milk_done)))
  )
)