(define (domain blueberry_pie)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (oven_preheated)
    (pastry_prepared)
    (mixture_ready)
    (mixture_poured)
    (crust_topped)
    (crimped_sealed)
    (slits_cut)
    (pie_baked)
    (pie_finished)
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated)))
  )

  (:durative-action prepare_pastry
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pastry_prepared)))
  )

  (:durative-action mix_ingredients
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_ready)))
  )

  (:durative-action pour_mixture
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (pastry_prepared)) (at start (mixture_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_poured)))
  )

  (:durative-action top_crust
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (mixture_poured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (crust_topped)))
  )

  (:durative-action crimp_seal
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (crust_topped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (crimped_sealed)))
  )

  (:durative-action cut_slits
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (crust_topped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slits_cut)))
  )

  (:durative-action bake_pie
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (oven_preheated)) (at start (crimped_sealed)) (at start (slits_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pie_baked)))
  )

  (:durative-action finish
    :parameters (?s - step)
    :duration (= ?duration 0)
    :condition (and (at start (step_pending ?s)) (at start (pie_baked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pie_finished)))
  )
)