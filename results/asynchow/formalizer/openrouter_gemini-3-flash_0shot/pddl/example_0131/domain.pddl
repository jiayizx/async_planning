(define (domain chandelier_sizing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (height_known)
    (room_measured)
    (dimensions_added)
  )

  (:durative-action measure_height
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (height_known)))
  )

  (:durative-action measure_room
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (room_measured)))
  )

  (:durative-action add_dimensions
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (room_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dimensions_added)))
  )
)