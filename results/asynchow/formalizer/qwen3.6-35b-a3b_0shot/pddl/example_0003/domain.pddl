(define (domain bath)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (clothes_off)
    (bubbles_added)
    (water_turned_off)
    (tub_filled)
    (towel_set))
  (:durative-action do_step1 :parameters (?s - step)
    :duration 180
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothes_off))))
  (:durative-action do_step2 :parameters (?s - step)
    :duration 5
    :condition (and (at start (step_pending ?s)) (at start (clothes_off)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bubbles_added))))
  (:durative-action do_step3 :parameters (?s - step)
    :duration 5
    :condition (and (at start (step_pending ?s)) (at start (bubbles_added)) (at start (towel_set)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_turned_off))))
  (:durative-action do_step4 :parameters (?s - step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tub_filled))))
  (:durative-action do_step5 :parameters (?s - step)
    :duration 180
    :condition (and (at start (step_pending ?s)) (at start (tub_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (towel_set))))
)