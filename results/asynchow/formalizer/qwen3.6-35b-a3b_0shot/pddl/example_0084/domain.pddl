(define (domain offroading)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (garage_unlocked)
               (in_garage)
               (in_truck)
               (truck_started)
               (at_recreation_area)
               (fee_paid)
               (on_trails))
  (:durative-action step1
    :parameters ()
    :duration 5
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (garage_unlocked))))
  (:durative-action step2
    :parameters ()
    :duration 120
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (in_garage))))
  (:durative-action step3
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step3))
                    (at start (in_garage)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (in_truck))))
  (:durative-action step4
    :parameters ()
    :duration 5
    :condition (and (at start (step_pending step4))
                    (at start (in_truck)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (truck_started))))
  (:durative-action step5
    :parameters ()
    :duration 3600
    :condition (and (at start (step_pending step5))
                    (at start (garage_unlocked))
                    (at start (truck_started)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (at_recreation_area))))
  (:durative-action step6
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step6))
                    (at start (at_recreation_area)))
    :effect (and (at start (not (step_pending step6)))
                 (at end (step_done step6))
                 (at end (fee_paid))))
  (:durative-action step7
    :parameters ()
    :duration 300
    :condition (and (at start (step_pending step7))
                    (at start (fee_paid)))
    :effect (and (at start (not (step_pending step7)))
                 (at end (step_done step7))
                 (at end (on_trails))))
)