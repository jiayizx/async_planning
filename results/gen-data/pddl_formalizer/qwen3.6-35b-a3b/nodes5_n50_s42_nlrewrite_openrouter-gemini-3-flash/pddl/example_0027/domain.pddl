(define (domain wii_wifi_setup)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_done ?s - step)
    (step_pending ?s - step)
    (adapter_purchased)
    (ics_configured)
    (connection_tested)
    (drivers_installed)
    (adapter_plugged))
  (:durative-action step1_act
    :parameters (?s - step)
    :duration 259200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (and (step_done ?s) (adapter_purchased)))))
  (:durative-action step2_act
    :parameters (?s - step)
    :duration 900
    :condition (at start (and (step_pending ?s) (drivers_installed)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (and (step_done ?s) (ics_configured)))))
  (:durative-action step3_act
    :parameters (?s - step)
    :duration 120
    :condition (at start (and (step_pending ?s) (ics_configured) (adapter_plugged)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (and (step_done ?s) (connection_tested)))))
  (:durative-action step4_act
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (and (step_done ?s) (drivers_installed)))))
  (:durative-action step5_act
    :parameters (?s - step)
    :duration 300
    :condition (at start (and (step_pending ?s) (adapter_purchased)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (and (step_done ?s) (adapter_plugged)))))
)