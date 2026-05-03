(define (domain coffee_grounds_garden)
  (:requirements :durative-actions)
  
  (:predicates
    (add_compost_pending)
    (add_compost_done)
    (add_soil_pending)
    (add_soil_done)
    (add_lime_pending)
    (add_lime_done)
    (add_nutrients_pending)
    (add_nutrients_done)
    (make_liquid_food_pending)
    (make_liquid_food_done)
  )

  (:durative-action do_add_compost
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (add_compost_pending))
    :effect (and (at start (not (add_compost_pending))) (at end (add_compost_done)))
  )

  (:durative-action do_add_soil
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (add_soil_pending))
    :effect (and (at start (not (add_soil_pending))) (at end (add_soil_done)))
  )

  (:durative-action do_add_lime
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (add_lime_pending)) (at start (add_soil_done)))
    :effect (and (at start (not (add_lime_pending))) (at end (add_lime_done)))
  )

  (:durative-action do_add_nutrients
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (add_nutrients_pending))
    :effect (and (at start (not (add_nutrients_pending))) (at end (add_nutrients_done)))
  )

  (:durative-action do_make_liquid_food
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (make_liquid_food_pending))
    :effect (and (at start (not (make_liquid_food_pending))) (at end (make_liquid_food_done)))
  )
)
