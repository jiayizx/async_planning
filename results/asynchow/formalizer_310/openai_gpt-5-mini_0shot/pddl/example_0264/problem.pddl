(define (problem make_berry_poutine)
  (:domain berry_poutine)

  (:init
    (preheat_pending)
    (arrange_pending)
    (makecake_pending)
    (pour_pending)
    (bake_pending)
    (serve_pending)
  )

  (:goal (and
    (preheat_done)
    (arrange_done)
    (makecake_done)
    (pour_done)
    (bake_done)
    (serve_done)
  ))
)
