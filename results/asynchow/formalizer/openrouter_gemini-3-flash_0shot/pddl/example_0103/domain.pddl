(define (domain restaurant_search)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (device_held)
    (search_completed)
    (options_narrowed)
    (menus_reviewed)
    (ratings_reviewed)
    (pricing_reviewed)
  )

  (:durative-action pick_up_device
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (device_held)))
  )

  (:durative-action search_nearby
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (device_held)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (search_completed)))
  )

  (:durative-action narrow_options
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (search_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (options_narrowed)))
  )

  (:durative-action look_at_menus
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (options_narrowed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (menus_reviewed)))
  )

  (:durative-action look_at_ratings
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (options_narrowed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ratings_reviewed)))
  )

  (:durative-action look_at_pricing
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (menus_reviewed)) (at start (ratings_reviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pricing_reviewed)))
  )
)