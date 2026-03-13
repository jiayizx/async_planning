(define (domain baja-race)
  (:requirements :durative-actions)
  (:predicates
    (get_good_at_baja_racing_pending)
    (get_good_at_baja_racing_done)
    (apply_to_contest_pending)
    (apply_to_contest_done)
    (pay_fees_pending)
    (pay_fees_done)
    (bring_racing_gear_pending)
    (bring_racing_gear_done)
    (bring_friends_pending)
    (bring_friends_done)
  )

  (:durative-action get_good_at_baja_racing
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (at start (get_good_at_baja_racing_pending))
    :effect (and
      (at start (not (get_good_at_baja_racing_pending)))
      (at end (get_good_at_baja_racing_done))
    )
  )

  (:durative-action apply_to_contest
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and
      (at start (apply_to_contest_pending))
      (at start (get_good_at_baja_racing_done))
    )
    :effect (and
      (at start (not (apply_to_contest_pending)))
      (at end (apply_to_contest_done))
    )
  )

  (:durative-action pay_fees
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (pay_fees_pending))
      (at start (apply_to_contest_done))
    )
    :effect (and
      (at start (not (pay_fees_pending)))
      (at end (pay_fees_done))
    )
  )

  (:durative-action bring_racing_gear
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and
      (at start (bring_racing_gear_pending))
      (at start (pay_fees_done))
    )
    :effect (and
      (at start (not (bring_racing_gear_pending)))
      (at end (bring_racing_gear_done))
    )
  )

  (:durative-action bring_friends
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and
      (at start (bring_friends_pending))
      (at start (pay_fees_done))
    )
    :effect (and
      (at start (not (bring_friends_pending)))
      (at end (bring_friends_done))
    )
  )
)
