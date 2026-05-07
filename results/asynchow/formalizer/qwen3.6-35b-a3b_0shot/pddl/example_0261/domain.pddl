(define (domain file_cabinet_makeover)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (paper_chosen)
               (measured)
               (paper_cut)
               (paper_aligned)
               (trimmed)
               (decorated))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (paper_chosen))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (measured))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s))
                    (at start (paper_chosen))
                    (at start (measured)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (paper_cut))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s))
                    (at start (paper_cut)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (paper_aligned))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s))
                    (at start (paper_aligned)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (trimmed))))
  (:durative-action do_step6
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s))
                    (at start (trimmed)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (decorated))))
)