(define (domain steamed_sweet_potatoes)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step) (peeled) (cut) (tray_ready) (water_boiled) (served))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (peeled))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (peeled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cut))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (cut)) (at start (water_boiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tray_ready))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_boiled))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (tray_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (served))))
)