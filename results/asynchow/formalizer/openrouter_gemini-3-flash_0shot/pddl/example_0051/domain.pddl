(define (domain fire_building)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (matches_found)
    (wood_found)
    (wood_placed)
    (newspaper_placed)
    (fire_built)
  )

  (:durative-action find_matches
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (matches_found)))
  )

  (:durative-action find_wood
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wood_found)))
  )

  (:durative-action place_wood
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (wood_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wood_placed)))
  )

  (:durative-action place_newspaper
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (wood_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (newspaper_placed)))
  )

  (:durative-action ignite_fire
    :parameters (?s - step)
    :duration (= ?duration 780)
    :condition (and (at start (step_pending ?s)) (at start (matches_found)) (at start (newspaper_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fire_built)))
  )
)