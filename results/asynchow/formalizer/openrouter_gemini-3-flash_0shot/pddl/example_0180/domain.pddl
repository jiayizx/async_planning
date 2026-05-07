(define (domain cook_carrots)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (carrots_rinsed)
    (water_boiled)
    (carrots_cooked)
    (carrots_plated)
  )

  (:durative-action rinse_carrots
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (carrots_rinsed)))
  )

  (:durative-action boil_water
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_boiled)))
  )

  (:durative-action cook_carrots
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (carrots_rinsed)) (at start (water_boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (carrots_cooked)))
  )

  (:durative-action plate_carrots
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (carrots_cooked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (carrots_plated)))
  )
)