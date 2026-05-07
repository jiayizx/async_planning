(define (domain cook_buttercup_squash)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (oven_preheated)
    (seeds_scooped)
    (mixture_combined)
    (squash_baked)
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and 
      (at start (not (step_pending ?s))) 
      (at end (step_done ?s)) 
      (at end (oven_preheated))
    )
  )

  (:durative-action scoop_seeds
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and 
      (at start (not (step_pending ?s))) 
      (at end (step_done ?s)) 
      (at end (seeds_scooped))
    )
  )

  (:durative-action combine_ingredients
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and 
      (at start (not (step_pending ?s))) 
      (at end (step_done ?s)) 
      (at end (mixture_combined))
    )
  )

  (:durative-action bake_squash
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and 
      (at start (step_pending ?s))
      (at start (oven_preheated))
      (at start (seeds_scooped))
      (at start (mixture_combined))
    )
    :effect (and 
      (at start (not (step_pending ?s))) 
      (at end (step_done ?s)) 
      (at end (squash_baked))
    )
  )
)