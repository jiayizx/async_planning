(define (domain off_roading)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (garage_unlocked)
    (in_garage)
    (in_truck)
    (truck_started)
    (at_recreation_area)
    (fee_paid)
    (on_trails)
  )

  (:durative-action unlock_garage
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garage_unlocked)))
  )

  (:durative-action walk_into_garage
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (in_garage)))
  )

  (:durative-action get_into_truck
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (in_garage)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (in_truck)))
  )

  (:durative-action start_truck
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (in_truck)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (truck_started)))
  )

  (:durative-action drive_to_area
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (garage_unlocked)) (at start (truck_started)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_recreation_area)))
  )

  (:durative-action pay_fee
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (at_recreation_area)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fee_paid)))
  )

  (:durative-action drive_onto_trails
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (fee_paid)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (on_trails)))
  )
)