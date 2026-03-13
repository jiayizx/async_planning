(define (domain buy_stamps)
  (:requirements :durative-actions)
  (:predicates
    (s1_pending) (s1_done)
    (s2_pending) (s2_done)
    (s3_pending) (s3_done)
    (s4_pending) (s4_done)
    (s5_pending) (s5_done)
    (s6_pending) (s6_done)
    (s7_pending) (s7_done)
    (s8_pending) (s8_done)
    (s9_pending) (s9_done)
    (s10_pending) (s10_done)
    (s11_pending) (s11_done)
    (s12_pending) (s12_done)
    (s13_pending) (s13_done)
    (s14_pending) (s14_done)
    (s15_pending) (s15_done)
  )

  (:durative-action check_rates
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (s1_pending))
    :effect (and (at start (not (s1_pending))) (at end (s1_done)))
  )

  (:durative-action walk_into_po
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s2_pending)) (at start (s14_done)) (at start (s11_done)))
    :effect (and (at start (not (s2_pending))) (at end (s2_done)))
  )

  (:durative-action select_design
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s3_pending)) (at start (s9_done)))
    :effect (and (at start (not (s3_pending))) (at end (s3_done)))
  )

  (:durative-action find_wallet
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (s4_pending))
    :effect (and (at start (not (s4_pending))) (at end (s4_done)))
  )

  (:durative-action locate_address
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (s5_pending))
    :effect (and (at start (not (s5_pending))) (at end (s5_done)))
  )

  (:durative-action check_balance
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s6_pending))
    :effect (and (at start (not (s6_pending))) (at end (s6_done)))
  )

  (:durative-action drive_to_po
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (s7_pending)) (at start (s5_done)))
    :effect (and (at start (not (s7_pending))) (at end (s7_done)))
  )

  (:durative-action confirm_price
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (s8_pending)) (at start (s3_done)) (at start (s7_done)))
    :effect (and (at start (not (s8_pending))) (at end (s8_done)))
  )

  (:durative-action ensure_funds
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s9_pending)) (at start (s4_done)) (at start (s6_done)))
    :effect (and (at start (not (s9_pending))) (at end (s9_done)))
  )

  (:durative-action wait_in_queue
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (s10_pending)) (at start (s2_done)))
    :effect (and (at start (not (s10_pending))) (at end (s10_done)))
  )

  (:durative-action calculate_stamps
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (s11_pending)) (at start (s1_done)))
    :effect (and (at start (not (s11_pending))) (at end (s11_done)))
  )

  (:durative-action decide_format
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (s12_pending)) (at start (s9_done)))
    :effect (and (at start (not (s12_pending))) (at end (s12_done)))
  )

  (:durative-action put_on_gear
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (s13_pending)) (at start (s7_done)))
    :effect (and (at start (not (s13_pending))) (at end (s13_done)))
  )

  (:durative-action lock_door
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s14_pending)) (at start (s13_done)))
    :effect (and (at start (not (s14_pending))) (at end (s14_done)))
  )

  (:durative-action insert_card
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (s15_pending)) (at start (s2_done)))
    :effect (and (at start (not (s15_pending))) (at end (s15_done)))
  )
)