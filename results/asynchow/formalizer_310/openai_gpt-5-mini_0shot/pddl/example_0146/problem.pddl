(define (problem wear_harem_pants_prob)
  (:domain wear_harem_pants)
  (:init
    (wear_crop_top_pending)
    (pick_top_pending)
    (tuck_shirt_pending)
  )
  (:goal (and
    (wear_crop_top_done)
    (pick_top_done)
    (tuck_shirt_done)
  ))
)
