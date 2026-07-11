(define (domain annualize_quarterly_return)
  (:requirements :durative-actions)
  
  (:predicates
    (obtain_report_pending)
    (obtain_report_done)
    (find_rate_pending)
    (find_rate_done)
    (calculate_periods_pending)
    (calculate_periods_done)
  )

  (:durative-action obtain_report
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (obtain_report_pending))
    :effect (and (at start (not (obtain_report_pending)))
                 (at end (obtain_report_done)))
  )

  (:durative-action find_rate
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (find_rate_pending))
                    (at start (obtain_report_done)))
    :effect (and (at start (not (find_rate_pending)))
                 (at end (find_rate_done)))
  )

  (:durative-action calculate_periods
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (at start (calculate_periods_pending))
    :effect (and (at start (not (calculate_periods_pending)))
                 (at end (calculate_periods_done)))
  )
)
