(define (domain signal-flare)
  (:requirements :durative-actions)
  
  (:predicates
    (mix_pending)
    (mix_done)
    (light_stove_pending)
    (light_stove_done)
    (heat_mixture_pending)
    (heat_mixture_done)
    (cool_mixture_pending)
    (cool_mixture_done)
    (shape_flare_pending)
    (shape_flare_done)
    (wrap_flare_pending)
    (wrap_flare_done)
  )

  (:durative-action mix_ingredients
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (mix_pending))
    :effect (and (at start (not (mix_pending))) (at end (mix_done)))
  )

  (:durative-action light_stove
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (light_stove_pending))
    :effect (and (at start (not (light_stove_pending))) (at end (light_stove_done)))
  )

  (:durative-action heat_mixture
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (heat_mixture_pending)) (at start (mix_done)) (at start (light_stove_done)))
    :effect (and (at start (not (heat_mixture_pending))) (at end (heat_mixture_done)))
  )

  (:durative-action cool_mixture
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (cool_mixture_pending)) (at start (heat_mixture_done)))
    :effect (and (at start (not (cool_mixture_pending))) (at end (cool_mixture_done)))
  )

  (:durative-action shape_flare
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (shape_flare_pending)) (at start (cool_mixture_done)))
    :effect (and (at start (not (shape_flare_pending))) (at end (shape_flare_done)))
  )

  (:durative-action wrap_flare
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (wrap_flare_pending)) (at start (shape_flare_done)))
    :effect (and (at start (not (wrap_flare_pending))) (at end (wrap_flare_done)))
  )
)
