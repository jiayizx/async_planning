(define (domain chandelier-sizing)
  (:requirements :durative-actions)
  
  (:predicates
    (figure_ceiling_height_pending)
    (figure_ceiling_height_done)
    (figure_bedroom_size_pending)
    (figure_bedroom_size_done)
    (add_dimensions_pending)
    (add_dimensions_done)
  )

  (:durative-action figure_ceiling_height
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (figure_ceiling_height_pending))
    :effect (and (at start (not (figure_ceiling_height_pending)))
                 (at end (figure_ceiling_height_done)))
  )

  (:durative-action figure_bedroom_size
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (figure_bedroom_size_pending))
    :effect (and (at start (not (figure_bedroom_size_pending)))
                 (at end (figure_bedroom_size_done)))
  )

  (:durative-action add_dimensions
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (add_dimensions_pending))
                    (at start (figure_bedroom_size_done)))
    :effect (and (at start (not (add_dimensions_pending)))
                 (at end (add_dimensions_done)))
  )
)
