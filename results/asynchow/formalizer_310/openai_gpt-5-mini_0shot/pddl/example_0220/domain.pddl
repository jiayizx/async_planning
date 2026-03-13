(define (domain freezer_cherry_pie)
  (:requirements :durative-actions)
  (:predicates
    (layer_crust_pending)
    (layer_crust_done)
    (thaw_and_add_pending)
    (thaw_and_add_done)
    (unwrap_and_place_pending)
    (unwrap_and_place_done)
    (add_top_crust_pending)
    (add_top_crust_done)
    (bake_pie_pending)
    (bake_pie_done)
  )

  (:durative-action layer_crust
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (layer_crust_pending))
    :effect (and
             (at start (not (layer_crust_pending)))
             (at end (layer_crust_done))
    )
  )

  (:durative-action thaw_and_add
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (thaw_and_add_pending)) (at start (layer_crust_done)))
    :effect (and
             (at start (not (thaw_and_add_pending)))
             (at end (thaw_and_add_done))
    )
  )

  (:durative-action unwrap_and_place
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (unwrap_and_place_pending)) (at start (layer_crust_done)))
    :effect (and
             (at start (not (unwrap_and_place_pending)))
             (at end (unwrap_and_place_done))
    )
  )

  (:durative-action add_top_crust
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (add_top_crust_pending)) (at start (thaw_and_add_done)) (at start (unwrap_and_place_done)))
    :effect (and
             (at start (not (add_top_crust_pending)))
             (at end (add_top_crust_done))
    )
  )

  (:durative-action bake_pie
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (bake_pie_pending)) (at start (add_top_crust_done)))
    :effect (and
             (at start (not (bake_pie_pending)))
             (at end (bake_pie_done))
    )
  )
)
