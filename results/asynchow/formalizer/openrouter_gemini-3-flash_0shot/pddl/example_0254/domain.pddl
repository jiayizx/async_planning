(define (domain snowball_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (snow_found)
    (core_formed)
    (layer_added)
    (snowball_reinforced)
    (snowball_refined)
    (target_found)
  )

  (:durative-action find_snow
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (snow_found)))
  )

  (:durative-action form_core
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (snow_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (core_formed)))
  )

  (:durative-action add_layer
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (core_formed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (layer_added)))
  )

  (:durative-action reinforce_snowball
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (layer_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (snowball_reinforced)))
  )

  (:durative-action refine_snowball
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (snowball_reinforced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (snowball_refined)))
  )

  (:durative-action find_target
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (target_found)))
  )
)