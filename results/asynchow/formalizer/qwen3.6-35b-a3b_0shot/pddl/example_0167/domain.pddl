(define (domain clean_bathtub)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (mix_done)
               (rub_done)
               (rinse_done)
               (clean_done))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (mix_done))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s))
                    (at start (mix_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (rub_done))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s))
                    (at start (rub_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (rinse_done))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (clean_done))))
)