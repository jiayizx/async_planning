(define (problem make_freezer_sweet_cherry_pie)
  (:domain freezer_cherry_pie)

  (:init
    (layer_crust_pending)
    (thaw_and_add_pending)
    (unwrap_and_place_pending)
    (add_top_crust_pending)
    (bake_pie_pending)
  )

  (:goal (and
    (layer_crust_done)
    (thaw_and_add_done)
    (unwrap_and_place_done)
    (add_top_crust_done)
    (bake_pie_done)
  ))
)
