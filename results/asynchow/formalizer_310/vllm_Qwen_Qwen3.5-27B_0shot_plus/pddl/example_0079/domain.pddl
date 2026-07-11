(define (domain learn_recipe)
  (:requirements :durative-actions)
  
  (:predicates
    (decide_to_learn_pending)
    (decide_to_learn_done)
    (sit_down_pending)
    (sit_down_done)
    (turn_on_computer_pending)
    (turn_on_computer_done)
    (navigate_to_site_pending)
    (navigate_to_site_done)
    (search_recipes_pending)
    (search_recipes_done)
    (decide_on_recipe_pending)
    (decide_on_recipe_done)
    (print_recipe_pending)
    (print_recipe_done)
  )

  (:durative-action decide_to_learn
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (decide_to_learn_pending)))
    :effect (and (at start (not (decide_to_learn_pending)))
                 (at end (decide_to_learn_done)))
  )

  (:durative-action sit_down
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (sit_down_pending))
                    (at start (decide_to_learn_done)))
    :effect (and (at start (not (sit_down_pending)))
                 (at end (sit_down_done)))
  )

  (:durative-action turn_on_computer
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (turn_on_computer_pending))
                    (at start (sit_down_done)))
    :effect (and (at start (not (turn_on_computer_pending)))
                 (at end (turn_on_computer_done)))
  )

  (:durative-action navigate_to_site
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (navigate_to_site_pending))
                    (at start (turn_on_computer_done)))
    :effect (and (at start (not (navigate_to_site_pending)))
                 (at end (navigate_to_site_done)))
  )

  (:durative-action search_recipes
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (search_recipes_pending))
                    (at start (navigate_to_site_done)))
    :effect (and (at start (not (search_recipes_pending)))
                 (at end (search_recipes_done)))
  )

  (:durative-action decide_on_recipe
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (decide_on_recipe_pending))
                    (at start (navigate_to_site_done)))
    :effect (and (at start (not (decide_on_recipe_pending)))
                 (at end (decide_on_recipe_done)))
  )

  (:durative-action print_recipe
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (print_recipe_pending))
                    (at start (search_recipes_done))
                    (at start (decide_on_recipe_done)))
    :effect (and (at start (not (print_recipe_pending)))
                 (at end (print_recipe_done)))
  )
)
