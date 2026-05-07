(define (domain 5k_race)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (sign_up_done)
               (practice_done)
               (eat_done)
               (rest_done)
               (arrive_done))
  (:durative-action do_sign_up
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (sign_up_done))))
  (:durative-action do_practice
    :parameters (?s - step)
    :duration 2592000
    :condition (and (at start (step_pending ?s))
                    (at start (sign_up_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (practice_done))))
  (:durative-action do_eat
    :parameters (?s - step)
    :duration 2592000
    :condition (and (at start (step_pending ?s))
                    (at start (sign_up_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (eat_done))))
  (:durative-action do_rest
    :parameters (?s - step)
    :duration 86400
    :condition (and (at start (step_pending ?s))
                    (at start (practice_done))
                    (at start (eat_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (rest_done))))
  (:durative-action do_arrive
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s))
                    (at start (rest_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (arrive_done))))
)