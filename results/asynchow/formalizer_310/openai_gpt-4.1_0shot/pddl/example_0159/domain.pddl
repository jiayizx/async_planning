(define (domain dress_audition)
  (:requirements :durative-actions)
  (:predicates
    (wear_comfortable_clothes_pending)
    (wear_comfortable_clothes_done)
    (slip_on_dance_shoes_pending)
    (slip_on_dance_shoes_done)
    (wear_hair_up_pending)
    (wear_hair_up_done)
  )

  (:durative-action wear_comfortable_clothes
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (wear_comfortable_clothes_pending))
    :effect (and
      (at start (not (wear_comfortable_clothes_pending)))
      (at end (wear_comfortable_clothes_done))
    )
  )

  (:durative-action slip_on_dance_shoes
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (slip_on_dance_shoes_pending))
      (at start (wear_comfortable_clothes_done))
    )
    :effect (and
      (at start (not (slip_on_dance_shoes_pending)))
      (at end (slip_on_dance_shoes_done))
    )
  )

  (:durative-action wear_hair_up
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (wear_hair_up_pending))
    :effect (and
      (at start (not (wear_hair_up_pending)))
      (at end (wear_hair_up_done))
    )
  )
)
