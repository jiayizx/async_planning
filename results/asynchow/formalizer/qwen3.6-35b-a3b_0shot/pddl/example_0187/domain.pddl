(define (domain identify_strengths)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_done ?s - step) (step_pending ?s - step) (s1_done) (s2_done) (s3_done) (s4_done) (strengths_identified))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 10
    :condition (at start (step_pending ?s))
    :effect (at start (not (step_pending ?s)))
    :effect (at end (s1_done))
    :effect (at end (step_done ?s)))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 15
    :condition (at start (step_pending ?s))
    :effect (at start (not (step_pending ?s)))
    :effect (at end (s2_done))
    :effect (at end (step_done ?s)))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 20
    :condition (and (at start (step_pending ?s)) (at start s1_done) (at start s4_done))
    :effect (at start (not (step_pending ?s)))
    :effect (at end (s3_done))
    :effect (at end (step_done ?s))
    :effect (at end (strengths_identified)))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 30
    :condition (at start (step_pending ?s))
    :effect (at start (not (step_pending ?s)))
    :effect (at end (s4_done))
    :effect (at end (step_done ?s)))
)