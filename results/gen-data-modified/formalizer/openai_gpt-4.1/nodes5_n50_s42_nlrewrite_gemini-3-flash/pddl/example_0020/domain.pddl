(define (domain chicken-curry)
  (:requirements :durative-actions)
  (:predicates
    (brown_chicken_pending)
    (brown_chicken_done)
    (simmer_chicken_pending)
    (simmer_chicken_done)
    (dice_aromatics_pending)
    (dice_aromatics_done)
    (gather_ingredients_pending)
    (gather_ingredients_done)
    (saute_aromatics_pending)
    (saute_aromatics_done)
  )

  (:durative-action brown_chicken
    :parameters ()
    :duration (= ?duration 480)
    :condition (and
      (at start (brown_chicken_pending))
      (at start (dice_aromatics_done))
      (at start (gather_ingredients_done))
      (at start (saute_aromatics_done))
    )
    :effect (and
      (at start (not (brown_chicken_pending)))
      (at end (brown_chicken_done))
    )
  )

  (:durative-action simmer_chicken
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and
      (at start (simmer_chicken_pending))
      (at start (brown_chicken_done))
    )
    :effect (and
      (at start (not (simmer_chicken_pending)))
      (at end (simmer_chicken_done))
    )
  )

  (:durative-action dice_aromatics
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (dice_aromatics_pending))
      (at start (gather_ingredients_done))
    )
    :effect (and
      (at start (not (dice_aromatics_pending)))
      (at end (dice_aromatics_done))
    )
  )

  (:durative-action gather_ingredients
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (gather_ingredients_pending))
    :effect (and
      (at start (not (gather_ingredients_pending)))
      (at end (gather_ingredients_done))
    )
  )

  (:durative-action saute_aromatics
    :parameters ()
    :duration (= ?duration 240)
    :condition (and
      (at start (saute_aromatics_pending))
      (at start (gather_ingredients_done))
    )
    :effect (and
      (at start (not (saute_aromatics_pending)))
      (at end (saute_aromatics_done))
    )
  )
)
