(define (problem make_signal_flare)
  (:domain signal-flare)
  
  (:init
    (mix_pending)
    (light_stove_pending)
    (heat_mixture_pending)
    (cool_mixture_pending)
    (shape_flare_pending)
    (wrap_flare_pending)
  )

  (:goal (and
    (mix_done)
    (light_stove_done)
    (heat_mixture_done)
    (cool_mixture_done)
    (shape_flare_done)
    (wrap_flare_done)
  ))
)
