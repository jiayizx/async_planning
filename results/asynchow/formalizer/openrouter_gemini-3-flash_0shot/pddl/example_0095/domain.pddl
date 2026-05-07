(define (domain rollerblade_learning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (walked_to_bus_stop)
    (bus_arrived)
    (at_rink)
    (lessons_signed_up)
    (blades_rented)
    (lessons_started)
    (learned_to_rollerblade)
  )

  (:durative-action walk_to_bus_stop
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (walked_to_bus_stop)))
  )

  (:durative-action wait_for_bus
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (walked_to_bus_stop)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bus_arrived)))
  )

  (:durative-action take_bus
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (bus_arrived)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_rink)))
  )

  (:durative-action sign_up_lessons
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (at_rink)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lessons_signed_up)))
  )

  (:durative-action rent_blades
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (at_rink)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (blades_rented)))
  )

  (:durative-action wait_for_lessons
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (lessons_signed_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lessons_started)))
  )

  (:durative-action follow_instructions
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (blades_rented)) (at start (lessons_started)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (learned_to_rollerblade)))
  )
)