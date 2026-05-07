(define (domain cat_talking)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (meow_recognized)
    (meow_understood)
    (cues_observed)
  )

  (:durative-action recognize_meow
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meow_recognized)))
  )

  (:durative-action understand_meow
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (meow_recognized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meow_understood)))
  )

  (:durative-action observe_cues
    :parameters (?s - step)
    :duration (= ?duration 1814400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cues_observed)))
  )
)