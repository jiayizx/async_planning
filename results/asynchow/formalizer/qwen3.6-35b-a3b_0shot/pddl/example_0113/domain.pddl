(define (domain cooking)
  (:requirements :durative-actions :typing)
  (:types step - object)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (food_bought)
    (videos_found)
    (videos_watched)
    (ingredients_cut)
    (know_how_to_cook))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (food_bought))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (videos_found))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 600
    :condition (and (at start (step_pending ?s))
                    (at start (videos_found)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (videos_watched))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 900
    :condition (and (at start (step_pending ?s))
                    (at start (food_bought)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (ingredients_cut))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 300
    :condition (and (at start (step_pending ?s))
                    (at start (ingredients_cut)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (know_how_to_cook))))
)