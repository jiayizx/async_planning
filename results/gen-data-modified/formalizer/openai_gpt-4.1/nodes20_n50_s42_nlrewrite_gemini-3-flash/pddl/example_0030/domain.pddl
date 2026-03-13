(define (domain apple_pie_turnovers)
  (:requirements :durative-actions)
  (:predicates
    (saute_apples_pending)
    (saute_apples_done)
    (clean_counters_pending)
    (clean_counters_done)
    (roll_dough_pending)
    (roll_dough_done)
    (flour_surface_pending)
    (flour_surface_done)
    (peel_core_apples_pending)
    (peel_core_apples_done)
    (whisk_egg_pending)
    (whisk_egg_done)
    (preheat_oven_pending)
    (preheat_oven_done)
    (buy_apples_pending)
    (buy_apples_done)
    (dice_apples_pending)
    (dice_apples_done)
    (take_pastry_out_pending)
    (take_pastry_out_done)
    (assemble_turnovers_pending)
    (assemble_turnovers_done)
    (place_on_sheet_pending)
    (place_on_sheet_done)
    (bake_turnovers_pending)
    (bake_turnovers_done)
    (cool_turnovers_pending)
    (cool_turnovers_done)
    (thaw_pastry_pending)
    (thaw_pastry_done)
    (cut_pastry_pending)
    (cut_pastry_done)
    (locate_baking_sheet_pending)
    (locate_baking_sheet_done)
    (gather_cleaning_supplies_pending)
    (gather_cleaning_supplies_done)
    (cool_filling_pending)
    (cool_filling_done)
    (clear_counter_pending)
    (clear_counter_done)
  )

  (:durative-action saute_apples
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (saute_apples_pending)) (at start (peel_core_apples_done)) (at start (dice_apples_done)))
    :effect (and (at start (not (saute_apples_pending))) (at end (saute_apples_done)))
  )

  (:durative-action clean_counters
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (clean_counters_pending)) (at start (gather_cleaning_supplies_done)))
    :effect (and (at start (not (clean_counters_pending))) (at end (clean_counters_done)))
  )

  (:durative-action roll_dough
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (roll_dough_pending)) (at start (cut_pastry_done)))
    :effect (and (at start (not (roll_dough_pending))) (at end (roll_dough_done)))
  )

  (:durative-action flour_surface
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (flour_surface_pending))
    :effect (and (at start (not (flour_surface_pending))) (at end (flour_surface_done)))
  )

  (:durative-action peel_core_apples
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (peel_core_apples_pending)) (at start (buy_apples_done)))
    :effect (and (at start (not (peel_core_apples_pending))) (at end (peel_core_apples_done)))
  )

  (:durative-action whisk_egg
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (whisk_egg_pending))
    :effect (and (at start (not (whisk_egg_pending))) (at end (whisk_egg_done)))
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (preheat_oven_pending))
    :effect (and (at start (not (preheat_oven_pending))) (at end (preheat_oven_done)))
  )

  (:durative-action buy_apples
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (buy_apples_pending)) (at start (clear_counter_done)))
    :effect (and (at start (not (buy_apples_pending))) (at end (buy_apples_done)))
  )

  (:durative-action dice_apples
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (dice_apples_pending)) (at start (peel_core_apples_done)))
    :effect (and (at start (not (dice_apples_pending))) (at end (dice_apples_done)))
  )

  (:durative-action take_pastry_out
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (take_pastry_out_pending))
    :effect (and (at start (not (take_pastry_out_pending))) (at end (take_pastry_out_done)))
  )

  (:durative-action assemble_turnovers
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (assemble_turnovers_pending)) (at start (roll_dough_done)) (at start (flour_surface_done)) (at start (whisk_egg_done)) (at start (thaw_pastry_done)))
    :effect (and (at start (not (assemble_turnovers_pending))) (at end (assemble_turnovers_done)))
  )

  (:durative-action place_on_sheet
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (place_on_sheet_pending)) (at start (cool_filling_done)) (at start (locate_baking_sheet_done)))
    :effect (and (at start (not (place_on_sheet_pending))) (at end (place_on_sheet_done)))
  )

  (:durative-action bake_turnovers
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (bake_turnovers_pending)) (at start (place_on_sheet_done)))
    :effect (and (at start (not (bake_turnovers_pending))) (at end (bake_turnovers_done)))
  )

  (:durative-action cool_turnovers
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (cool_turnovers_pending)) (at start (bake_turnovers_done)))
    :effect (and (at start (not (cool_turnovers_pending))) (at end (cool_turnovers_done)))
  )

  (:durative-action thaw_pastry
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (thaw_pastry_pending)) (at start (take_pastry_out_done)))
    :effect (and (at start (not (thaw_pastry_pending))) (at end (thaw_pastry_done)))
  )

  (:durative-action cut_pastry
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (cut_pastry_pending)) (at start (flour_surface_done)))
    :effect (and (at start (not (cut_pastry_pending))) (at end (cut_pastry_done)))
  )

  (:durative-action locate_baking_sheet
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (locate_baking_sheet_pending))
    :effect (and (at start (not (locate_baking_sheet_pending))) (at end (locate_baking_sheet_done)))
  )

  (:durative-action gather_cleaning_supplies
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (gather_cleaning_supplies_pending))
    :effect (and (at start (not (gather_cleaning_supplies_pending))) (at end (gather_cleaning_supplies_done)))
  )

  (:durative-action cool_filling
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (cool_filling_pending)) (at start (saute_apples_done)) (at start (preheat_oven_done)))
    :effect (and (at start (not (cool_filling_pending))) (at end (cool_filling_done)))
  )

  (:durative-action clear_counter
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (clear_counter_pending)) (at start (locate_baking_sheet_done)))
    :effect (and (at start (not (clear_counter_pending))) (at end (clear_counter_done)))
  )
)
