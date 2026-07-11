(define (problem lacrosse_tryouts_problem)
  (:domain lacrosse_tryouts)
  
  (:init
    (find_out_pending)
    (practice_pending)
    (improve_pending)
    (stay_after_pending)
    (go_to_pending)
  )

  (:goal (and
    (find_out_done)
    (practice_done)
    (improve_done)
    (stay_after_done)
    (go_to_done)
  ))
)
