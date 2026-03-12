(define (problem annualize-quarterly-return-problem)
  (:domain annualize-quarterly-return)
  (:init
    (obtain_report_pending)
    (find_return_pending)
    (calc_periods_pending)
  )
  (:goal (and
    (obtain_report_done)
    (find_return_done)
    (calc_periods_done)
  ))
)
