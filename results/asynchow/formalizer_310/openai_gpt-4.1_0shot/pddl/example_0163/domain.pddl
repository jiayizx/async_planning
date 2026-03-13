(define (domain make-room-look-apartment)
  (:requirements :durative-actions)
  (:predicates
    (couch_pending)
    (couch_done)
    (coffee_table_pending)
    (coffee_table_done)
    (tv_pending)
    (tv_done)
    (waste_can_pending)
    (waste_can_done)
  )

  (:durative-action put_couch
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (couch_pending))
    :effect (and (at start (not (couch_pending))) (at end (couch_done)))
  )

  (:durative-action put_coffee_table
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (coffee_table_pending)) (at start (couch_done)))
    :effect (and (at start (not (coffee_table_pending))) (at end (coffee_table_done)))
  )

  (:durative-action get_tv
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (tv_pending))
    :effect (and (at start (not (tv_pending))) (at end (tv_done)))
  )

  (:durative-action put_waste_can
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (waste_can_pending)) (at start (couch_done)))
    :effect (and (at start (not (waste_can_pending))) (at end (waste_can_done)))
  )
)
