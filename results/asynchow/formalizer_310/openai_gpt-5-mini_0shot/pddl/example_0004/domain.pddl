(define (domain flower-planting)
  (:requirements :durative-actions)
  (:predicates
    (get_seeds_pending)
    (get_seeds_done)
    (get_equipment_pending)
    (get_equipment_done)
    (dig_holes_pending)
    (dig_holes_done)
    (place_pots_pending)
    (place_pots_done)
    (add_seeds_dirt_pending)
    (add_seeds_dirt_done)
    (water_plants_pending)
    (water_plants_done)
  )

  (:durative-action get_seeds
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (get_seeds_pending))
    :effect (and (at start (not (get_seeds_pending))) (at end (get_seeds_done)))
  )

  (:durative-action get_equipment
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (get_equipment_pending))
    :effect (and (at start (not (get_equipment_pending))) (at end (get_equipment_done)))
  )

  (:durative-action dig_holes
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (dig_holes_pending)) (at start (get_seeds_done)) (at start (get_equipment_done)))
    :effect (and (at start (not (dig_holes_pending))) (at end (dig_holes_done)))
  )

  (:durative-action place_pots
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (place_pots_pending)) (at start (dig_holes_done)))
    :effect (and (at start (not (place_pots_pending))) (at end (place_pots_done)))
  )

  (:durative-action add_seeds_dirt
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (add_seeds_dirt_pending)) (at start (place_pots_done)))
    :effect (and (at start (not (add_seeds_dirt_pending))) (at end (add_seeds_dirt_done)))
  )

  (:durative-action water_plants
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (water_plants_pending)) (at start (add_seeds_dirt_done)))
    :effect (and (at start (not (water_plants_pending))) (at end (water_plants_done)))
  )
)
