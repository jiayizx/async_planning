(define (problem minimalist_living_problem)
  (:domain minimalist_living)
  
  (:init
    (discuss_changes_pending)
    (consider_moving_pending)
    (think_carless_pending)
    (clear_furniture_pending)
  )

  (:goal (and
    (discuss_changes_done)
    (consider_moving_done)
    (think_carless_done)
    (clear_furniture_done)
  ))
)
