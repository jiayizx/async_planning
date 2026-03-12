(define (domain rustic-cabin-art)
  (:requirements :durative-actions)
  (:predicates
    (map_horizon_pending)
    (map_horizon_done)
    (apply_varnish_pending)
    (apply_varnish_done)
    (sketch_wireframe_pending)
    (sketch_wireframe_done)
    (prepare_palette_pending)
    (prepare_palette_done)
    (paint_logs_pending)
    (paint_logs_done)
  )

  (:durative-action map_horizon
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (map_horizon_pending))
    :effect (and (at start (not (map_horizon_pending))) (at end (map_horizon_done)))
  )

  (:durative-action apply_varnish
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (apply_varnish_pending)) (at start (map_horizon_done)) (at start (paint_logs_done)))
    :effect (and (at start (not (apply_varnish_pending))) (at end (apply_varnish_done)))
  )

  (:durative-action sketch_wireframe
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (sketch_wireframe_pending)) (at start (map_horizon_done)))
    :effect (and (at start (not (sketch_wireframe_pending))) (at end (sketch_wireframe_done)))
  )

  (:durative-action prepare_palette
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (prepare_palette_pending)) (at start (map_horizon_done)))
    :effect (and (at start (not (prepare_palette_pending))) (at end (prepare_palette_done)))
  )

  (:durative-action paint_logs
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (paint_logs_pending)) (at start (sketch_wireframe_done)))
    :effect (and (at start (not (paint_logs_pending))) (at end (paint_logs_done)))
  )
)
