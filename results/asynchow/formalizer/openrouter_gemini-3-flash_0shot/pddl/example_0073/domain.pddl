(define (domain car_entry)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (clothes_on)
    (left_shoe_on)
    (right_shoe_on)
    (keys_grabbed)
    (house_exited)
  )

  (:durative-action put_on_clothes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_on)))
  )

  (:durative-action put_on_left_shoe
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (clothes_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (left_shoe_on)))
  )

  (:durative-action put_on_right_shoe
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (clothes_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (right_shoe_on)))
  )

  (:durative-action grab_car_keys
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (left_shoe_on)) (at start (right_shoe_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (keys_grabbed)))
  )

  (:durative-action exit_the_house
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (keys_grabbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (house_exited)))
  )
)