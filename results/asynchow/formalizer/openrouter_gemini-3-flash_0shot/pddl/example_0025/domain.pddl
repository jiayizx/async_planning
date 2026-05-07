(define (domain cave_diving)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (gear_purchased)
    (water_found)
    (gear_on)
    (dived)
    (caves_entered)
    (caves_explored)
    (returned_to_surface)
  )

  (:durative-action purchase_gear
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gear_purchased)))
  )

  (:durative-action find_water
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_found)))
  )

  (:durative-action put_gear_on
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (gear_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gear_on)))
  )

  (:durative-action dive_into_water
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (water_found)) (at start (gear_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dived)))
  )

  (:durative-action enter_caves
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (dived)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (caves_entered)))
  )

  (:durative-action explore_caves
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (caves_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (caves_explored)))
  )

  (:durative-action return_to_surface
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (caves_explored)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (returned_to_surface)))
  )
)