(define (domain choose_cruise)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (budget_stuck)
               (cost_calculated)
               (ticket_acknowledged))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s))
                    (at start (cost_calculated))
                    (at start (ticket_acknowledged)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (budget_stuck))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (cost_calculated))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (ticket_acknowledged))))
)