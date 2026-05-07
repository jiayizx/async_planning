(define (domain get_into_car)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (clothes_on)
    (left_shoe_on)
    (right_shoe_on)
    (keys_grabbed)
    (house_exited))
  
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (clothes_on))))
                 
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s))
                    (at start (clothes_on)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (left_shoe_on))))
                 
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 60
    :condition (and (at start (step_pending ?s))
                    (at start (clothes_on)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (right_shoe_on))))
                 
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s))
                    (at start (left_shoe_on))
                    (at start (right_shoe_on)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (keys_grabbed))))
                 
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s))
                    (at start (keys_grabbed)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (house_exited))))
)