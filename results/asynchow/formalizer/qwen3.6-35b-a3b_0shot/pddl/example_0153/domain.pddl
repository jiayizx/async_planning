(define (domain get_boyfriend_to_move_in)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (relationship_discussed)
               (space_respected)
               (finances_discussed))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (relationship_discussed))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 1209600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (space_respected))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 7200
    :condition (and (at start (step_pending ?s))
                    (at start (relationship_discussed)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (finances_discussed)))))