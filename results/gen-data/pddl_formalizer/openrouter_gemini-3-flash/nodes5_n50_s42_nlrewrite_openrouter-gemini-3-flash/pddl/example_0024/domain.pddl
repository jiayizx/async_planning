(define (domain jewelry_polishing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (workstation_prepared)
    (soaked)
    (scrubbed)
    (rinsed)
    (buffed)
  )

  (:durative-action prepare_workstation
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workstation_prepared)))
  )

  (:durative-action soak_pieces
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (workstation_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soaked)))
  )

  (:durative-action scrub_crevices
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (workstation_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scrubbed)))
  )

  (:durative-action rinse_jewelry
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (soaked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rinsed)))
  )

  (:durative-action buff_metal
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (scrubbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (buffed)))
  )
)