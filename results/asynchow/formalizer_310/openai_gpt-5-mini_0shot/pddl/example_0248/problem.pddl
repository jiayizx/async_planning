(define (problem make_guessing_box)
  (:domain guessing_box)
  (:init
    (find_box_pending)
    (cut_rectangle_pending)
    (cut_circle_pending)
  )
  (:goal (and
    (find_box_done)
    (cut_rectangle_done)
    (cut_circle_done)
  ))
)
