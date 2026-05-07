(define (problem calculate_cone_volume_problem)
  (:domain calculate_cone_volume)
  
  (:init
    (find_radius_pending)
    (find_base_area_pending)
    (find_height_pending)
    (multiply_area_height_pending)
    (divide_by_three_pending)
  )

  (:goal (and
    (find_radius_done)
    (find_base_area_done)
    (find_height_done)
    (multiply_area_height_done)
    (divide_by_three_done)
  ))
)
