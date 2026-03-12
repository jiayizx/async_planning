(define (domain little-league-baseball)
  (:requirements :durative-actions)
  (:predicates
    (sign_up_pending)
    (sign_up_done)
    (buy_gear_pending)
    (buy_gear_done)
    (get_driven_pending)
    (get_driven_done)
    (wake_up_pending)
    (wake_up_done)
    (pay_fees_pending)
    (pay_fees_done)
  )

  (:durative-action do_sign_up
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (sign_up_pending))
    :effect (and (at start (not (sign_up_pending))) (at end (sign_up_done)))
  )

  (:durative-action do_buy_gear
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (buy_gear_pending))
    :effect (and (at start (not (buy_gear_pending))) (at end (buy_gear_done)))
  )

  (:durative-action do_get_driven
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (get_driven_pending)) (at start (buy_gear_done)) (at start (pay_fees_done)))
    :effect (and (at start (not (get_driven_pending))) (at end (get_driven_done)))
  )

  (:durative-action do_wake_up
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (wake_up_pending)) (at start (get_driven_done)))
    :effect (and (at start (not (wake_up_pending))) (at end (wake_up_done)))
  )

  (:durative-action do_pay_fees
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pay_fees_pending)) (at start (sign_up_done)))
    :effect (and (at start (not (pay_fees_pending))) (at end (pay_fees_done)))
  )
)
