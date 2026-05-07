(define (domain cabin_painting)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (paper_taped)
    (horizon_sketched)
    (pencils_sharpened)
    (washes_layered)
    (varnish_applied)
  )

  (:durative-action tape_paper
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paper_taped)))
  )

  (:durative-action sketch_horizon
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (paper_taped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (horizon_sketched)))
  )

  (:durative-action sharpen_pencils
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (paper_taped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pencils_sharpened)))
  )

  (:durative-action layer_washes
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (horizon_sketched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (washes_layered)))
  )

  (:durative-action apply_varnish
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (washes_layered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (varnish_applied)))
  )
)