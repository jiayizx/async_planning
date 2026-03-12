(define (domain fresh-milk)
  (:requirements :durative-actions)
  (:predicates
    (walk_kitchen_pending)
    (walk_kitchen_done)
    (open_cabinet_pending)
    (open_cabinet_done)
    (place_glass_milk_pending)
    (place_glass_milk_done)
    (open_pour_milk_pending)
    (open_pour_milk_done)
    (walk_fridge_pending)
    (walk_fridge_done)
    (open_fridge_pending)
    (open_fridge_done)
    (drink_fresh_milk_pending)
    (drink_fresh_milk_done)
  )

  (:durative-action walk_kitchen
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (walk_kitchen_pending))
    :effect (and (at start (not (walk_kitchen_pending))) (at end (walk_kitchen_done)))
  )

  (:durative-action open_cabinet
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (open_cabinet_pending)) (at start (walk_kitchen_done)))
    :effect (and (at start (not (open_cabinet_pending))) (at end (open_cabinet_done)))
  )

  (:durative-action place_glass_milk
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (place_glass_milk_pending)) (at start (open_cabinet_done)) (at start (open_fridge_done)))
    :effect (and (at start (not (place_glass_milk_pending))) (at end (place_glass_milk_done)))
  )

  (:durative-action open_pour_milk
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (open_pour_milk_pending)) (at start (place_glass_milk_done)))
    :effect (and (at start (not (open_pour_milk_pending))) (at end (open_pour_milk_done)))
  )

  (:durative-action walk_fridge
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (walk_fridge_pending))
    :effect (and (at start (not (walk_fridge_pending))) (at end (walk_fridge_done)))
  )

  (:durative-action open_fridge
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (open_fridge_pending)) (at start (walk_fridge_done)))
    :effect (and (at start (not (open_fridge_pending))) (at end (open_fridge_done)))
  )

  (:durative-action drink_fresh_milk
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (drink_fresh_milk_pending)) (at start (open_pour_milk_done)))
    :effect (and (at start (not (drink_fresh_milk_pending))) (at end (drink_fresh_milk_done)))
  )
)
