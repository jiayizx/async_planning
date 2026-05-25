(define (problem learn_recipe_problem)
  (:domain learn_recipe)
  
  (:init
    (decide_to_learn_pending)
    (sit_down_pending)
    (turn_on_computer_pending)
    (navigate_to_site_pending)
    (search_recipes_pending)
    (decide_on_recipe_pending)
    (print_recipe_pending)
  )

  (:goal (and
    (decide_to_learn_done)
    (sit_down_done)
    (turn_on_computer_done)
    (navigate_to_site_done)
    (search_recipes_done)
    (decide_on_recipe_done)
    (print_recipe_done)
  ))
)
