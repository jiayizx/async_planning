(define (domain wake_up_dream)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (realized_dreaming)
    (watch_worn)
    (mild_done)
    (uncomfortable_prevented)
    (light_stimulus_done)
    (techniques_combined)
  )

  (:durative-action realize_dreaming
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (realized_dreaming)))
  )

  (:durative-action wear_watch
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (watch_worn)))
  )

  (:durative-action mild_technique
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mild_done)))
  )

  (:durative-action prevent_uncomfortable
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (uncomfortable_prevented)))
  )

  (:durative-action light_stimulus
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (light_stimulus_done)))
  )

  (:durative-action combine_techniques
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (mild_done)) (at start (light_stimulus_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (techniques_combined)))
  )
)