(define (domain cook-ground-turkey)
  (:requirements :durative-actions)
  (:predicates
    (preheat_oven_pending)
    (preheat_oven_done)
    (mix_ingredients_pending)
    (mix_ingredients_done)
    (form_meatballs_pending)
    (form_meatballs_done)
    (cook_meatballs_pending)
    (cook_meatballs_done)
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (preheat_oven_pending))
    :effect (and
      (at start (not (preheat_oven_pending)))
      (at end (preheat_oven_done))
    )
  )

  (:durative-action mix_ingredients
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (mix_ingredients_pending))
    :effect (and
      (at start (not (mix_ingredients_pending)))
      (at end (mix_ingredients_done))
    )
  )

  (:durative-action form_meatballs
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (form_meatballs_pending))
      (at start (mix_ingredients_done))
    )
    :effect (and
      (at start (not (form_meatballs_pending)))
      (at end (form_meatballs_done))
    )
  )

  (:durative-action cook_meatballs
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (cook_meatballs_pending))
      (at start (preheat_oven_done))
      (at start (form_meatballs_done))
    )
    :effect (and
      (at start (not (cook_meatballs_pending)))
      (at end (cook_meatballs_done))
    )
  )
)
