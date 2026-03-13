(define (domain rhubarb-preparation)
  (:requirements :durative-actions)
  (:predicates
    (harvest_pending)
    (harvest_done)
    (preheat_pending)
    (preheat_done)
    (wash_pending)
    (wash_done)
    (toss_pending)
    (toss_done)
    (combine_pending)
    (combine_done)
    (measure_pending)
    (measure_done)
    (trim_pending)
    (trim_done)
    (clean_pending)
    (clean_done)
    (spread_pending)
    (spread_done)
    (whip_pending)
    (whip_done)
    (chill_pending)
    (chill_done)
    (sharpen_pending)
    (sharpen_done)
    (bake_pending)
    (bake_done)
    (sprinkle_pending)
    (sprinkle_done)
    (slice_pending)
    (slice_done)
  )

  ;; Step 1: Harvest fresh rhubarb stalks from the garden (600 seconds)
  (:durative-action do_harvest
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (harvest_pending))
    :effect (and (at start (not (harvest_pending))) (at end (harvest_done)))
  )

  ;; Step 2: Preheat the oven for the rhubarb crumble (900 seconds)
  (:durative-action do_preheat
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (preheat_pending))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  ;; Step 3: Wash and scrub the dirt off the stalks (300 seconds)
  (:durative-action do_wash
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (wash_pending)) (at start (harvest_done)))
    :effect (and (at start (not (wash_pending))) (at end (wash_done)))
  )

  ;; Step 4: Toss the chopped pieces in sugar and cinnamon (120 seconds)
  (:durative-action do_toss
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (toss_pending)) (at start (slice_done)))
    :effect (and (at start (not (toss_pending))) (at end (toss_done)))
  )

  ;; Step 5: Combine the butter and oats for the crumble topping (480 seconds)
  (:durative-action do_combine
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (combine_pending)) (at start (measure_done)))
    :effect (and (at start (not (combine_pending))) (at end (combine_done)))
  )

  ;; Step 6: Measure out the dry topping ingredients (180 seconds)
  (:durative-action do_measure
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (measure_pending)) (at start (clean_done)))
    :effect (and (at start (not (measure_pending))) (at end (measure_done)))
  )

  ;; Step 7: Trim the poisonous leaves and discard them (240 seconds)
  (:durative-action do_trim
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (trim_pending)) (at start (wash_done)))
    :effect (and (at start (not (trim_pending))) (at end (trim_done)))
  )

  ;; Step 8: Clean the mixing bowls and workspace (720 seconds)
  (:durative-action do_clean
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (clean_pending)) (at start (sharpen_done)))
    :effect (and (at start (not (clean_pending))) (at end (clean_done)))
  )

  ;; Step 9: Spread the seasoned rhubarb into a baking dish (60 seconds)
  (:durative-action do_spread
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (spread_pending)) (at start (toss_done)))
    :effect (and (at start (not (spread_pending))) (at end (spread_done)))
  )

  ;; Step 10: Prepare a side of whipped cream (360 seconds)
  (:durative-action do_whip
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (whip_pending)) (at start (wash_done)) (at start (chill_done)))
    :effect (and (at start (not (whip_pending))) (at end (whip_done)))
  )

  ;; Step 11: Chill the heavy cream in the freezer (1200 seconds)
  (:durative-action do_chill
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (chill_pending))
    :effect (and (at start (not (chill_pending))) (at end (chill_done)))
  )

  ;; Step 12: Sharpen the kitchen knife (120 seconds)
  (:durative-action do_sharpen
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (sharpen_pending))
    :effect (and (at start (not (sharpen_pending))) (at end (sharpen_done)))
  )

  ;; Step 13: Place the baking dish in the hot oven (30 seconds)
  (:durative-action do_bake
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (bake_pending)) (at start (preheat_done)) (at start (spread_done)) (at start (sprinkle_done)))
    :effect (and (at start (not (bake_pending))) (at end (bake_done)))
  )

  ;; Step 14: Sprinkle the oat topping over the rhubarb (120 seconds)
  (:durative-action do_sprinkle
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (sprinkle_pending)) (at start (combine_done)) (at start (trim_done)))
    :effect (and (at start (not (sprinkle_pending))) (at end (sprinkle_done)))
  )

  ;; Step 15: Slice the stalks into one-inch pieces (420 seconds)
  (:durative-action do_slice
    :parameters ()
    :duration (= ?duration 420)
    :condition (and (at start (slice_pending)) (at start (wash_done)))
    :effect (and (at start (not (slice_pending))) (at end (slice_done)))
  )
)
