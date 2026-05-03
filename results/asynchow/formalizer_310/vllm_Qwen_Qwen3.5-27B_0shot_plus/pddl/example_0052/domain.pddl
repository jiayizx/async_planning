(define (domain baja_racing)
  (:requirements :durative-actions)
  
  (:predicates
    (get_good_at_baja_pending)
    (get_good_at_baja_done)
    (apply_to_contest_pending)
    (apply_to_contest_done)
    (pay_fees_pending)
    (pay_fees_done)
    (bring_gear_pending)
    (bring_gear_done)
    (bring_friends_pending)
    (bring_friends_done)
  )

  (:durative-action do_get_good_at_baja
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (get_good_at_baja_pending)))
    :effect (and (at start (not (get_good_at_baja_pending)))
                 (at end (get_good_at_baja_done)))
  )

  (:durative-action do_apply_to_contest
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (apply_to_contest_pending))
                    (at start (get_good_at_baja_done)))
    :effect (and (at start (not (apply_to_contest_pending)))
                 (at end (apply_to_contest_done)))
  )

  (:durative-action do_pay_fees
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pay_fees_pending))
                    (at start (apply_to_contest_done)))
    :effect (and (at start (not (pay_fees_pending)))
                 (at end (pay_fees_done)))
  )

  (:durative-action do_bring_gear
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (bring_gear_pending))
                    (at start (pay_fees_done)))
    :effect (and (at start (not (bring_gear_pending)))
                 (at end (bring_gear_done)))
  )

  (:durative-action do_bring_friends
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (bring_friends_pending))
                    (at start (pay_fees_done)))
    :effect (and (at start (not (bring_friends_pending)))
                 (at end (bring_friends_done)))
  )
)