(define (domain wii-dialup-connection)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (adapter_purchased)
    (sharing_configured)
    (connection_tested)
    (modem_drivers_installed)
    (adapter_and_cable_connected)
  )

  (:durative-action purchase_usb_ethernet_adapter
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (adapter_purchased))
    )
  )

  (:durative-action configure_internet_connection_sharing
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (modem_drivers_installed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sharing_configured))
    )
  )

  (:durative-action perform_wii_connection_test
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (modem_drivers_installed))
      (at start (adapter_and_cable_connected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (connection_tested))
    )
  )

  (:durative-action install_dialup_modem_drivers
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (modem_drivers_installed))
    )
  )

  (:durative-action connect_adapter_and_crossover_cable
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (adapter_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (adapter_and_cable_connected))
    )
  )
)