(define (domain steamed_sweet_potatoes)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (peeled)
    (cut)
    (placed)
    (water_boiled)
    (served)
  )

  (:durative-action peel_potatoes
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (peeled)))
  )

  (:durative-action cut_potatoes
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (peeled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cut)))
  )

  (:durative-action boil_water
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_boiled)))
  )

  (:durative-action place_in_tray
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (cut)) (at start (water_boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (placed)))
  )

  (:durative-action serve_and_enjoy
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (served)))
  )
)