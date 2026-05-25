(define (domain calculate_cone_volume)
  (:requirements :durative-actions)
  
  (:predicates
    (find_radius_pending)
    (find_radius_done)
    (find_base_area_pending)
    (find_base_area_done)
    (find_height_pending)
    (find_height_done)
    (multiply_area_height_pending)
    (multiply_area_height_done)
    (divide_by_three_pending)
    (divide_by_three_done)
  )

  (:durative-action find_radius
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (find_radius_pending))
    :effect (and (at start (not (find_radius_pending))) (at end (find_radius_done)))
  )

  (:durative-action find_base_area
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (find_base_area_pending)) (at start (find_radius_done)))
    :effect (and (at start (not (find_base_area_pending))) (at end (find_base_area_done)))
  )

  (:durative-action find_height
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (find_height_pending))
    :effect (and (at start (not (find_height_pending))) (at end (find_height_done)))
  )

  (:durative-action multiply_area_height
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (multiply_area_height_pending)) (at start (find_base_area_done)) (at start (find_height_done)))
    :effect (and (at start (not (multiply_area_height_pending))) (at end (multiply_area_height_done)))
  )

  (:durative-action divide_by_three
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (divide_by_three_pending)) (at start (multiply_area_height_done)))
    :effect (and (at start (not (divide_by_three_pending))) (at end (divide_by_three_done)))
  )
)
