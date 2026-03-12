(define (problem reference_check_instance)
  (:domain reference_check)
  (:init
    (introduce_pending)
    (emphasize_pending)
    (highlight_pending)
  )
  (:goal (and
    (introduce_done)
    (emphasize_done)
    (highlight_done)
  ))
)
