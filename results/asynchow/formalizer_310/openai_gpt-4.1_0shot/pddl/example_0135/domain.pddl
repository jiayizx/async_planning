(define (domain download-psp-games)
  (:requirements :durative-actions)
  (:predicates
    (purchase_memory_stick_pending)
    (purchase_memory_stick_done)
    (format_memory_stick_pending)
    (format_memory_stick_done)
    (find_firmware_pending)
    (find_firmware_done)
  )

  (:durative-action purchase_memory_stick
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (purchase_memory_stick_pending))
    :effect (and
      (at start (not (purchase_memory_stick_pending)))
      (at end (purchase_memory_stick_done))
    )
  )

  (:durative-action format_memory_stick
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (format_memory_stick_pending))
      (at start (purchase_memory_stick_done))
    )
    :effect (and
      (at start (not (format_memory_stick_pending)))
      (at end (format_memory_stick_done))
    )
  )

  (:durative-action find_firmware
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (find_firmware_pending))
    :effect (and
      (at start (not (find_firmware_pending)))
      (at end (find_firmware_done))
    )
  )
)
