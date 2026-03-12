(define (domain annualize_quarterly_return)
  (:requirements :durative-actions)
  (:predicates
    (obtain_report_pending)
    (obtain_report_done)
    (find_rate_pending)
    (find_rate_done)
    (calc_periods_pending)
    (calc_periods_done)
  )

  ;; Step 1: Obtain the investment's quarterly report. 1 week = 7 * 86400 = 604800 seconds
  (:durative-action do_obtain_report
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (obtain_report_pending))
    :effect (and (at start (not (obtain_report_pending))) (at end (obtain_report_done)))
  )

  ;; Step 2: Find the quarterly rate of return. 86400 seconds (1 day)
  ;; Must not start until Step 1 is done (precedence constraint enforced)
  (:durative-action do_find_quarterly_rate
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (find_rate_pending)) (at start (obtain_report_done)))
    :effect (and (at start (not (find_rate_pending))) (at end (find_rate_done)))
  )

  ;; Step 3: Calculate how many time periods there are in a year. 1 month.
  ;; Here we use the conventional 30-day month: 30 * 86400 = 2592000 seconds.
  ;; This step has no predecessors and can run in parallel with steps 1 and 2.
  (:durative-action do_calc_periods_in_year
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (at start (calc_periods_pending))
    :effect (and (at start (not (calc_periods_pending))) (at end (calc_periods_done)))
  )
)
