(define (problem make_lemon_bars)
  (:domain lemon_bars)

  (:init
    (preheat_pending)
    (pour_pending)
    (mix_pending)
    (bake_pending)
    (zest_pending)
  )

  (:goal (and
    (preheat_done)
    (pour_done)
    (mix_done)
    (bake_done)
    (zest_done)
  ))
)
