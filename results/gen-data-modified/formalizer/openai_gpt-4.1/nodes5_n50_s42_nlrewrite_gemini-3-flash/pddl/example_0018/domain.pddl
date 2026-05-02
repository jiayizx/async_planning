(define (domain make_orange)
  (:requirements :durative-actions)
  (:predicates
    (purchase_red_pending)
    (purchase_red_done)
    (clean_palette_pending)
    (clean_palette_done)
    (squeeze_yellow_pending)
    (squeeze_yellow_done)
    (blend_paints_pending)
    (blend_paints_done)
    (research_shade_pending)
    (research_shade_done)
  )

  (:durative-action purchase_red
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (purchase_red_pending)) (at start (research_shade_done)))
    :effect (and (at start (not (purchase_red_pending))) (at end (purchase_red_done)))
  )

  (:durative-action clean_palette
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (clean_palette_pending))
    :effect (and (at start (not (clean_palette_pending))) (at end (clean_palette_done)))
  )

  (:durative-action squeeze_yellow
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (squeeze_yellow_pending)) (at start (clean_palette_done)))
    :effect (and (at start (not (squeeze_yellow_pending))) (at end (squeeze_yellow_done)))
  )

  (:durative-action blend_paints
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (blend_paints_pending)) (at start (purchase_red_done)) (at start (squeeze_yellow_done)))
    :effect (and (at start (not (blend_paints_pending))) (at end (blend_paints_done)))
  )

  (:durative-action research_shade
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (research_shade_pending))
    :effect (and (at start (not (research_shade_pending))) (at end (research_shade_done)))
  )
)
