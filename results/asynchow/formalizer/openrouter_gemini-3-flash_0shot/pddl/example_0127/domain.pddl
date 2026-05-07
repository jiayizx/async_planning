(define (domain car_entry)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (wallet_grabbed)
    (keys_grabbed)
    (garage_exited)
    (car_unlocked)
    (money_checked)
  )

  (:durative-action grab_wallet
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wallet_grabbed)))
  )

  (:durative-action grab_keys
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (keys_grabbed)))
  )

  (:durative-action check_money
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (wallet_grabbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (money_checked)))
  )

  (:durative-action exit_garage
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (keys_grabbed)) (at start (money_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garage_exited)))
  )

  (:durative-action unlock_car
    :parameters (?s - step)
    :duration (= ?duration 35)
    :condition (and (at start (step_pending ?s)) (at start (garage_exited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (car_unlocked)))
  )
)