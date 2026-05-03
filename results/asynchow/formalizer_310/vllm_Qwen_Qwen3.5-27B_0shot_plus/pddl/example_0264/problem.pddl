(define (problem make_berry_poutine)
  (:domain berry-poutine)
  
  (:init
    (preheat_oven_pending)
    (arrange_berries_pending)
    (make_cake_pending)
    (pour_mixture_pending)
    (bake_cake_pending)
    (serve_cake_pending)
  )

  (:goal (and
    (preheat_oven_done)
    (arrange_berries_done)
    (make_cake_done)
    (pour_mixture_done)
    (bake_cake_done)
    (serve_cake_done)
  ))
)
