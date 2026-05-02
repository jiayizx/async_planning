(define (problem annualize_quarterly_return_prob)
  (:domain annualize_quarterly_return)
  (:init
    (obtain_report_pending)
    (find_rate_pending)
    (calc_periods_pending)
  )
  (:goal (and
    (obtain_report_done)
    (find_rate_done)
    (calc_periods_done)
  ))
)
