(define (domain clothes_putting_on)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (drawers_opened)
    (shirt_obtained)
    (socks_obtained)
    (pants_obtained)
    (shirt_on)
    (socks_on)
    (pants_on)
  )

  (:durative-action open_drawers
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (drawers_opened)))
  )

  (:durative-action take_out_shirt
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (drawers_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shirt_obtained)))
  )

  (:durative-action take_out_socks
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (drawers_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (socks_obtained)))
  )

  (:durative-action take_out_pants
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (drawers_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pants_obtained)))
  )

  (:durative-action put_on_shirt
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (shirt_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shirt_on)))
  )

  (:durative-action put_on_socks
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (socks_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (socks_on)))
  )

  (:durative-action put_on_pants
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (pants_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pants_on)))
  )
)