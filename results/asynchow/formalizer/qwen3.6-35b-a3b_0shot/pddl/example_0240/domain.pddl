(define (domain cook_buttercup_squash)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (oven_preheated)
               (seeds_scooped)
               (ingredients_combined)
               (squash_baked))
  (:durative-action preheat_oven
    :parameters ()
    :duration 300
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (oven_preheated))))
  (:durative-action scoop_seeds
    :parameters ()
    :duration 600
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (seeds_scooped))))
  (:durative-action combine_ingredients
    :parameters ()
    :duration 300
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (ingredients_combined))))
  (:durative-action bake_squash
    :parameters ()
    :duration 2400
    :condition (and (at start (step_pending step4))
                    (at start (oven_preheated))
                    (at start (seeds_scooped))
                    (at start (ingredients_combined)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (squash_baked)))))