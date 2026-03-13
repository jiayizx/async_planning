(define (problem bmw-key-charging-problem)
  (:domain bmw-key-charging)
  (:init
    (insert_key_pending)
    (ensure_led_pending)
    (plug_usb_pending)
  )
  (:goal (and
    (insert_key_done)
    (ensure_led_done)
    (plug_usb_done)
  ))
)
