(define (domain nintendo_ds)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (cartridge_inserted)
    (touch_calibrated)
    (console_located)
    (power_toggled)
    (battery_charged)
    (profile_selected)
    (start_pressed)
    (exterior_cleaned)
    (volume_adjusted)
    (lid_opened))
  (:durative-action do_step1
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (battery_charged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cartridge_inserted))))
  (:durative-action do_step2
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (exterior_cleaned)) (at start (volume_adjusted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (touch_calibrated))))
  (:durative-action do_step3
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (console_located))))
  (:durative-action do_step4
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (profile_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (power_toggled))))
  (:durative-action do_step5
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (power_toggled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (battery_charged))))
  (:durative-action do_step6
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (touch_calibrated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (profile_selected))))
  (:durative-action do_step7
    :duration (= ?duration 3)
    :condition (and (at start (step_pending ?s)) (at start (cartridge_inserted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (start_pressed))))
  (:durative-action do_step8
    :duration (= ?duration 45)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (exterior_cleaned))))
  (:durative-action do_step9
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (lid_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (volume_adjusted))))
  (:durative-action do_step10
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (console_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lid_opened)))))