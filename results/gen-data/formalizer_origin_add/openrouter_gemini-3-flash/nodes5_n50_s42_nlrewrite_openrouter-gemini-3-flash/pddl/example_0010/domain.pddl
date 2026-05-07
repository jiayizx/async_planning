(define (domain tv_acquisition)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (measurement_done)
    (cash_withdrawn)
    (at_store)
    (tv_purchased)
  )

  (:durative-action research_models
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action measure_wall
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (measurement_done)))
  )

  (:durative-action withdraw_cash
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cash_withdrawn)))
  )

  (:durative-action drive_to_store
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (cash_withdrawn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_store)))
  )

  (:durative-action purchase_tv
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (at_store)) (at start (cash_withdrawn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tv_purchased)))
  )
)