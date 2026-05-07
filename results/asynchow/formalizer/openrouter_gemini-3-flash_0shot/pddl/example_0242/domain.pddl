(define (domain calzone_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (oven_preheated)
    (dough_rolled)
    (filling_added)
    (dough_folded)
    (calzones_baked)
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated)))
  )

  (:durative-action roll_dough
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dough_rolled)))
  )

  (:durative-action add_filling
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (dough_rolled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (filling_added)))
  )

  (:durative-action fold_dough
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (filling_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dough_folded)))
  )

  (:durative-action bake_calzones
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (oven_preheated)) (at start (dough_folded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (calzones_baked)))
  )
)