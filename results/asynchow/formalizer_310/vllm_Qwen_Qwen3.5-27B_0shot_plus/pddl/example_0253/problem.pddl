(define (problem buy_fishing_rod)
  (:domain fishing_rod_buy)
  
  (:init
    (make_note_pending)
    (pay_item_pending)
    (store_receipt_pending)
  )

  (:goal (and
    (make_note_done)
    (pay_item_done)
    (store_receipt_done)
  ))
)