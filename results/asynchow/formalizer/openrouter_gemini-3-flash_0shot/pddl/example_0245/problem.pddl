(define (problem coffee_garden_problem)
  (:domain coffee_grounds_garden)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (step_done step4)
      (step_done step5)
      (compost_added)
      (soil_acidified)
      (ph_balanced)
      (nutrients_added)
      (liquid_food_made)
    )
  )
)