(define (domain caramelized_toast)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (margarine_ready)
    (mixture_mixed)
    (bread_spread)
    (oven_set)
    (toast_enjoyed)
  )

  (:durative-action step1_scoop_margarine
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (margarine_ready)))
  )

  (:durative-action step2_mash_ingredients
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (margarine_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_mixed)))
  )

  (:durative-action step3_spread_mixture
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (mixture_mixed)) (at start (oven_set)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bread_spread)))
  )

  (:durative-action step4_set_oven
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_set)))
  )

  (:durative-action step5_enjoy_toast
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (bread_spread)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (toast_enjoyed)))
  )
)