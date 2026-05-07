(define (domain sort_out_life)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (skill_learned)
               (resume_written)
               (change_made)
               (school_attended))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 90
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (skill_learned))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 14
    :condition (at start (and (step_pending ?s) (skill_learned) (school_attended)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (resume_written))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 60
    :condition (at start (and (step_pending ?s) (resume_written)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (change_made))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 1460
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (school_attended))))
)