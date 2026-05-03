(define (problem choose_chandelier_size)
  (:domain chandelier-sizing)
  
  (:init
    (figure_ceiling_height_pending)
    (figure_bedroom_size_pending)
    (add_dimensions_pending)
  )

  (:goal (and
    (figure_ceiling_height_done)
    (figure_bedroom_size_done)
    (add_dimensions_done)
  ))
)
