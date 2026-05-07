(define (domain maple_finishing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (stirred)
    (first_coat_applied)
    (first_coat_dried)
    (sanded)
    (second_coat_done)
  )

  (:durative-action stir_polyurethane
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stirred)))
  )

  (:durative-action paint_first_coat
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (stirred)) (at start (second_coat_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (first_coat_applied)))
  )

  (:durative-action dry_first_coat
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (first_coat_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (first_coat_dried)))
  )

  (:durative-action sand_finish
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sanded)))
  )

  (:durative-action apply_second_coat
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (sanded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (second_coat_done)))
  )
)