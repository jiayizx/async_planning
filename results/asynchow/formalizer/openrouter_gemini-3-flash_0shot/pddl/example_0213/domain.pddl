(define (domain chocolate_chip_cookies)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (oven_preheated)
    (dry_ingredients_combined)
    (sugars_blended)
    (dough_mixed)
    (cookies_on_sheet)
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated)))
  )

  (:durative-action combine_dry_ingredients
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dry_ingredients_combined)))
  )

  (:durative-action blend_sugars
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sugars_blended)))
  )

  (:durative-action mix_dough
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and 
      (at start (step_pending ?s)) 
      (at start (dry_ingredients_combined)) 
      (at start (sugars_blended))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dough_mixed)))
  )

  (:durative-action place_dough
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and 
      (at start (step_pending ?s)) 
      (at start (dough_mixed))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cookies_on_sheet)))
  )
)