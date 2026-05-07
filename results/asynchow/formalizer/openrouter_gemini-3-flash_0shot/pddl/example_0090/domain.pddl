(define (domain walmart_trip)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (clothes_on)
    (list_made)
    (in_car)
    (at_walmart)
    (parked)
  )

  (:durative-action put_on_clothes
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_on)))
  )

  (:durative-action make_grocery_list
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (list_made)))
  )

  (:durative-action get_in_car
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (clothes_on)) (at start (list_made)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (in_car)))
  )

  (:durative-action drive_to_walmart
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (in_car)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_walmart)))
  )

  (:durative-action find_parking
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (at_walmart)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parked)))
  )
)