(define (domain short_film_production)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (at_car)
    (at_location)
    (gear_ready)
    (actors_present)
    (film_directed)
  )

  (:durative-action go_to_car
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_car)))
  )

  (:durative-action drive_to_location
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (at_car)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_location)))
  )

  (:durative-action get_out_gear
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (at_location)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gear_ready)))
  )

  (:durative-action wait_for_actors
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (at_location)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (actors_present)))
  )

  (:durative-action direct_actors
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending ?s)) (at start (actors_present)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (film_directed)))
  )
)