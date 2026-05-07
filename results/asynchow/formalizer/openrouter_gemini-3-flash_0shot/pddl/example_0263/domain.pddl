(define (domain remove_pet_hair)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (mist_done)
    (rub_done)
    (vacuum_done)
    (mop_done)
  )

  (:durative-action mist_carpet
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mist_done)))
  )

  (:durative-action rub_pumice
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (mist_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rub_done)))
  )

  (:durative-action vacuum_carpet
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (rub_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vacuum_done)))
  )

  (:durative-action mop_hardwood
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mop_done)))
  )
)