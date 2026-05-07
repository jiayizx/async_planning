(define (domain cook_ground_turkey)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (mixed)
    (shaped)
    (oil_heated)
    (cooked)
    (served)
  )

  (:durative-action mix_turkey_spices
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixed)))
  )

  (:durative-action shape_patties
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (mixed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shaped)))
  )

  (:durative-action heat_oil
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_heated)))
  )

  (:durative-action cook_burgers
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (shaped)) (at start (oil_heated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cooked)))
  )

  (:durative-action serve_burgers
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (cooked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (served)))
  )
)