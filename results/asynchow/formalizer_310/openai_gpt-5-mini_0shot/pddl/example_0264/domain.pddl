(define (domain berry_poutine)
  (:requirements :durative-actions)
  (:predicates
    (preheat_pending) (preheat_done)
    (arrange_pending) (arrange_done)
    (makecake_pending) (makecake_done)
    (pour_pending) (pour_done)
    (bake_pending) (bake_done)
    (serve_pending) (serve_done)
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (preheat_pending)))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action arrange_berries
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (arrange_pending)))
    :effect (and (at start (not (arrange_pending))) (at end (arrange_done)))
  )

  (:durative-action make_cake_part
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (makecake_pending)))
    :effect (and (at start (not (makecake_pending))) (at end (makecake_done)))
  )

  (:durative-action pour_mixture_over_berries
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pour_pending)) (at start (arrange_done)) (at start (makecake_done)))
    :effect (and (at start (not (pour_pending))) (at end (pour_done)))
  )

  (:durative-action place_in_oven
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (bake_pending)) (at start (preheat_done)) (at start (pour_done)))
    :effect (and (at start (not (bake_pending))) (at end (bake_done)))
  )

  (:durative-action remove_and_serve
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (serve_pending)) (at start (bake_done)))
    :effect (and (at start (not (serve_pending))) (at end (serve_done)))
  )
)
