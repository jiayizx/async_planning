(define (domain athletic_performance)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (caution_used)
    (lavender_massaged)
    (ginger_used)
    (pepper_tried)
  )

  (:durative-action use_caution
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (caution_used)))
  )

  (:durative-action massage_lavender
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (caution_used)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lavender_massaged)))
  )

  (:durative-action use_ginger
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (caution_used)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ginger_used)))
  )

  (:durative-action try_pepper
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (caution_used)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pepper_tried)))
  )
)