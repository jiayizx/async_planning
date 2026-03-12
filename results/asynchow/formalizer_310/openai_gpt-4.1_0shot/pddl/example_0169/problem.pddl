(define (problem overcome-fear-reading-problem)
  (:domain overcome-fear-reading)
  (:init
    (practice_pending)
    (calm_pending)
    (move_past_pending)
  )
  (:goal (and
    (practice_done)
    (calm_done)
    (move_past_done)
  ))
)
