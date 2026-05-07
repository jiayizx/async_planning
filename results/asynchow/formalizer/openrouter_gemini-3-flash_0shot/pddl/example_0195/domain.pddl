(define (domain strawberry_butterflies)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (strawberry_sliced)
    (wings_pulled)
    (chili_prepared)
    (butterfly_assembled)
  )

  (:durative-action slice_strawberry
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (strawberry_sliced)))
  )

  (:durative-action pull_wings
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (strawberry_sliced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wings_pulled)))
  )

  (:durative-action prepare_chili
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chili_prepared)))
  )

  (:durative-action assemble_butterfly
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (chili_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butterfly_assembled)))
  )
)