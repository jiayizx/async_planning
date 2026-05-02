(define (problem animal-crossing-screenshot-problem)
  (:domain animal-crossing-screenshot)
  (:init
    (hold_l_pending)
    (hold_r_pending)
    (take_picture_pending)
  )
  (:goal (and
    (hold_l_done)
    (hold_r_done)
    (take_picture_done)
  ))
)
