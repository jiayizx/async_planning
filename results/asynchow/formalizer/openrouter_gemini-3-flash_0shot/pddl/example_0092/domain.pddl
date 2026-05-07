(define (domain zoo_animal_addition)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (called)
    (at_zoo)
    (paperwork_ready)
    (area_ready)
    (animal_received)
  )

  (:durative-action call_about_animal
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (called)))
  )

  (:durative-action drive_to_zoo
    :parameters (?s - step)
    :duration (= ?duration 2100)
    :condition (and (at start (step_pending ?s)) (at start (called)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_zoo)))
  )

  (:durative-action setup_paperwork
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (at_zoo)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paperwork_ready)))
  )

  (:durative-action setup_area
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (at_zoo)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (area_ready)))
  )

  (:durative-action receive_animal
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (paperwork_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (animal_received)))
  )
)