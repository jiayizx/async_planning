(define (domain buy-postage-stamps)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (wallet_and_keys_located)
    (post_office_reached)
    (debit_balance_checked)
    (stamp_book_purchased)
    (stamps_affixed)
  )

  (:durative-action walk_to_post_office
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (wallet_and_keys_located))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (post_office_reached))
    )
  )

  (:durative-action check_debit_card_balance
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (debit_balance_checked))
    )
  )

  (:durative-action affix_stamps_to_envelopes
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (stamp_book_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stamps_affixed))
    )
  )

  (:durative-action locate_wallet_and_keys
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wallet_and_keys_located))
    )
  )

  (:durative-action purchase_stamp_book
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (post_office_reached))
      (at start (debit_balance_checked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stamp_book_purchased))
    )
  )
)