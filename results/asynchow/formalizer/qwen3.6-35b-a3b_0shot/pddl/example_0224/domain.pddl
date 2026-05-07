(define (domain den_for_greyhound)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (materials_found)
    (case_made)
    (item_cut)
    (sewn_together)
    (pet_acclimated))
  (:durative-action do_step1
    (:parameters (?s - step))
    :duration 30
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (materials_found))))
  (:durative-action do_step2
    (:parameters (?s - step))
    :duration 15
    :condition (and (at start (step_pending ?s))
                    (at start (materials_found)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (case_made))))
  (:durative-action do_step3
    (:parameters (?s - step))
    :duration 20
    :condition (and (at start (step_pending ?s))
                    (at start (materials_found)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (item_cut))))
  (:durative-action do_step4
    (:parameters (?s - step))
    :duration 45
    :condition (and (at start (step_pending ?s))
                    (at start (case_made))
                    (at start (item_cut)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (sewn_together))))
  (:durative-action do_step5
    (:parameters (?s - step))
    :duration 20160
    :condition (and (at start (step_pending ?s))
                    (at start (sewn_together)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (pet_acclimated))))
)