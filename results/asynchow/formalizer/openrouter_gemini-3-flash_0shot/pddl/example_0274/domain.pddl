(define (domain double_jointed_test)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pinky_lifted)
    (thumb_pushed)
    (elbow_opened)
    (knees_extended)
    (waist_bent)
    (score_calculated)
  )

  (:durative-action lift_pinky
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pinky_lifted)))
  )

  (:durative-action push_thumb
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (thumb_pushed)))
  )

  (:durative-action open_elbow
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (elbow_opened)))
  )

  (:durative-action extend_knees
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knees_extended)))
  )

  (:durative-action bend_waist
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waist_bent)))
  )

  (:durative-action calculate_score
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and 
      (at start (step_pending ?s))
      (at start (pinky_lifted))
      (at start (thumb_pushed))
      (at start (elbow_opened))
      (at start (knees_extended))
      (at start (waist_bent))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (score_calculated)))
  )
)