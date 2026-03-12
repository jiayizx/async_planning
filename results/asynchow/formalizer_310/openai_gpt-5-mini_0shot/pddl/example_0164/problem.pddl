(define (problem use-art-supplies-problem)
  (:domain use-art-supplies)
  (:init
    (sketch_pending) (hold_marker_pending) (color_pending)
  )
  (:goal (and
    (sketch_done) (hold_marker_done) (color_done)
  ))
)
