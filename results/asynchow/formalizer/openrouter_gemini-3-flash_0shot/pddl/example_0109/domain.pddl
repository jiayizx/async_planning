(define (domain field_trip_jamestown)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (permission_obtained)
    (slips_sent)
    (driver_scheduled)
    (schedule_created)
    (groups_organized)
    (bus_boarded)
    (arrived_at_jamestown)
  )

  (:durative-action get_school_permission
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (permission_obtained)))
  )

  (:durative-action send_permission_slips
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (permission_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slips_sent)))
  )

  (:durative-action schedule_driver
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (permission_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (driver_scheduled)))
  )

  (:durative-action create_schedule
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (permission_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (schedule_created)))
  )

  (:durative-action organize_groups
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (slips_sent)) (at start (driver_scheduled)) (at start (schedule_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (groups_organized)))
  )

  (:durative-action board_bus
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (groups_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bus_boarded)))
  )

  (:durative-action head_to_jamestown
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (bus_boarded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arrived_at_jamestown)))
  )
)