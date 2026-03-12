(define (problem cook_mushrooms_prob) (:domain cook_mushrooms)
  (:init
    (heat_oil_pending)
    (prepare_mushrooms_pending)
    (add_shiitake_pending)
    (cook_pending)
    (season_serve_pending)
  )

  (:goal (and
    (heat_oil_done)
    (prepare_mushrooms_done)
    (add_shiitake_done)
    (cook_done)
    (season_serve_done)
  ))
)
