(define (problem clean_silk_tie_problem)
  (:domain clean_silk_tie)
  (:init
    (spray_pending)
    (handwash_pending)
    (tuck_pending)
  )
  (:goal (and
    (spray_done)
    (handwash_done)
    (tuck_done)
  ))
)
