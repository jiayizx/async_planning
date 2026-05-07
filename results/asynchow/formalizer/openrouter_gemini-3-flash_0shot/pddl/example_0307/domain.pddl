(define (domain aloe_vera_processing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (edges_removed)
    (segments_cut)
    (rind_removed)
    (base_prepared)
    (sunburn_treated)
    (makeup_removed)
    (acne_fought)
    (mouth_cleaned)
    (hair_revived)
  )

  (:durative-action cut_segments
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (segments_cut)))
  )

  (:durative-action remove_edges
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (segments_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (edges_removed)))
  )

  (:durative-action remove_rind
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (edges_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rind_removed)))
  )

  (:durative-action prepare_base
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (base_prepared)))
  )

  (:durative-action treat_sunburn
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (rind_removed)) (at start (base_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunburn_treated)))
  )

  (:durative-action remove_makeup
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (rind_removed)) (at start (base_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (makeup_removed)))
  )

  (:durative-action fight_acne
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (rind_removed)) (at start (base_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (acne_fought)))
  )

  (:durative-action clean_mouth
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (rind_removed)) (at start (base_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mouth_cleaned)))
  )

  (:durative-action revive_hair
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (rind_removed)) (at start (base_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hair_revived)))
  )
)