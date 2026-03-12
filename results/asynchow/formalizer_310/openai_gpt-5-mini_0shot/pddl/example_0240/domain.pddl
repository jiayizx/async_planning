(define (domain cook_buttercup_squash)
  (:requirements :durative-actions)
  (:predicates
    (preheat_pending)
    (preheat_done)
    (scoop_pending)
    (scoop_done)
    (mix_pending)
    (mix_done)
    (bake_pending)
    (bake_done)
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (preheat_pending))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action scoop_seeds_and_pulp
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (scoop_pending))
    :effect (and (at start (not (scoop_pending))) (at end (scoop_done)))
  )

  (:durative-action mix_apples_butter_sugar_nutmeg_lemon
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (mix_pending))
    :effect (and (at start (not (mix_pending))) (at end (mix_done)))
  )

  (:durative-action cover_and_bake
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (bake_pending)) (at start (preheat_done)) (at start (scoop_done)) (at start (mix_done)))
    :effect (and (at start (not (bake_pending))) (at end (bake_done)))
  )
)
