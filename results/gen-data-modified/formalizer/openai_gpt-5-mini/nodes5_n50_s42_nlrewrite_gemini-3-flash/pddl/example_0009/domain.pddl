(define (domain go_play_neighbor)
  (:requirements :durative-actions)
  (:predicates
    (call_parents_pending)
    (call_parents_done)
    (gather_bag_pending)
    (gather_bag_done)
    (walk_across_pending)
    (walk_across_done)
    (ring_doorbell_pending)
    (ring_doorbell_done)
    (ask_parents_pending)
    (ask_parents_done)
  )

  (:durative-action call_parents
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (call_parents_pending)) (at start (ask_parents_done)))
    :effect (and (at start (not (call_parents_pending))) (at end (call_parents_done)))
  )

  (:durative-action gather_bag
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (gather_bag_pending))
    :effect (and (at start (not (gather_bag_pending))) (at end (gather_bag_done)))
  )

  (:durative-action walk_across
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (walk_across_pending)) (at start (gather_bag_done)))
    :effect (and (at start (not (walk_across_pending))) (at end (walk_across_done)))
  )

  (:durative-action ring_doorbell
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (ring_doorbell_pending)) (at start (call_parents_done)) (at start (ask_parents_done)))
    :effect (and (at start (not (ring_doorbell_pending))) (at end (ring_doorbell_done)))
  )

  (:durative-action ask_parents
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (ask_parents_pending))
    :effect (and (at start (not (ask_parents_pending))) (at end (ask_parents_done)))
  )
)
