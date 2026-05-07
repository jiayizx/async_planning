(define (domain fly_as_kid)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (flight_school_attended)
    (plane_found)
    (bank_talked)
    (plane_bought)
    (at_runway)
  )

  (:durative-action attend_flight_school
    :parameters (?s - step)
    :duration (= ?duration 63072000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flight_school_attended)))
  )

  (:durative-action find_plane
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (flight_school_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plane_found)))
  )

  (:durative-action talk_bank
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (flight_school_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bank_talked)))
  )

  (:durative-action buy_plane
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (plane_found)) (at start (bank_talked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plane_bought)))
  )

  (:durative-action go_to_runway
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (plane_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_runway)))
  )
)