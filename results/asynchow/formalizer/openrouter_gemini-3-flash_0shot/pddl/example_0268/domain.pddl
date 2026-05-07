(define (domain signal_flare_production)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (mixture_prepared)
    (stove_lit)
    (mixture_heated)
    (mixture_cooled)
    (flare_shaped)
    (flare_wrapped)
  )

  (:durative-action mix_ingredients
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_prepared)))
  )

  (:durative-action light_stove
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stove_lit)))
  )

  (:durative-action heat_mixture
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (mixture_prepared)) (at start (stove_lit)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_heated)))
  )

  (:durative-action cool_mixture
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (mixture_heated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_cooled)))
  )

  (:durative-action shape_flare
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (mixture_cooled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flare_shaped)))
  )

  (:durative-action wrap_flare
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (flare_shaped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flare_wrapped)))
  )
)