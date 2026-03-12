(define (problem download-psp-games-prob)
  (:domain download-psp-games)
  (:init
    (purchase_pending)
    (format_pending)
    (firmware_pending)
  )
  (:goal (and
    (purchase_done)
    (format_done)
    (firmware_done)
  ))
)
