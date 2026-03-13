(define (domain exfoliate-eyebrows)
  (:requirements :durative-actions)
  (:predicates
    (sanitize_toothbrush_pending)
    (sanitize_toothbrush_done)
    (apply_cleanser_pending)
    (apply_cleanser_done)
    (rub_brush_pending)
    (rub_brush_done)
    (rinse_brow_pending)
    (rinse_brow_done)
  )

  (:durative-action sanitize_toothbrush
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (sanitize_toothbrush_pending))
    :effect (and
      (at start (not (sanitize_toothbrush_pending)))
      (at end (sanitize_toothbrush_done))
    )
  )

  (:durative-action apply_cleanser
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (apply_cleanser_pending))
      (at start (sanitize_toothbrush_done))
    )
    :effect (and
      (at start (not (apply_cleanser_pending)))
      (at end (apply_cleanser_done))
    )
  )

  (:durative-action rub_brush
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (rub_brush_pending))
      (at start (apply_cleanser_done))
      (at start (rinse_brow_done))
    )
    :effect (and
      (at start (not (rub_brush_pending)))
      (at end (rub_brush_done))
    )
  )

  (:durative-action rinse_brow
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (rinse_brow_pending))
    :effect (and
      (at start (not (rinse_brow_pending)))
      (at end (rinse_brow_done))
    )
  )
)
