(define (domain download-psp-games)
  (:requirements :durative-actions)
  (:predicates
    (purchase_pending) (purchase_done)
    (format_pending) (format_done)
    (firmware_pending) (firmware_done)
  )

  (:durative-action do_purchase_memory_stick
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (purchase_pending))
    :effect (and (at start (not (purchase_pending))) (at end (purchase_done)))
  )

  (:durative-action do_format_memory_stick
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (format_pending)) (at start (purchase_done)))
    :effect (and (at start (not (format_pending))) (at end (format_done)))
  )

  (:durative-action do_check_firmware
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (firmware_pending))
    :effect (and (at start (not (firmware_pending))) (at end (firmware_done)))
  )
)
