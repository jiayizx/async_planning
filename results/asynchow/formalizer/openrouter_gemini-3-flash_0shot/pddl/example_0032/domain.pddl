(define (domain chicken_tenders)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (chicken_out)
    (oven_preheated)
    (pan_ready)
    (tinfoil_laid)
    (nuggets_arranged)
    (tenders_cooked)
  )

  (:durative-action take_chicken
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chicken_out)))
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated)))
  )

  (:durative-action get_pan
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (chicken_out)) (at start (oven_preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pan_ready)))
  )

  (:durative-action lay_tinfoil
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (pan_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tinfoil_laid)))
  )

  (:durative-action arrange_nuggets
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (tinfoil_laid)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (nuggets_arranged)))
  )

  (:durative-action cook_nuggets
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (nuggets_arranged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tenders_cooked)))
  )
)