(define (domain house_exit)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (keys_grabbed)
    (shoes_on)
    (jacket_on)
    (door_passed)
    (door_locked)
  )

  (:durative-action grab_keys
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (keys_grabbed)))
  )

  (:durative-action put_on_shoes
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_on)))
  )

  (:durative-action put_on_jacket
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jacket_on)))
  )

  (:durative-action go_through_door
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (and 
      (at start (step_pending ?s))
      (at start (keys_grabbed))
      (at start (shoes_on))
      (at start (jacket_on))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (door_passed)))
  )

  (:durative-action lock_door
    :parameters (?s - step)
    :duration (= ?duration 35)
    :condition (and 
      (at start (step_pending ?s))
      (at start (door_passed))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (door_locked)))
  )
)