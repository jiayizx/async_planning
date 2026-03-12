(define (domain hornet-identification)
  (:requirements :durative-actions)
  (:predicates
    (observe_object_pending)
    (observe_object_done)
    (look_for_nest_pending)
    (look_for_nest_done)
    (estimate_number_pending)
    (estimate_number_done)
  )

  (:durative-action observe_object
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (observe_object_pending)) (at start (look_for_nest_done)))
    :effect (and (at start (not (observe_object_pending))) (at end (observe_object_done)))
  )

  (:durative-action look_for_nest
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (look_for_nest_pending))
    :effect (and (at start (not (look_for_nest_pending))) (at end (look_for_nest_done)))
  )

  (:durative-action estimate_number
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (estimate_number_pending)) (at start (look_for_nest_done)))
    :effect (and (at start (not (estimate_number_pending))) (at end (estimate_number_done)))
  )
)
