(define (domain getting_in_car)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shirt_on)
    (pants_on)
    (right_sock_on)
    (left_sock_on)
    (right_shoe_on)
    (left_shoe_on)
    (keys_got)
  )

  (:durative-action do_put_on_shirt
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shirt_on))
    )
  )

  (:durative-action do_put_on_pants
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (shirt_on)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pants_on))
    )
  )

  (:durative-action do_put_on_right_sock
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (pants_on)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (right_sock_on))
    )
  )

  (:durative-action do_put_on_left_sock
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (pants_on)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (left_sock_on))
    )
  )

  (:durative-action do_put_on_right_shoe
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (and (at start (step_pending ?s)) (at start (right_sock_on)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (right_shoe_on))
    )
  )

  (:durative-action do_put_on_left_shoe
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (and (at start (step_pending ?s)) (at start (left_sock_on)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (left_shoe_on))
    )
  )

  (:durative-action do_get_keys
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (right_shoe_on)) (at start (left_shoe_on)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (keys_got))
    )
  )
)
