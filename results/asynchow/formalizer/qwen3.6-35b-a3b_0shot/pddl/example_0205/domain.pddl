(define (domain generator_building)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (plate_fabricated)
               (pulleys_mounted)
               (belt_run)
               (tank_mounted)
               (supply_reconnected))

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (plate_fabricated))))

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (pulleys_mounted))))

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step3))
                    (at start (pulleys_mounted)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (belt_run))))

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4))
                    (at start (plate_fabricated)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (tank_mounted))))

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5))
                    (at start (tank_mounted)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (supply_reconnected))))
)