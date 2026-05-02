(define (problem buy_fishing_rod_instance)
  (:domain buy_fishing_rod)
  (:init
    (make_note_pending)
    (pay_pending)
    (store_receipt_pending)
  )
  (:goal (and
    (make_note_done)
    (pay_done)
    (store_receipt_done)
  ))
)
