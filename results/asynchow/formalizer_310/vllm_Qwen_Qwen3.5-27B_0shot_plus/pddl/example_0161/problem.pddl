(define (problem nail_polish_task)
  (:domain nail_polish_maintenance)
  
  (:init
    (add_thinner_pending)
    (roll_bottle_pending)
    (check_results_pending)
    (try_shaker_pending)
  )

  (:goal (and
    (add_thinner_done)
    (roll_bottle_done)
    (check_results_done)
    (try_shaker_done)
  ))
)
