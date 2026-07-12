(define (domain rustic-cabin-painting)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_done ?s - step)
    (step1_pending ?s - step)
    (step2_pending ?s - step)
    (step3_pending ?s - step)
    (step4_pending ?s - step)
    (step5_pending ?s - step)
    (paper_taped)
    (protective_varnish_applied)
    (perspective_guides_sketched)
    (pencils_sharpened)
    (watercolor_washes_layered)
  )

  (:durative-action tape_watercolor_paper
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step1_pending ?s))
    :effect (and
      (at start (not (step1_pending ?s)))
      (at end (step_done ?s))
      (at end (paper_taped))
    )
  )

  (:durative-action apply_protective_varnish
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step2_pending ?s))
      (at start (paper_taped))
      (at start (watercolor_washes_layered))
    )
    :effect (and
      (at start (not (step2_pending ?s)))
      (at end (step_done ?s))
      (at end (protective_varnish_applied))
    )
  )

  (:durative-action sketch_perspective_guides
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step3_pending ?s))
      (at start (paper_taped))
    )
    :effect (and
      (at start (not (step3_pending ?s)))
      (at end (step_done ?s))
      (at end (perspective_guides_sketched))
    )
  )

  (:durative-action sharpen_graphite_pencils
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step4_pending ?s))
      (at start (paper_taped))
    )
    :effect (and
      (at start (not (step4_pending ?s)))
      (at end (step_done ?s))
      (at end (pencils_sharpened))
    )
  )

  (:durative-action layer_watercolor_washes
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step5_pending ?s))
      (at start (perspective_guides_sketched))
    )
    :effect (and
      (at start (not (step5_pending ?s)))
      (at end (step_done ?s))
      (at end (watercolor_washes_layered))
    )
  )
)