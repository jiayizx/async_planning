(define (problem wedding_planning_problem)
  (:domain wedding_planning)
  
  (:init
    (plan_flowers_pending)
    (choose_food_pending)
    (decide_wear_pending)
    (get_opinion_pending)
  )

  (:goal (and
    (plan_flowers_done)
    (choose_food_done)
    (decide_wear_done)
    (get_opinion_done)
  ))
)