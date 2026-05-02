(define (domain roast-turnips)
  (:requirements :durative-actions)
  (:predicates
    (preheat_oven_pending)
    (preheat_oven_done)
    (wash_turnips_pending)
    (wash_turnips_done)
    (plate_garnish_pending)
    (plate_garnish_done)
    (toss_oil_salt_pending)
    (toss_oil_salt_done)
    (peel_turnips_pending)
    (peel_turnips_done)
    (get_baking_sheet_pending)
    (get_baking_sheet_done)
    (chop_turnips_pending)
    (chop_turnips_done)
    (line_sheet_pending)
    (line_sheet_done)
    (roast_turnips_pending)
    (roast_turnips_done)
    (grease_sheet_pending)
    (grease_sheet_done)
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (preheat_oven_pending))
    :effect (and (at start (not (preheat_oven_pending))) (at end (preheat_oven_done)))
  )

  (:durative-action wash_turnips
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (wash_turnips_pending))
    :effect (and (at start (not (wash_turnips_pending))) (at end (wash_turnips_done)))
  )

  (:durative-action plate_garnish
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (plate_garnish_pending)) (at start (roast_turnips_done)) (at start (grease_sheet_done)))
    :effect (and (at start (not (plate_garnish_pending))) (at end (plate_garnish_done)))
  )

  (:durative-action toss_oil_salt
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (toss_oil_salt_pending)) (at start (peel_turnips_done)))
    :effect (and (at start (not (toss_oil_salt_pending))) (at end (toss_oil_salt_done)))
  )

  (:durative-action peel_turnips
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (peel_turnips_pending))
    :effect (and (at start (not (peel_turnips_pending))) (at end (peel_turnips_done)))
  )

  (:durative-action get_baking_sheet
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (get_baking_sheet_pending))
    :effect (and (at start (not (get_baking_sheet_pending))) (at end (get_baking_sheet_done)))
  )

  (:durative-action chop_turnips
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (chop_turnips_pending)) (at start (wash_turnips_done)) (at start (peel_turnips_done)))
    :effect (and (at start (not (chop_turnips_pending))) (at end (chop_turnips_done)))
  )

  (:durative-action line_sheet
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (line_sheet_pending)) (at start (preheat_oven_done)) (at start (get_baking_sheet_done)))
    :effect (and (at start (not (line_sheet_pending))) (at end (line_sheet_done)))
  )

  (:durative-action roast_turnips
    :parameters ()
    :duration (= ?duration 2100)
    :condition (and (at start (roast_turnips_pending)) (at start (wash_turnips_done)) (at start (chop_turnips_done)) (at start (line_sheet_done)))
    :effect (and (at start (not (roast_turnips_pending))) (at end (roast_turnips_done)))
  )

  (:durative-action grease_sheet
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (grease_sheet_pending)) (at start (get_baking_sheet_done)))
    :effect (and (at start (not (grease_sheet_pending))) (at end (grease_sheet_done)))
  )
)
