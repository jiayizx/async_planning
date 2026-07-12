(define (domain leave-house-get-car)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1_type step2_type step3_type step4_type step5_type - step
  )

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shoes_on_and_tied)
    (front_door_locked)
    (car_keys_obtained)
    (garage_door_open)
    (stove_and_lights_checked)
    (departure_prepared)
  )

  (:durative-action put_on_shoes_and_tie_laces
    :parameters (?s - step1_type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (car_keys_obtained))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shoes_on_and_tied))
    )
  )

  (:durative-action walk_out_and_lock_front_door
    :parameters (?s - step2_type)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (shoes_on_and_tied))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (front_door_locked))
      (at end (departure_prepared))
    )
  )

  (:durative-action grab_car_keys
    :parameters (?s - step3_type)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (stove_and_lights_checked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (car_keys_obtained))
    )
  )

  (:durative-action open_garage_door
    :parameters (?s - step4_type)
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending ?s))
      (at start (car_keys_obtained))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (garage_door_open))
    )
  )

  (:durative-action check_stove_and_lights
    :parameters (?s - step5_type)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stove_and_lights_checked))
    )
  )
)