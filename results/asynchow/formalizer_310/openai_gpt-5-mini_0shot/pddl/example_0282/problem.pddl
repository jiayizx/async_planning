(define (problem whelp_large_breed_problem)
  (:domain whelp_large_breed)
  (:init
    (prepare_pending)
    (line_pending)
    (lamp_pending)
  )
  (:goal (and
    (prepare_done)
    (line_done)
    (lamp_done)
  ))
)
