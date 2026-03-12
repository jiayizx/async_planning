(define (domain roast-turnips)
  (:requirements :durative-actions)
  (:predicates
    (season_turnips_pending)
    (season_turnips_done)
    (preheat_oven_pending)
    (preheat_oven_done)
    (roast_turnips_pending)
    (roast_turnips_done)
    (peel_turnips_pending)
    (peel_turnips_done)
    (wash_turnips_pending)
    (wash_turnips_done)
    (place_baking_sheet_pending)
    (place_baking_sheet_done)
    (arrange_turnips_pending)
    (arrange_turnips_done)
    (purchase_turnips_pending)
    (purchase_turnips_done)
    (take_baking_sheet_pending)
    (take_baking_sheet_done)
    (dice_turnips_pending)
    (dice_turnips_done)
  )

  (:durative-action season_turnips
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (season_turnips_pending)) (at start (purchase_turnips_done)))
    :effect (and (at start (not (season_turnips_pending))) (at end (season_turnips_done)))
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (preheat_oven_pending)) (at start (take_baking_sheet_done)))
    :effect (and (at start (not (preheat_oven_pending))) (at end (preheat_oven_done)))
  )

  (:durative-action roast_turnips
    :parameters ()
    :duration (= ?duration 2100)
    :condition (and (at start (roast_turnips_pending)) (at start (arrange_turnips_done)) (at start (place_baking_sheet_done)))
    :effect (and (at start (not (roast_turnips_pending))) (at end (roast_turnips_done)))
  )

  (:durative-action peel_turnips
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (peel_turnips_pending)) (at start (wash_turnips_done)))
    :effect (and (at start (not (peel_turnips_pending))) (at end (peel_turnips_done)))
  )

  (:durative-action wash_turnips
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (wash_turnips_pending)) (at start (purchase_turnips_done)))
    :effect (and (at start (not (wash_turnips_pending))) (at end (wash_turnips_done)))
  )

  (:durative-action place_baking_sheet
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (place_baking_sheet_pending)) (at start (preheat_oven_done)))
    :effect (and (at start (not (place_baking_sheet_pending))) (at end (place_baking_sheet_done)))
  )

  (:durative-action arrange_turnips
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (arrange_turnips_pending)) (at start (season_turnips_done)) (at start (dice_turnips_done)))
    :effect (and (at start (not (arrange_turnips_pending))) (at end (arrange_turnips_done)))
  )

  (:durative-action purchase_turnips
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (purchase_turnips_pending))
    :effect (and (at start (not (purchase_turnips_pending))) (at end (purchase_turnips_done)))
  )

  (:durative-action take_baking_sheet
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (take_baking_sheet_pending))
    :effect (and (at start (not (take_baking_sheet_pending))) (at end (take_baking_sheet_done)))
  )

  (:durative-action dice_turnips
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (dice_turnips_pending)) (at start (peel_turnips_done)))
    :effect (and (at start (not (dice_turnips_pending))) (at end (dice_turnips_done)))
  )
)
