(define (domain buy_fishing_rod)
  (:requirements :durative-actions)
  (:predicates
    (make_note_pending)
    (make_note_done)
    (pay_pending)
    (pay_done)
    (store_receipt_pending)
    (store_receipt_done)
  )

  (:durative-action make_note
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (make_note_pending))
    :effect (and
      (at start (not (make_note_pending)))
      (at end (make_note_done))
    )
  )

  (:durative-action pay
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (pay_pending))
    :effect (and
      (at start (not (pay_pending)))
      (at end (pay_done))
    )
  )

  (:durative-action store_receipt
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (store_receipt_pending))
      (at start (pay_done))
    )
    :effect (and
      (at start (not (store_receipt_pending)))
      (at end (store_receipt_done))
    )
  )
)
