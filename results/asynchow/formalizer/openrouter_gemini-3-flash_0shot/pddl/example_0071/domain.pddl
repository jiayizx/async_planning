(define (domain purchase_soil)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (wallet_grabbed)
    (keys_grabbed)
    (house_exited)
    (in_car)
    (at_store)
  )

  (:durative-action grab_wallet
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wallet_grabbed)))
  )

  (:durative-action grab_keys
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (keys_grabbed)))
  )

  (:durative-action exit_house
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (wallet_grabbed)) (at start (keys_grabbed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (house_exited)))
  )

  (:durative-action get_in_car
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (house_exited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (in_car)))
  )

  (:durative-action drive_to_store
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (in_car)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_store)))
  )
)