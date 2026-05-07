(define (domain silk_tie_cleaning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (tucked_away)
    (washed)
    (protected)
  )

  (:durative-action tuck_away
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tucked_away)))
  )

  (:durative-action hand_wash
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (washed)))
  )

  (:durative-action spray_protector
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (protected)))
  )
)