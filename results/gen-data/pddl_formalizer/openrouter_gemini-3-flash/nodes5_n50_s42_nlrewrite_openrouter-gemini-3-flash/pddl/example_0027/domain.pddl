(define (domain wii_dialup_connection)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (adapter_purchased)
    (ics_configured)
    (connection_tested)
    (drivers_installed)
    (hardware_connected)
  )

  (:durative-action purchase_adapter
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (adapter_purchased)))
  )

  (:durative-action configure_ics
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (drivers_installed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ics_configured)))
  )

  (:durative-action perform_connection_test
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (adapter_purchased)) (at start (drivers_installed)) (at start (hardware_connected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (connection_tested)))
  )

  (:durative-action install_drivers
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (drivers_installed)))
  )

  (:durative-action connect_hardware
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (adapter_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hardware_connected)))
  )
)