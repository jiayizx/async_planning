(define (domain milanesa_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (meat_pounded)
    (eggs_whisked)
    (meat_dipped)
    (station_prepared)
    (milanesa_ready)
  )

  (:durative-action pound_meat
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_pounded)))
  )

  (:durative-action whisk_eggs
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_whisked)))
  )

  (:durative-action dip_meat
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (meat_pounded)) (at start (eggs_whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_dipped)))
  )

  (:durative-action prepare_station
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (meat_pounded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (station_prepared)))
  )

  (:durative-action coat_and_fry
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (meat_dipped)) (at start (station_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (milanesa_ready)))
  )
)