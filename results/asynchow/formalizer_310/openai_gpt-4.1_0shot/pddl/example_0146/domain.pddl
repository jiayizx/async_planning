(define (domain wear-harem-pants)
  (:requirements :durative-actions)
  (:predicates
    (wear_crop_top_pending)
    (wear_crop_top_done)
    (pick_top_pending)
    (pick_top_done)
    (tuck_in_shirt_pending)
    (tuck_in_shirt_done)
  )

  (:durative-action wear_crop_top
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (wear_crop_top_pending))
    :effect (and (at start (not (wear_crop_top_pending))) (at end (wear_crop_top_done)))
  )

  (:durative-action pick_top
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (pick_top_pending))
    :effect (and (at start (not (pick_top_pending))) (at end (pick_top_done)))
  )

  (:durative-action tuck_in_shirt
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (tuck_in_shirt_pending)) (at start (pick_top_done)))
    :effect (and (at start (not (tuck_in_shirt_pending))) (at end (tuck_in_shirt_done)))
  )
)
