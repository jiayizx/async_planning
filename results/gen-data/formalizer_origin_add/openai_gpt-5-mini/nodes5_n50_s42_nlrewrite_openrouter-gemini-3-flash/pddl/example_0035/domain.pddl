(define (domain buy_stamps)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (walk_done)
    (check_balance_done)
    (affix_done)
    (locate_wallet_done)
    (purchase_done)
  )

  (:durative-action do_walk_to_post_office
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step1)) (at start (locate_wallet_done)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (walk_done))
    )
  )

  (:durative-action do_check_balance
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (check_balance_done))
    )
  )

  (:durative-action do_affix_stamps
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (purchase_done)) (at start (walk_done)) (at start (check_balance_done)) (at start (locate_wallet_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (affix_done))
    )
  )

  (:durative-action do_locate_wallet_and_keys
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (locate_wallet_done))
    )
  )

  (:durative-action do_purchase_book_of_stamps
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step5)) (at start (walk_done)) (at start (check_balance_done)) (at start (locate_wallet_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (purchase_done))
    )
  )
)
