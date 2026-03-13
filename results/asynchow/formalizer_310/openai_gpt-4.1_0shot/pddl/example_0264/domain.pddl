(define (domain berry_poutine)
  (:requirements :durative-actions)
  (:predicates
    (preheat_oven_pending)
    (preheat_oven_done)
    (arrange_berries_pending)
    (arrange_berries_done)
    (make_cake_pending)
    (make_cake_done)
    (pour_mixture_pending)
    (pour_mixture_done)
    (bake_pending)
    (bake_done)
    (remove_and_serve_pending)
    (remove_and_serve_done)
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (preheat_oven_pending))
    :effect (and (at start (not (preheat_oven_pending))) (at end (preheat_oven_done)))
  )

  (:durative-action arrange_berries
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (arrange_berries_pending))
    :effect (and (at start (not (arrange_berries_pending))) (at end (arrange_berries_done)))
  )

  (:durative-action make_cake
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (make_cake_pending))
    :effect (and (at start (not (make_cake_pending))) (at end (make_cake_done)))
  )

  (:durative-action pour_mixture
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pour_mixture_pending)) (at start (arrange_berries_done)) (at start (make_cake_done)))
    :effect (and (at start (not (pour_mixture_pending))) (at end (pour_mixture_done)))
  )

  (:durative-action bake
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (bake_pending)) (at start (preheat_oven_done)) (at start (pour_mixture_done)))
    :effect (and (at start (not (bake_pending))) (at end (bake_done)))
  )

  (:durative-action remove_and_serve
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (remove_and_serve_pending)) (at start (bake_done)))
    :effect (and (at start (not (remove_and_serve_pending))) (at end (remove_and_serve_done)))
  )
)
