(define (domain cook_ground_turkey)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step) (preheated) (mixed) (formed) (cooked))
  
  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (preheated))))

  (:durative-action mix_ingredients
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (mixed))))

  (:durative-action form_meatballs
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (mixed)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (formed))))

  (:durative-action cook_meatballs
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (preheated)) (at start (formed)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (cooked))))
)