(define (domain snack_planning)
    (:requirements :durative-actions)
    
    (:predicates
        (walk_into_kitchen_pending)
        (walk_into_kitchen_done)
        (open_cupboard_pending)
        (open_cupboard_done)
        (look_through_items_pending)
        (look_through_items_done)
        (decide_what_to_eat_pending)
        (decide_what_to_eat_done)
        (reach_for_food_pending)
        (reach_for_food_done)
    )

    (:durative-action walk_into_kitchen
        :parameters ()
        :duration (= ?duration 60)
        :condition (at start (walk_into_kitchen_pending))
        :effect (and (at start (not (walk_into_kitchen_pending))) (at end (walk_into_kitchen_done)))
    )

    (:durative-action open_cupboard
        :parameters ()
        :duration (= ?duration 10)
        :condition (and (at start (open_cupboard_pending)) (at start (walk_into_kitchen_done)))
        :effect (and (at start (not (open_cupboard_pending))) (at end (open_cupboard_done)))
    )

    (:durative-action look_through_items
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (look_through_items_pending)) (at start (open_cupboard_done)))
        :effect (and (at start (not (look_through_items_pending))) (at end (look_through_items_done)))
    )

    (:durative-action decide_what_to_eat
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (decide_what_to_eat_pending)) (at start (open_cupboard_done)))
        :effect (and (at start (not (decide_what_to_eat_pending))) (at end (decide_what_to_eat_done)))
    )

    (:durative-action reach_for_food
        :parameters ()
        :duration (= ?duration 1)
        :condition (and (at start (reach_for_food_pending)) (at start (look_through_items_done)) (at start (decide_what_to_eat_done)))
        :effect (and (at start (not (reach_for_food_pending))) (at end (reach_for_food_done)))
    )
)
