(define (problem charge_bmw_key)
    (:domain bmw_key_charging)
    
    (:init
        (insert_key_pending)
        (check_led_pending)
        (plug_cable_pending)
    )

    (:goal (and (insert_key_done) (check_led_done) (plug_cable_done)))
)
