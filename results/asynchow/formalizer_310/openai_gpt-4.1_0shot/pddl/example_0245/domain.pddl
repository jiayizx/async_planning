(define (domain coffee-grounds-garden)
  (:requirements :durative-actions)
  (:predicates
    (add_grounds_compost_pending)
    (add_grounds_compost_done)
    (add_grounds_soil_pending)
    (add_grounds_soil_done)
    (add_lime_pending)
    (add_lime_done)
    (add_nutrients_pending)
    (add_nutrients_done)
    (make_liquid_food_pending)
    (make_liquid_food_done)
  )

  (:durative-action add_grounds_compost
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (add_grounds_compost_pending))
    :effect (and (at start (not (add_grounds_compost_pending)))
                 (at end (add_grounds_compost_done)))
  )

  (:durative-action add_grounds_soil
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (add_grounds_soil_pending))
    :effect (and (at start (not (add_grounds_soil_pending)))
                 (at end (add_grounds_soil_done)))
  )

  (:durative-action add_lime
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (add_lime_pending))
                    (at start (add_grounds_soil_done)))
    :effect (and (at start (not (add_lime_pending)))
                 (at end (add_lime_done)))
  )

  (:durative-action add_nutrients
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (add_nutrients_pending))
    :effect (and (at start (not (add_nutrients_pending)))
                 (at end (add_nutrients_done)))
  )

  (:durative-action make_liquid_food
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (make_liquid_food_pending))
    :effect (and (at start (not (make_liquid_food_pending)))
                 (at end (make_liquid_food_done)))
  )
)
