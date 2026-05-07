(define (domain go_play)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 120
    :condition (at start (and (step_pending ?s) (step5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end step1_done)))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end step2_done)))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 600
    :condition (at start (and (step_pending ?s) (step2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end step3_done)))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 180
    :condition (at start (and (step_pending ?s) (step1_done) (step5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end step4_done)))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 60
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end step5_done)))
)