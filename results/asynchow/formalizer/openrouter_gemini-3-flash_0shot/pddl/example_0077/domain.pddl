(define (domain put_on_shoes)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (at_closet)
    (shoes_found)
    (socks_obtained)
    (right_sock_on)
    (left_sock_on)
  )

  (:durative-action walk_to_closet
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_closet)))
  )

  (:durative-action find_shoes
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (at_closet)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_found)))
  )

  (:durative-action get_socks
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (shoes_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (socks_obtained)))
  )

  (:durative-action put_on_right_sock
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (socks_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (right_sock_on)))
  )

  (:durative-action put_on_left_sock
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (socks_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (left_sock_on)))
  )
)