(define (domain solid-perfume)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (mixture_poured)
    (ingredients_measured)
    (wax_oil_melted)
    (labels_printed)
    (labels_applied)
  )

  (:durative-action pour_mixture
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (wax_oil_melted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mixture_poured))
    )
  )

  (:durative-action measure_ingredients
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ingredients_measured))
    )
  )

  (:durative-action melt_wax_and_oil
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (ingredients_measured))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wax_oil_melted))
    )
  )

  (:durative-action design_and_print_labels
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (labels_printed))
    )
  )

  (:durative-action apply_labels
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (labels_printed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (labels_applied))
    )
  )
)