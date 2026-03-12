(define (domain roast-turnips)
  (:requirements :durative-actions)
  (:predicates
    (season_pending) (season_done)
    (preheat_pending) (preheat_done)
    (roast_pending) (roast_done)
    (peel_pending) (peel_done)
    (wash_pending) (wash_done)
    (place_pending) (place_done)
    (arrange_pending) (arrange_done)
    (purchase_pending) (purchase_done)
    (take_sheet_pending) (take_sheet_done)
    (dice_pending) (dice_done)
  )

  (:durative-action season_turnips
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (season_pending)) (at start (purchase_done)))
    :effect (and (at start (not (season_pending))) (at end (season_done)))
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (preheat_pending)) (at start (take_sheet_done)))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action roast_turnips_action
    :parameters ()
    :duration (= ?duration 2100)
    :condition (and (at start (roast_pending)) (at start (arrange_done)))
    :effect (and (at start (not (roast_pending))) (at end (roast_done)))
  )

  (:durative-action peel_turnips
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (peel_pending)) (at start (wash_done)))
    :effect (and (at start (not (peel_pending))) (at end (peel_done)))
  )

  (:durative-action wash_turnips
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (wash_pending)))
    :effect (and (at start (not (wash_pending))) (at end (wash_done)))
  )

  (:durative-action place_baking_sheet_in_oven
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (place_pending)) (at start (preheat_done)))
    :effect (and (at start (not (place_pending))) (at end (place_done)))
  )

  (:durative-action arrange_on_baking_sheet
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (arrange_pending)) (at start (dice_done)))
    :effect (and (at start (not (arrange_pending))) (at end (arrange_done)))
  )

  (:durative-action purchase_turnips
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (purchase_pending)))
    :effect (and (at start (not (purchase_pending))) (at end (purchase_done)))
  )

  (:durative-action take_baking_sheet_out_of_cupboard
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (take_sheet_pending)))
    :effect (and (at start (not (take_sheet_pending))) (at end (take_sheet_done)))
  )

  (:durative-action dice_turnips
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (dice_pending)) (at start (peel_done)))
    :effect (and (at start (not (dice_pending))) (at end (dice_done)))
  )
)
