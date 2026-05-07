(define (problem annualize_quarterly_return_problem)
  (:domain annualize_quarterly_return)
  
  (:init
    (obtain_report_pending)
    (find_rate_pending)
    (calculate_periods_pending)
  )

  (:goal (and
    (obtain_report_done)
    (find_rate_done)
    (calculate_periods_done)
  ))
)
