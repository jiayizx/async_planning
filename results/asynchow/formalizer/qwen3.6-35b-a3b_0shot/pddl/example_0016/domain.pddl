(define (domain sand_castle)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (shovel_packed)
               (dressed)
               (arrived_at_beach)
               (parked)
               (sand_damp))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (shovel_packed))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (dressed))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 1800
    :condition (and (at start (step_pending ?s))
                    (at start (shovel_packed))
                    (at start (dressed)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (arrived_at_beach))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 1200
    :condition (and (at start (step_pending ?s))
                    (at start (arrived_at_beach)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (parked))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s))
                    (at start (parked)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (sand_damp))))
)