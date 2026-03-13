(define (problem wear-harem-pants-problem)
  (:domain wear-harem-pants)
  (:init
    (wear_crop_top_pending)
    (pick_top_pending)
    (tuck_in_shirt_pending)
  )
  (:goal (and
    (wear_crop_top_done)
    (pick_top_done)
    (tuck_in_shirt_done)
  ))
)
