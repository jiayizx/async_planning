(define (domain solid_perfume_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (measured)
    (melted)
    (poured)
    (labeled)
    (labels_designed)
  )

  (:durative-action measure_ingredients
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (measured)))
  )

  (:durative-action melt_wax_oil
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (melted)))
  )

  (:durative-action pour_mixture
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (melted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (poured)))
  )

  (:durative-action design_labels
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (labels_designed)))
  )

  (:durative-action apply_labels
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (poured)) (at start (labels_designed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (labeled)))
  )
)