(define (domain snack_plan)
  (:requirements :durative-actions)
  (:predicates
    (walk_kitchen_pending)
    (walk_kitchen_done)
    (open_cupboard_pending)
    (open_cupboard_done)
    (look_cupboard_pending)
    (look_cupboard_done)
    (decide_food_pending)
    (decide_food_done)
    (reach_food_pending)
    (reach_food_done)
  )

  (:durative-action walk_kitchen
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (walk_kitchen_pending))
    :effect (and (at start (not (walk_kitchen_pending))) (at end (walk_kitchen_done)))
  )

  (:durative-action open_cupboard
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (open_cupboard_pending)) (at start (walk_kitchen_done)))
    :effect (and (at start (not (open_cupboard_pending))) (at end (open_cupboard_done)))
  )

  (:durative-action look_cupboard
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (look_cupboard_pending)) (at start (open_cupboard_done)))
    :effect (and (at start (not (look_cupboard_pending))) (at end (look_cupboard_done)))
  )

  (:durative-action decide_food
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (decide_food_pending)) (at start (open_cupboard_done)))
    :effect (and (at start (not (decide_food_pending))) (at end (decide_food_done)))
  )

  (:durative-action reach_food
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (reach_food_pending)) (at start (look_cupboard_done)) (at start (decide_food_done)))
    :effect (and (at start (not (reach_food_pending))) (at end (reach_food_done)))
  )
)
