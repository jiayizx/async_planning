(define (domain put_on_squash_jersey)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (clothes_off)
               (shower_on)
               (showered)
               (dried_off)
               (lotion_applied))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 60
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (clothes_off))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 5
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (shower_on))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s))
                    (at start clothes_off)
                    (at start shower_on))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (showered))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s))
                    (at start showered))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (dried_off))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s))
                    (at start dried_off))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (lotion_applied))))
)