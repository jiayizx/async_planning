(define (domain garnet_cosplay)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (wig_obtained)
    (sewing_prepared)
    (leggings_obtained)
    (shirt_recreated)
    (gloves_obtained)
    (shoes_obtained)
    (shades_obtained)
  )

  (:durative-action get_wig
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wig_obtained)))
  )

  (:durative-action prepare_sewing
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sewing_prepared)))
  )

  (:durative-action get_leggings
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leggings_obtained)))
  )

  (:durative-action recreate_shirt
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (sewing_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shirt_recreated)))
  )

  (:durative-action get_gloves
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gloves_obtained)))
  )

  (:durative-action get_shoes
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_obtained)))
  )

  (:durative-action get_shades
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shades_obtained)))
  )
)