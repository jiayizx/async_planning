(define (domain balloon_pet_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (balloon_removed)
    (balloon_inflated)
    (marker_selected)
    (face_drawn)
    (poodle_shaped)
  )

  (:durative-action remove_balloon
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (balloon_removed)))
  )

  (:durative-action inflate_balloon
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (balloon_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (balloon_inflated)))
  )

  (:durative-action select_marker
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (marker_selected)))
  )

  (:durative-action draw_face
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (marker_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (face_drawn)))
  )

  (:durative-action twist_poodle
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (balloon_inflated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (poodle_shaped)))
  )
)