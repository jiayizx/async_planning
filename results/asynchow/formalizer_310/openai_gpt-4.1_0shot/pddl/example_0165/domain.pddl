(define (domain rental-yield)
  (:requirements :durative-actions)
  (:predicates
    (rental_income_pending)
    (rental_income_done)
    (property_value_pending)
    (property_value_done)
    (yield_calc_pending)
    (yield_calc_done)
  )

  (:durative-action do_rental_income
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (at start (rental_income_pending))
    :effect (and
      (at start (not (rental_income_pending)))
      (at end (rental_income_done))
    )
  )

  (:durative-action do_property_value
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (property_value_pending))
    :effect (and
      (at start (not (property_value_pending)))
      (at end (property_value_done))
    )
  )

  (:durative-action do_yield_calc
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (yield_calc_pending))
      (at start (rental_income_done))
      (at start (property_value_done))
    )
    :effect (and
      (at start (not (yield_calc_pending)))
      (at end (yield_calc_done))
    )
  )
)
