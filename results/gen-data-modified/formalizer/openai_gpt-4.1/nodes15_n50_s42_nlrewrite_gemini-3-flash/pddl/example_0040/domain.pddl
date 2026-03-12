(define (domain house_coloring)
  (:requirements :durative-actions)
  (:predicates
    (browse_galleries_pending)
    (browse_galleries_done)
    (purchase_supplies_pending)
    (purchase_supplies_done)
    (apply_accent_paint_pending)
    (apply_accent_paint_done)
    (apply_primer_pending)
    (apply_primer_done)
    (sand_drywall_pending)
    (sand_drywall_done)
    (move_furniture_pending)
    (move_furniture_done)
    (wipe_walls_pending)
    (wipe_walls_done)
    (research_brands_pending)
    (research_brands_done)
    (buy_paint_pending)
    (buy_paint_done)
    (pickup_brushes_pending)
    (pickup_brushes_done)
    (tape_edges_pending)
    (tape_edges_done)
    (create_moodboard_pending)
    (create_moodboard_done)
    (measure_walls_pending)
    (measure_walls_done)
    (paint_first_layer_pending)
    (paint_first_layer_done)
    (clean_brushes_pending)
    (clean_brushes_done)
  )

  (:durative-action browse_galleries
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (browse_galleries_pending)) (at start (create_moodboard_done)))
    :effect (and (at start (not (browse_galleries_pending))) (at end (browse_galleries_done)))
  )

  (:durative-action purchase_supplies
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (purchase_supplies_pending)) (at start (measure_walls_done)))
    :effect (and (at start (not (purchase_supplies_pending))) (at end (purchase_supplies_done)))
  )

  (:durative-action apply_accent_paint
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (apply_accent_paint_pending)) (at start (clean_brushes_done)))
    :effect (and (at start (not (apply_accent_paint_pending))) (at end (apply_accent_paint_done)))
  )

  (:durative-action apply_primer
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (apply_primer_pending)) (at start (browse_galleries_done)) (at start (move_furniture_done)) (at start (pickup_brushes_done)))
    :effect (and (at start (not (apply_primer_pending))) (at end (apply_primer_done)))
  )

  (:durative-action sand_drywall
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (sand_drywall_pending)) (at start (buy_paint_done)))
    :effect (and (at start (not (sand_drywall_pending))) (at end (sand_drywall_done)))
  )

  (:durative-action move_furniture
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (move_furniture_pending))
    :effect (and (at start (not (move_furniture_pending))) (at end (move_furniture_done)))
  )

  (:durative-action wipe_walls
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (wipe_walls_pending)) (at start (sand_drywall_done)))
    :effect (and (at start (not (wipe_walls_pending))) (at end (wipe_walls_done)))
  )

  (:durative-action research_brands
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (research_brands_pending))
    :effect (and (at start (not (research_brands_pending))) (at end (research_brands_done)))
  )

  (:durative-action buy_paint
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (buy_paint_pending)) (at start (browse_galleries_done)))
    :effect (and (at start (not (buy_paint_pending))) (at end (buy_paint_done)))
  )

  (:durative-action pickup_brushes
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pickup_brushes_pending)) (at start (research_brands_done)))
    :effect (and (at start (not (pickup_brushes_pending))) (at end (pickup_brushes_done)))
  )

  (:durative-action tape_edges
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (tape_edges_pending)) (at start (wipe_walls_done)))
    :effect (and (at start (not (tape_edges_pending))) (at end (tape_edges_done)))
  )

  (:durative-action create_moodboard
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (create_moodboard_pending)) (at start (measure_walls_done)))
    :effect (and (at start (not (create_moodboard_pending))) (at end (create_moodboard_done)))
  )

  (:durative-action measure_walls
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (measure_walls_pending))
    :effect (and (at start (not (measure_walls_pending))) (at end (measure_walls_done)))
  )

  (:durative-action paint_first_layer
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (paint_first_layer_pending)) (at start (apply_primer_done)) (at start (move_furniture_done)))
    :effect (and (at start (not (paint_first_layer_pending))) (at end (paint_first_layer_done)))
  )

  (:durative-action clean_brushes
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (clean_brushes_pending)) (at start (move_furniture_done)))
    :effect (and (at start (not (clean_brushes_pending))) (at end (clean_brushes_done)))
  )
)
