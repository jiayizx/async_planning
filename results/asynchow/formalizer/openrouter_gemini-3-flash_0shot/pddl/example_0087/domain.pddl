(define (domain race_prep)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (signed_up)
    (practiced)
    (eaten_well)
    (rested)
    (arrived)
  )

  (:durative-action sign_up
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (signed_up)))
  )

  (:durative-action practice
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (signed_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (practiced)))
  )

  (:durative-action eat_well
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (signed_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eaten_well)))
  )

  (:durative-action rest
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (practiced)) (at start (eaten_well)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rested)))
  )

  (:durative-action arrive
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (rested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arrived)))
  )
)