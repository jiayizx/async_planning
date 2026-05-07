(define (domain pool_fun)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (diving_done)
               (camera_done)
               (toys_done))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (toys_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (diving_done))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (camera_done))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (toys_done))))
)