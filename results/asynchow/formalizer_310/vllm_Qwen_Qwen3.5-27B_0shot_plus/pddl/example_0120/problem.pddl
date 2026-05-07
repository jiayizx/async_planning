(define (problem get_snack)
    (:domain snack_planning)
    
    (:init
        (walk_into_kitchen_pending)
        (open_cupboard_pending)
        (look_through_items_pending)
        (decide_what_to_eat_pending)
        (reach_for_food_pending)
    )

    (:goal (and
        (walk_into_kitchen_done)
        (open_cupboard_done)
        (look_through_items_done)
        (decide_what_to_eat_done)
        (reach_for_food_done)
    ))
)
