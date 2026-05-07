(define (domain attraction_detection)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (watched_others)
    (sensed_attention)
    (clues_combined)
  )

  (:durative-action watch_others
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (watched_others)))
  )

  (:durative-action sense_attention
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sensed_attention)))
  )

  (:durative-action put_clues_together
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (watched_others)) (at start (sensed_attention)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clues_combined)))
  )
)