(define (domain buy_stamps)
  (:requirements :durative-actions)
  (:predicates
    (drive_to_post_office_pending)
    (drive_to_post_office_done)
    (locate_wallet_pending)
    (locate_wallet_done)
    (affix_stamps_pending)
    (affix_stamps_done)
    (research_stamp_price_pending)
    (research_stamp_price_done)
    (purchase_stamps_pending)
    (purchase_stamps_done)
  )

  (:durative-action drive_to_post_office
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (drive_to_post_office_pending)) (at start (research_stamp_price_done)))
    :effect (and (at start (not (drive_to_post_office_pending))) (at end (drive_to_post_office_done)))
  )

  (:durative-action locate_wallet
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (locate_wallet_pending))
    :effect (and (at start (not (locate_wallet_pending))) (at end (locate_wallet_done)))
  )

  (:durative-action affix_stamps
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (affix_stamps_pending)) (at start (purchase_stamps_done)))
    :effect (and (at start (not (affix_stamps_pending))) (at end (affix_stamps_done)))
  )

  (:durative-action research_stamp_price
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (research_stamp_price_pending))
    :effect (and (at start (not (research_stamp_price_pending))) (at end (research_stamp_price_done)))
  )

  (:durative-action purchase_stamps
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (purchase_stamps_pending)) (at start (drive_to_post_office_done)) (at start (locate_wallet_done)))
    :effect (and (at start (not (purchase_stamps_pending))) (at end (purchase_stamps_done)))
  )
)
