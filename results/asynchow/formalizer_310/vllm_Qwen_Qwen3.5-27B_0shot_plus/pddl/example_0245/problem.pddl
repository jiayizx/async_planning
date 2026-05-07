(define (problem coffee_grounds_garden_task)
  (:domain coffee_grounds_garden)
  
  (:init
    (add_compost_pending)
    (add_soil_pending)
    (add_lime_pending)
    (add_nutrients_pending)
    (make_liquid_food_pending)
  )

  (:goal (and
    (add_compost_done)
    (add_soil_done)
    (add_lime_done)
    (add_nutrients_done)
    (make_liquid_food_done)
  ))
)
