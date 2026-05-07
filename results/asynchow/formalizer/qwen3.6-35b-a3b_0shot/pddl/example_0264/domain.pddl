(define (domain berry_poutine)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step-pending ?s - step)
               (step-done ?s - step)
               (s1_done)
               (s2_done)
               (s3_done)
               (s4_done)
               (s5_done)
               (s6_done))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 10
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s1_done))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 5
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s2_done))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 15
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s3_done))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 2
    :condition (and (at start (step-pending ?s))
                    (at start (s2_done))
                    (at start (s3_done)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s4_done))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step-pending ?s))
                    (at start (s1_done))
                    (at start (s4_done)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s5_done))))
  (:durative-action do_step6
    :parameters (?s - step)
    :duration 2
    :condition (and (at start (step-pending ?s))
                    (at start (s5_done)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s6_done)))))