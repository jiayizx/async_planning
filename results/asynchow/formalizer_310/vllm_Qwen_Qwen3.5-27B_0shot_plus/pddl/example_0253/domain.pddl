(define (domain fishing_rod_buy)
  (:requirements :durative-actions)
  
  (:predicates
    (make_note_pending)
    (make_note_done)
    (pay_item_pending)
    (pay_item_done)
    (store_receipt_pending)
    (store_receipt_done)
  )

  (:durative-action make_note
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (make_note_pending))
    :effect (and (at start (not (make_note_pending))) (at end (make_note_done)))
  )

  (:durative-action pay_item
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (pay_item_pending))
    :effect (and (at start (not (pay_item_pending))) (at end (pay_item_done)))
  )

  (:durative-action store_receipt
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (store_receipt_pending)) (at start (pay_item_done)))
    :effect (and (at start (not (store_receipt_pending))) (at end (store_receipt_done)))
  )
)