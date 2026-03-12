(define (problem hornet-identification-problem)
  (:domain hornet-identification)
  (:init
    (observe_object_pending)
    (look_for_nest_pending)
    (estimate_number_pending)
  )
  (:goal (and
    (observe_object_done)
    (look_for_nest_done)
    (estimate_number_done)
  ))
)
