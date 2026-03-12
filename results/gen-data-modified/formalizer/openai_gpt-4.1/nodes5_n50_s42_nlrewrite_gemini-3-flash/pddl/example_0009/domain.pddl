(define (domain go_play_neighbor)
  (:requirements :durative-actions)
  (:predicates
    (call_neighbors_parents_pending)
    (call_neighbors_parents_done)
    (gather_toys_pending)
    (gather_toys_done)
    (walk_across_street_pending)
    (walk_across_street_done)
    (ring_doorbell_pending)
    (ring_doorbell_done)
    (ask_own_parents_pending)
    (ask_own_parents_done)
  )

  (:durative-action do_call_neighbors_parents
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (call_neighbors_parents_pending)) (at start (ask_own_parents_done)))
    :effect (and (at start (not (call_neighbors_parents_pending))) (at end (call_neighbors_parents_done)))
  )

  (:durative-action do_gather_toys
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (gather_toys_pending))
    :effect (and (at start (not (gather_toys_pending))) (at end (gather_toys_done)))
  )

  (:durative-action do_walk_across_street
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (walk_across_street_pending)) (at start (gather_toys_done)))
    :effect (and (at start (not (walk_across_street_pending))) (at end (walk_across_street_done)))
  )

  (:durative-action do_ring_doorbell
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (ring_doorbell_pending)) (at start (call_neighbors_parents_done)) (at start (ask_own_parents_done)))
    :effect (and (at start (not (ring_doorbell_pending))) (at end (ring_doorbell_done)))
  )

  (:durative-action do_ask_own_parents
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (ask_own_parents_pending))
    :effect (and (at start (not (ask_own_parents_pending))) (at end (ask_own_parents_done)))
  )
)
