(define (domain hairstyle_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step)
               (opinion_asked) (style_browsed) (snapshot_got)
               (appointment_made) (driven) (discussed))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (opinion_asked))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (style_browsed))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s))
                    (at start (opinion_asked))
                    (at start (style_browsed)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (snapshot_got))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s))
                    (at start (snapshot_got)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (appointment_made))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s))
                    (at start (appointment_made)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (driven))))
  (:durative-action do_step6
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s))
                    (at start (driven)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (discussed))))
)