(define (domain ice_skating)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (rink_found)
    (at_rink)
    (skates_rented)
    (left_skate_on)
    (right_skate_on)
  )

  (:durative-action search_for_ice_rink
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rink_found)))
  )

  (:durative-action drive_to_ice_rink
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (rink_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_rink)))
  )

  (:durative-action rent_ice_skates
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (at_rink)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (skates_rented)))
  )

  (:durative-action put_left_skate_on
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (skates_rented)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (left_skate_on)))
  )

  (:durative-action put_right_skate_on
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (skates_rented)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (right_skate_on)))
  )
)