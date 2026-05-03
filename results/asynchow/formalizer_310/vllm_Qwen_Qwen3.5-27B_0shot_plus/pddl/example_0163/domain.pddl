(define (domain room_setup)
  (:requirements :durative-actions)
  
  (:predicates
    (put_couch_pending)
    (put_couch_done)
    (put_coffee_table_pending)
    (put_coffee_table_done)
    (get_tv_pending)
    (get_tv_done)
    (put_waste_can_pending)
    (put_waste_can_done)
  )

  (:durative-action put_couch
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (put_couch_pending))
    :effect (and (at start (not (put_couch_pending))) (at end (put_couch_done)))
  )

  (:durative-action put_coffee_table
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (put_coffee_table_pending)) (at start (put_couch_done)))
    :effect (and (at start (not (put_coffee_table_pending))) (at end (put_coffee_table_done)))
  )

  (:durative-action get_tv
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (get_tv_pending))
    :effect (and (at start (not (get_tv_pending))) (at end (get_tv_done)))
  )

  (:durative-action put_waste_can
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (put_waste_can_pending)) (at start (put_couch_done)))
    :effect (and (at start (not (put_waste_can_pending))) (at end (put_waste_can_done)))
  )
)
