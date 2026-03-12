(define (domain lemon_bars)
  (:requirements :durative-actions)
  (:predicates
    (preheat_pending)
    (preheat_done)
    (pour_pending)
    (pour_done)
    (mix_pending)
    (mix_done)
    (bake_pending)
    (bake_done)
    (zest_pending)
    (zest_done)
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (preheat_pending))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action pour_lemon_curd
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pour_pending)) (at start (mix_done)))
    :effect (and (at start (not (pour_pending))) (at end (pour_done)))
  )

  (:durative-action mix_shortbread_base
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (mix_pending))
    :effect (and (at start (not (mix_pending))) (at end (mix_done)))
  )

  (:durative-action bake_shortbread_crust
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (bake_pending)) (at start (mix_done)))
    :effect (and (at start (not (bake_pending))) (at end (bake_done)))
  )

  (:durative-action zest_and_juice_lemons
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (zest_pending)) (at start (preheat_done)))
    :effect (and (at start (not (zest_pending))) (at end (zest_done)))
  )
)
