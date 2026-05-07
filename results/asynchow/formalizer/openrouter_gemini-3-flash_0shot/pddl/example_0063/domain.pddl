(define (domain breakfast_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pan_on_stove)
    (ingredients_ready)
    (butter_in_pan)
    (stove_on)
    (egg_added)
    (egg_cooked)
    (breakfast_enjoyed)
  )

  (:durative-action put_pan_on_stove
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pan_on_stove)))
  )

  (:durative-action take_ingredients_out
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_ready)))
  )

  (:durative-action put_butter_in_pan
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (pan_on_stove)) (at start (ingredients_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_in_pan)))
  )

  (:durative-action turn_stove_on
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (butter_in_pan)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stove_on)))
  )

  (:durative-action add_egg_to_pan
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (stove_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (egg_added)))
  )

  (:durative-action cook_egg
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (egg_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (egg_cooked)))
  )

  (:durative-action serve_and_enjoy
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (egg_cooked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (breakfast_enjoyed)))
  )
)