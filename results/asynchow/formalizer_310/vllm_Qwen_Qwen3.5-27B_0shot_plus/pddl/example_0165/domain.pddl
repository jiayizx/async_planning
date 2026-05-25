(define (domain rental_yield)
  (:requirements :durative-actions)
  
  (:predicates
    (income_totalled_pending)
    (income_totalled_done)
    (property_valued_pending)
    (property_valued_done)
    (yield_calculated_pending)
    (yield_calculated_done)
  )

  (:durative-action total_income
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (at start (income_totalled_pending))
    :effect (and (at start (not (income_totalled_pending)))
                 (at end (income_totalled_done)))
  )

  (:durative-action value_property
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (property_valued_pending))
    :effect (and (at start (not (property_valued_pending)))
                 (at end (property_valued_done)))
  )

  (:durative-action calculate_yield
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (yield_calculated_pending))
                    (at start (income_totalled_done))
                    (at start (property_valued_done)))
    :effect (and (at start (not (yield_calculated_pending)))
                 (at end (yield_calculated_done)))
  )
)
