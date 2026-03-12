(define (domain fruit-punch)
  (:requirements :durative-actions)
  (:predicates
    (wash_and_slice_pending)
    (wash_and_slice_done)
    (stir_pending)
    (stir_done)
    (chill_juices_pending)
    (chill_juices_done)
    (macerate_pending)
    (macerate_done)
    (add_ice_pending)
    (add_ice_done)
  )

  (:durative-action wash_and_slice
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (wash_and_slice_pending))
    :effect (and (at start (not (wash_and_slice_pending))) (at end (wash_and_slice_done)))
  )

  (:durative-action stir
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (stir_pending)) (at start (chill_juices_done)))
    :effect (and (at start (not (stir_pending))) (at end (stir_done)))
  )

  (:durative-action chill_juices
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (chill_juices_pending))
    :effect (and (at start (not (chill_juices_pending))) (at end (chill_juices_done)))
  )

  (:durative-action macerate
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (macerate_pending)) (at start (wash_and_slice_done)))
    :effect (and (at start (not (macerate_pending))) (at end (macerate_done)))
  )

  (:durative-action add_ice
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (add_ice_pending)) (at start (macerate_done)))
    :effect (and (at start (not (add_ice_pending))) (at end (add_ice_done)))
  )
)
