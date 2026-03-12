(define (domain period_home_alone)
  (:requirements :durative-actions)
  (:predicates
    (look_under_sink_pending)
    (look_under_sink_done)
    (look_in_linen_closet_pending)
    (look_in_linen_closet_done)
    (ask_neighbor_pending)
    (ask_neighbor_done)
    (go_to_store_pending)
    (go_to_store_done)
    (use_sanitary_pad_pending)
    (use_sanitary_pad_done)
  )

  (:durative-action look_under_sink
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (look_under_sink_pending))
    :effect (and (at start (not (look_under_sink_pending))) (at end (look_under_sink_done)))
  )

  (:durative-action look_in_linen_closet
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (look_in_linen_closet_pending))
    :effect (and (at start (not (look_in_linen_closet_pending))) (at end (look_in_linen_closet_done)))
  )

  (:durative-action ask_neighbor
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (ask_neighbor_pending))
    :effect (and (at start (not (ask_neighbor_pending))) (at end (ask_neighbor_done)))
  )

  (:durative-action go_to_store
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (go_to_store_pending))
    :effect (and (at start (not (go_to_store_pending))) (at end (go_to_store_done)))
  )

  (:durative-action use_sanitary_pad
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (use_sanitary_pad_pending))
      (at start (look_under_sink_done))
      (at start (look_in_linen_closet_done))
      (at start (ask_neighbor_done))
      (at start (go_to_store_done))
    )
    :effect (and (at start (not (use_sanitary_pad_pending))) (at end (use_sanitary_pad_done)))
  )
)
