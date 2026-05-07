(define (domain house_departure)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shoes_on)
    (door_locked)
    (keys_grabbed)
    (garage_open)
    (safety_checked)
  )

  (:durative-action check_stove_lights
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (safety_checked)))
  )

  (:durative-action grab_keys
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (safety_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (keys_grabbed)))
  )

  (:durative-action put_on_shoes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (keys_grabbed)) (at start (safety_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_on)))
  )

  (:durative-action open_garage
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (keys_grabbed)) (at start (safety_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garage_open)))
  )

  (:durative-action lock_door
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (shoes_on)) (at start (keys_grabbed)) (at start (safety_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (door_locked)))
  )
)