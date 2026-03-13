(define (domain bmw-key-charging)
  (:requirements :durative-actions)
  (:predicates
    (insert_key_pending)
    (insert_key_done)
    (ensure_led_pending)
    (ensure_led_done)
    (plug_usb_pending)
    (plug_usb_done)
  )

  (:durative-action insert_key
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (insert_key_pending))
    :effect (and
      (at start (not (insert_key_pending)))
      (at end (insert_key_done))
    )
  )

  (:durative-action ensure_led
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (ensure_led_pending))
      (at start (insert_key_done))
      (at start (plug_usb_done))
    )
    :effect (and
      (at start (not (ensure_led_pending)))
      (at end (ensure_led_done))
    )
  )

  (:durative-action plug_usb
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (plug_usb_pending))
    :effect (and
      (at start (not (plug_usb_pending)))
      (at end (plug_usb_done))
    )
  )
)
