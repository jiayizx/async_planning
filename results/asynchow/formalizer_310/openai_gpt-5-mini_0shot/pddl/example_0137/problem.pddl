(define (problem identify-hornet-problem)
  (:domain identify-hornet)
  (:init
    (observe_paper_pending)
    (look_nest_pending)
    (estimate_number_pending)
  )
  (:goal (and
    (observe_paper_done)
    (look_nest_done)
    (estimate_number_done)
  ))
)
