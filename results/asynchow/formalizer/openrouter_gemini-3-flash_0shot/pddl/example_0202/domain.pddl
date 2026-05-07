(define (domain cone_volume)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (radius_found)
    (area_calculated)
    (height_found)
    (product_calculated)
    (volume_calculated)
  )

  (:durative-action find_radius
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (radius_found)))
  )

  (:durative-action calculate_area
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (radius_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (area_calculated)))
  )

  (:durative-action find_height
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (height_found)))
  )

  (:durative-action multiply_area_height
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (area_calculated)) (at start (height_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (product_calculated)))
  )

  (:durative-action divide_by_three
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (product_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (volume_calculated)))
  )
)