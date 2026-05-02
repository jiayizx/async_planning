(define (domain wii_wifi_dialup)
  (:requirements :durative-actions)
  (:predicates
    (purchase_adapter_pending)
    (purchase_adapter_done)
    (configure_ics_pending)
    (configure_ics_done)
    (run_connection_test_pending)
    (run_connection_test_done)
    (connect_phone_line_pending)
    (connect_phone_line_done)
    (plug_ethernet_pending)
    (plug_ethernet_done)
  )

  (:durative-action purchase_adapter
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (purchase_adapter_pending))
    :effect (and
      (at start (not (purchase_adapter_pending)))
      (at end (purchase_adapter_done))
    )
  )

  (:durative-action configure_ics
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (configure_ics_pending))
      (at start (connect_phone_line_done))
    )
    :effect (and
      (at start (not (configure_ics_pending)))
      (at end (configure_ics_done))
    )
  )

  (:durative-action run_connection_test
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (run_connection_test_pending))
      (at start (connect_phone_line_done))
      (at start (plug_ethernet_done))
    )
    :effect (and
      (at start (not (run_connection_test_pending)))
      (at end (run_connection_test_done))
    )
  )

  (:durative-action connect_phone_line
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (connect_phone_line_pending))
    :effect (and
      (at start (not (connect_phone_line_pending)))
      (at end (connect_phone_line_done))
    )
  )

  (:durative-action plug_ethernet
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (plug_ethernet_pending))
      (at start (purchase_adapter_done))
    )
    :effect (and
      (at start (not (plug_ethernet_pending)))
      (at end (plug_ethernet_done))
    )
  )
)
