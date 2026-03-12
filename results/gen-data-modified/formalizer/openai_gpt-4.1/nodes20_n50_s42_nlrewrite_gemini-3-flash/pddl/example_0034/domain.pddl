(define (domain garden_planting)
  (:requirements :durative-actions)
  (:predicates
    (purchase_mulch_pending)
    (purchase_mulch_done)
    (test_soil_pending)
    (test_soil_done)
    (apply_fertilizer_pending)
    (apply_fertilizer_done)
    (dig_holes_pending)
    (dig_holes_done)
    (mix_compost_pending)
    (mix_compost_done)
    (map_layout_pending)
    (map_layout_done)
    (research_plants_pending)
    (research_plants_done)
    (install_border_pending)
    (install_border_done)
    (stake_vegetables_pending)
    (stake_vegetables_done)
    (purchase_seeds_pending)
    (purchase_seeds_done)
    (thin_seedlings_pending)
    (thin_seedlings_done)
    (sow_seeds_pending)
    (sow_seeds_done)
    (transplant_nursery_pending)
    (transplant_nursery_done)
    (clear_rocks_pending)
    (clear_rocks_done)
    (harden_seedlings_pending)
    (harden_seedlings_done)
    (purchase_plants_pending)
    (purchase_plants_done)
    (transplant_seedlings_pending)
    (transplant_seedlings_done)
    (spread_mulch_pending)
    (spread_mulch_done)
    (till_soil_pending)
    (till_soil_done)
    (order_tools_pending)
    (order_tools_done)
  )

  (:durative-action purchase_mulch
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (purchase_mulch_pending)) (at start (till_soil_done)))
    :effect (and (at start (not (purchase_mulch_pending))) (at end (purchase_mulch_done)))
  )

  (:durative-action test_soil
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (test_soil_pending))
    :effect (and (at start (not (test_soil_pending))) (at end (test_soil_done)))
  )

  (:durative-action apply_fertilizer
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (apply_fertilizer_pending)) (at start (mix_compost_done)))
    :effect (and (at start (not (apply_fertilizer_pending))) (at end (apply_fertilizer_done)))
  )

  (:durative-action dig_holes
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (dig_holes_pending)) (at start (clear_rocks_done)))
    :effect (and (at start (not (dig_holes_pending))) (at end (dig_holes_done)))
  )

  (:durative-action mix_compost
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (mix_compost_pending))
    :effect (and (at start (not (mix_compost_pending))) (at end (mix_compost_done)))
  )

  (:durative-action map_layout
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (map_layout_pending))
    :effect (and (at start (not (map_layout_pending))) (at end (map_layout_done)))
  )

  (:durative-action research_plants
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (research_plants_pending)) (at start (test_soil_done)))
    :effect (and (at start (not (research_plants_pending))) (at end (research_plants_done)))
  )

  (:durative-action install_border
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (install_border_pending)) (at start (till_soil_done)))
    :effect (and (at start (not (install_border_pending))) (at end (install_border_done)))
  )

  (:durative-action stake_vegetables
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (stake_vegetables_pending)) (at start (purchase_seeds_done)))
    :effect (and (at start (not (stake_vegetables_pending))) (at end (stake_vegetables_done)))
  )

  (:durative-action purchase_seeds
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (purchase_seeds_pending)) (at start (order_tools_done)))
    :effect (and (at start (not (purchase_seeds_pending))) (at end (purchase_seeds_done)))
  )

  (:durative-action thin_seedlings
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (thin_seedlings_pending)) (at start (sow_seeds_done)))
    :effect (and (at start (not (thin_seedlings_pending))) (at end (thin_seedlings_done)))
  )

  (:durative-action sow_seeds
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (sow_seeds_pending))
    :effect (and (at start (not (sow_seeds_pending))) (at end (sow_seeds_done)))
  )

  (:durative-action transplant_nursery
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (transplant_nursery_pending)) (at start (purchase_plants_done)))
    :effect (and (at start (not (transplant_nursery_pending))) (at end (transplant_nursery_done)))
  )

  (:durative-action clear_rocks
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (clear_rocks_pending)) (at start (test_soil_done)))
    :effect (and (at start (not (clear_rocks_pending))) (at end (clear_rocks_done)))
  )

  (:durative-action harden_seedlings
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (harden_seedlings_pending)) (at start (thin_seedlings_done)))
    :effect (and (at start (not (harden_seedlings_pending))) (at end (harden_seedlings_done)))
  )

  (:durative-action purchase_plants
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (purchase_plants_pending)) (at start (research_plants_done)) (at start (order_tools_done)))
    :effect (and (at start (not (purchase_plants_pending))) (at end (purchase_plants_done)))
  )

  (:durative-action transplant_seedlings
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (transplant_seedlings_pending)) (at start (harden_seedlings_done)))
    :effect (and (at start (not (transplant_seedlings_pending))) (at end (transplant_seedlings_done)))
  )

  (:durative-action spread_mulch
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (spread_mulch_pending)) (at start (purchase_mulch_done)) (at start (till_soil_done)))
    :effect (and (at start (not (spread_mulch_pending))) (at end (spread_mulch_done)))
  )

  (:durative-action till_soil
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (till_soil_pending)) (at start (dig_holes_done)) (at start (map_layout_done)))
    :effect (and (at start (not (till_soil_pending))) (at end (till_soil_done)))
  )

  (:durative-action order_tools
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (order_tools_pending))
    :effect (and (at start (not (order_tools_pending))) (at end (order_tools_done)))
  )
)
