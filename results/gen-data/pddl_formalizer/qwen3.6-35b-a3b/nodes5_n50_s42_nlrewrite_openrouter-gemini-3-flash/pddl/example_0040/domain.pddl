(define (domain steamed_ginger_pudding)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_done ?s - step)
               (step_pending ?s - step)
               (ginger_grated)
               (eggs_whisked)
               (pudding_combined)
               (ginger_bought)
               (eggs_warmed))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 600
    :condition (at start (and (step_pending ?s) (ginger_bought)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (and (step_done ?s) (ginger_grated)))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 300
    :condition (at start (and (step_pending ?s) (eggs_warmed)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (and (step_done ?s) (eggs_whisked)))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 480
    :condition (at start (and (step_pending ?s) (ginger_grated) (eggs_whisked) (ginger_bought)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (and (step_done ?s) (pudding_combined)))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (and (step_done ?s) (ginger_bought)))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (and (step_done ?s) (eggs_warmed)))))
)