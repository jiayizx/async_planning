(define (problem use_art_supplies-problem)
  (:domain use_art_supplies)
  (:init
    (sketch_pending)
    (hold_marker_pending)
    (color_pending)
  )
  (:goal (and
    (sketch_done)
    (hold_marker_done)
    (color_done)
  ))
)
