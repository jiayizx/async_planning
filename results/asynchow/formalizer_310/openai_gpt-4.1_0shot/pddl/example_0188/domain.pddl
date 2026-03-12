(define (domain early-payment-discount)
  (:requirements :durative-actions)
  (:predicates
    (calculate_total_pending)
    (calculate_total_done)
    (decide_discount_pending)
    (decide_discount_done)
    (multiply_discount_pending)
    (multiply_discount_done)
    (subtract_discount_pending)
    (subtract_discount_done)
  )

  (:durative-action calculate_total
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (calculate_total_pending))
    :effect (and (at start (not (calculate_total_pending))) (at end (calculate_total_done)))
  )

  (:durative-action decide_discount
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (decide_discount_pending))
    :effect (and (at start (not (decide_discount_pending))) (at end (decide_discount_done)))
  )

  (:durative-action multiply_discount
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (multiply_discount_pending)) (at start (calculate_total_done)) (at start (decide_discount_done)))
    :effect (and (at start (not (multiply_discount_pending))) (at end (multiply_discount_done)))
  )

  (:durative-action subtract_discount
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (subtract_discount_pending)) (at start (multiply_discount_done)))
    :effect (and (at start (not (subtract_discount_pending))) (at end (subtract_discount_done)))
  )
)
