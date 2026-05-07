(define (domain ironing_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (steamer_bought)
    (steamer_filled)
    (item_hung)
    (wrinkles_treated)
    (clothes_hung))
  (:durative-action step1
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (steamer_bought))))
  (:durative-action step2
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (steamer_bought)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (steamer_filled))))
  (:durative-action step3
    :parameters (?s - step)
    :duration 60
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (item_hung))))
  (:durative-action step4
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (steamer_filled)) (at start (item_hung)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (wrinkles_treated))))
  (:durative-action step5
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (clothes_hung))))
)