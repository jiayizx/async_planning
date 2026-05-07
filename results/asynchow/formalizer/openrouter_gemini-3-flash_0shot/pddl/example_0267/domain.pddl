(define (domain ear_reflexology)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (emotional_points_learned)
    (sympathy_points_identified)
    (depression_points_located)
    (anger_points_found)
    (love_center_found)
  )

  (:durative-action learn_emotional_points
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (emotional_points_learned)))
  )

  (:durative-action identify_sympathy_points
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (emotional_points_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sympathy_points_identified)))
  )

  (:durative-action locate_depression_points
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (emotional_points_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (depression_points_located)))
  )

  (:durative-action find_anger_points
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (emotional_points_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (anger_points_found)))
  )

  (:durative-action find_love_center
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (emotional_points_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (love_center_found)))
  )
)