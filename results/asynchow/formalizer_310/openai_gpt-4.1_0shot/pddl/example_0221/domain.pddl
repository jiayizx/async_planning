(define (domain annualize-quarterly-return)
  (:requirements :durative-actions)
  (:predicates
    (obtain_report_pending)
    (obtain_report_done)
    (find_return_pending)
    (find_return_done)
    (calc_periods_pending)
    (calc_periods_done)
  )

  (:durative-action obtain_report
    :parameters ()
    :duration (= ?duration 604800) ; 1 week = 604800 seconds
    :condition (at start (obtain_report_pending))
    :effect (and
      (at start (not (obtain_report_pending)))
      (at end (obtain_report_done))
    )
  )

  (:durative-action find_return
    :parameters ()
    :duration (= ?duration 86400) ; 1 day = 86400 seconds
    :condition (and
      (at start (find_return_pending))
      (at start (obtain_report_done))
    )
    :effect (and
      (at start (not (find_return_pending)))
      (at end (find_return_done))
    )
  )

  (:durative-action calc_periods
    :parameters ()
    :duration (= ?duration 2592000) ; 1 month = 2592000 seconds
    :condition (at start (calc_periods_pending))
    :effect (and
      (at start (not (calc_periods_pending)))
      (at end (calc_periods_done))
    )
  )
)
