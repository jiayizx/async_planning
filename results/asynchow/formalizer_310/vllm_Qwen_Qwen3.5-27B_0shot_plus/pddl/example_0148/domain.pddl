(define (domain bmw_key_charging)
    (:requirements :durative-actions)
    
    (:predicates
        (insert_key_pending)
        (insert_key_done)
        (check_led_pending)
        (check_led_done)
        (plug_cable_pending)
        (plug_cable_done)
    )

    (:durative-action insert_key
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (insert_key_pending))
        :effect (and (at start (not (insert_key_pending))) (at end (insert_key_done)))
    )

    (:durative-action check_led
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (check_led_pending)) (at start (insert_key_done)) (at start (plug_cable_done)))
        :effect (and (at start (not (check_led_pending))) (at end (check_led_done)))
    )

    (:durative-action plug_cable
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (plug_cable_pending))
        :effect (and (at start (not (plug_cable_pending))) (at end (plug_cable_done)))
    )
)
