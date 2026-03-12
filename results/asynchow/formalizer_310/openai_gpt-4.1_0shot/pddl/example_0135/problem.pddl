(define (problem download-psp-games-problem)
  (:domain download-psp-games)
  (:init
    (purchase_memory_stick_pending)
    (format_memory_stick_pending)
    (find_firmware_pending)
  )
  (:goal (and
    (purchase_memory_stick_done)
    (format_memory_stick_done)
    (find_firmware_done)
  ))
)
