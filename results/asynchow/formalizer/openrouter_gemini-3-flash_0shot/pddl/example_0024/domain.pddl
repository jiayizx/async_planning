(define (domain fishing_trip)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (regulations_known)
    (license_obtained)
    (equipment_bought)
    (streams_found)
    (arrived_at_stream)
    (equipment_unpacked)
    (fish_caught)
  )

  (:durative-action search_regulations
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (regulations_known)))
  )

  (:durative-action get_license
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (regulations_known)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (license_obtained)))
  )

  (:durative-action buy_equipment
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (license_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (equipment_bought)))
  )

  (:durative-action search_streams
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (license_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (streams_found)))
  )

  (:durative-action drive_to_streams
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (equipment_bought)) (at start (streams_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arrived_at_stream)))
  )

  (:durative-action unpack_equipment
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (arrived_at_stream)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (equipment_unpacked)))
  )

  (:durative-action cast_line
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (equipment_unpacked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fish_caught)))
  )
)