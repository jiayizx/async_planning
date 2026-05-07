(define (domain put_on_left_sock)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (sock_grabbed)
    (seated)
    (foot_raised)
    (sock_on_toes)
    (sock_fully_on)
  )

  (:durative-action grab_sock
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sock_grabbed)))
  )

  (:durative-action sit_down
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seated)))
  )

  (:durative-action raise_foot
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (and (at start (step_pending ?s)) (at start (sock_grabbed)) (at start (seated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (foot_raised)))
  )

  (:durative-action pull_over_toes
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (and (at start (step_pending ?s)) (at start (foot_raised)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sock_on_toes)))
  )

  (:durative-action pull_backwards
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (and (at start (step_pending ?s)) (at start (sock_on_toes)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sock_fully_on)))
  )
)