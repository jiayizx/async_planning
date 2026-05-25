(define (domain leave-house)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shoes_on_done)
    (outside_done)
    (keys_taken)
    (garage_opened)
    (checks_done)
    (left_house)
  )

  (:durative-action do_step1_put_on_shoes_and_tie_laces
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (keys_taken)) (at start (checks_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_on_done)))
  )

  (:durative-action do_step2_walk_out_front_door_and_lock
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (shoes_on_done)) (at start (keys_taken)) (at start (checks_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outside_done)) (at end (left_house)))
  )

  (:durative-action do_step3_grab_car_keys_from_hook
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (checks_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (keys_taken)))
  )

  (:durative-action do_step4_open_garage_door_with_button
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (keys_taken)) (at start (checks_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garage_opened)))
  )

  (:durative-action do_step5_check_stove_and_lights_off
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (checks_done)))
  )
)
