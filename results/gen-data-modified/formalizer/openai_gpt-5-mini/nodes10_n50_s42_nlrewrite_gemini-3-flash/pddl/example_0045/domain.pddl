(define (domain roast-turnips)
  (:requirements :durative-actions)
  (:predicates
    (preheat_pending) (preheat_done)
    (wash_pending) (wash_done)
    (plate_pending) (plate_done)
    (toss_pending) (toss_done)
    (peel_pending) (peel_done)
    (take_sheet_pending) (take_sheet_done)
    (chop_pending) (chop_done)
    (line_pending) (line_done)
    (roast_pending) (roast_done)
    (grease_pending) (grease_done)
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (preheat_pending))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action wash_turnips
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (wash_pending))
    :effect (and (at start (not (wash_pending))) (at end (wash_done)))
  )

  (:durative-action plate_roasted_turnips
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (plate_pending)) (at start (grease_done)))
    :effect (and (at start (not (plate_pending))) (at end (plate_done)))
  )

  (:durative-action toss_with_oil_and_salt
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (toss_pending)) (at start (peel_done)))
    :effect (and (at start (not (toss_pending))) (at end (toss_done)))
  )

  (:durative-action peel_turnips
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (peel_pending))
    :effect (and (at start (not (peel_pending))) (at end (peel_done)))
  )

  (:durative-action take_baking_sheet_out
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (take_sheet_pending))
    :effect (and (at start (not (take_sheet_pending))) (at end (take_sheet_done)))
  )

  (:durative-action chop_turnips
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (chop_pending)) (at start (wash_done)))
    :effect (and (at start (not (chop_pending))) (at end (chop_done)))
  )

  (:durative-action line_baking_sheet
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (line_pending)) (at start (preheat_done)))
    :effect (and (at start (not (line_pending))) (at end (line_done)))
  )

  (:durative-action roast_turnips
    :parameters ()
    :duration (= ?duration 2100)
    :condition (and (at start (roast_pending)) (at start (wash_done)) (at start (chop_done)) (at start (line_done)))
    :effect (and (at start (not (roast_pending))) (at end (roast_done)))
  )

  (:durative-action grease_baking_sheet
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (grease_pending)) (at start (take_sheet_done)))
    :effect (and (at start (not (grease_pending))) (at end (grease_done)))
  )
)
