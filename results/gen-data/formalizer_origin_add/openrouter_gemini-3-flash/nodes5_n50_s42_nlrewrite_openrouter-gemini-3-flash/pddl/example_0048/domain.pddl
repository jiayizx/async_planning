(define (domain corn_soup_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (veg_prepped)
    (onions_garlic_sauteed)
    (corn_shucked)
    (soup_simmered)
    (soup_blended)
  )

  (:durative-action prep_vegetables
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (veg_prepped)))
  )

  (:durative-action saute_onions_garlic
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (veg_prepped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (onions_garlic_sauteed)))
  )

  (:durative-action shuck_corn
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (corn_shucked)))
  )

  (:durative-action simmer_soup
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (onions_garlic_sauteed)) (at start (veg_prepped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soup_simmered)))
  )

  (:durative-action blend_soup
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (soup_simmered)) (at start (corn_shucked)) (at start (onions_garlic_sauteed)) (at start (veg_prepped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soup_blended)))
  )
)