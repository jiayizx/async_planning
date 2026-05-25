(define (problem do_something_different_problem)
  (:domain do_something_different)
  
  (:init
    (consider_pending)
    (brainstorm_pending)
    (write_pending)
    (see_pending)
    (pick_pending)
  )

  (:goal (and
    (consider_done)
    (brainstorm_done)
    (write_done)
    (see_done)
    (pick_done)
  ))
)
