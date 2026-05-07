(define (domain build_generator)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (plate_fabricated)
    (pulleys_mounted)
    (belts_run)
    (tank_mounted)
    (gas_reconnected)
  )

  (:durative-action fabricate_mounting_plate
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plate_fabricated)))
  )

  (:durative-action mount_pulleys
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pulleys_mounted)))
  )

  (:durative-action run_belts
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (pulleys_mounted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (belts_run)))
  )

  (:durative-action mount_gas_tank
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (plate_fabricated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tank_mounted)))
  )

  (:durative-action reconnect_gasoline
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (tank_mounted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gas_reconnected)))
  )
)