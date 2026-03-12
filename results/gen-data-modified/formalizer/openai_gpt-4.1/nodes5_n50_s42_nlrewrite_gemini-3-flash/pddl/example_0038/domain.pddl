(define (domain milanesa)
  (:requirements :durative-actions)
  (:predicates
    (pound_meat_pending)
    (pound_meat_done)
    (whisk_eggs_pending)
    (whisk_eggs_done)
    (dip_meat_pending)
    (dip_meat_done)
    (prepare_breading_pending)
    (prepare_breading_done)
    (coat_and_fry_pending)
    (coat_and_fry_done)
  )

  (:durative-action pound_meat
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (pound_meat_pending))
    :effect (and (at start (not (pound_meat_pending))) (at end (pound_meat_done)))
  )

  (:durative-action whisk_eggs
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (whisk_eggs_pending))
    :effect (and (at start (not (whisk_eggs_pending))) (at end (whisk_eggs_done)))
  )

  (:durative-action dip_meat
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (dip_meat_pending)) (at start (whisk_eggs_done)))
    :effect (and (at start (not (dip_meat_pending))) (at end (dip_meat_done)))
  )

  (:durative-action prepare_breading
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (prepare_breading_pending)) (at start (pound_meat_done)))
    :effect (and (at start (not (prepare_breading_pending))) (at end (prepare_breading_done)))
  )

  (:durative-action coat_and_fry
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (coat_and_fry_pending)) (at start (prepare_breading_done)))
    :effect (and (at start (not (coat_and_fry_pending))) (at end (coat_and_fry_done)))
  )
)
