(define (domain lemon-bars)
  (:requirements :durative-actions)
  (:predicates
    (preheat_oven_pending)
    (preheat_oven_done)
    (pour_filling_pending)
    (pour_filling_done)
    (mix_base_pending)
    (mix_base_done)
    (bake_crust_pending)
    (bake_crust_done)
    (zest_juice_pending)
    (zest_juice_done)
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (preheat_oven_pending))
    :effect (and (at start (not (preheat_oven_pending))) (at end (preheat_oven_done)))
  )

  (:durative-action pour_filling
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pour_filling_pending))
                    (at start (mix_base_done))
                    (at start (bake_crust_done))
                    (at start (zest_juice_done)))
    :effect (and (at start (not (pour_filling_pending))) (at end (pour_filling_done)))
  )

  (:durative-action mix_base
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (mix_base_pending))
    :effect (and (at start (not (mix_base_pending))) (at end (mix_base_done)))
  )

  (:durative-action bake_crust
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (bake_crust_pending))
                    (at start (mix_base_done)))
    :effect (and (at start (not (bake_crust_pending))) (at end (bake_crust_done)))
  )

  (:durative-action zest_juice
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (zest_juice_pending))
                    (at start (preheat_oven_done)))
    :effect (and (at start (not (zest_juice_pending))) (at end (zest_juice_done)))
  )
)
