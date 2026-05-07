(define (domain get_dressed)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (shirt_on)
               (underwear_on)
               (pants_on)
               (appearance_checked)
               (socks_on)
               (shoes_on))
  (:durative-action do_step1
    (:parameters (?s - step))
    :duration 30
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (shirt_on))))
  (:durative-action do_step2
    (:parameters (?s - step))
    :duration 30
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (underwear_on))))
  (:durative-action do_step3
    (:parameters (?s - step))
    :duration 30
    :condition (and (at start (step_pending ?s))
                    (at start (shirt_on))
                    (at start (underwear_on)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (pants_on))))
  (:durative-action do_step4
    (:parameters (?s - step))
    :duration 30
    :condition (and (at start (step_pending ?s))
                    (at start (pants_on))
                    (at start (shoes_on)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (appearance_checked))))
  (:durative-action do_step5
    (:parameters (?s - step))
    :duration 30
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (socks_on))))
  (:durative-action do_step6
    (:parameters (?s - step))
    :duration 120
    :condition (and (at start (step_pending ?s))
                    (at start (socks_on)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (shoes_on))))
)