(define (domain coconut_skincare)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (makeup_removed)
    (face_washed)
    (skin_moisturized)
    (refreshed)
  )

  (:durative-action remove_makeup
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (makeup_removed)))
  )

  (:durative-action wash_face
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (makeup_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (face_washed)))
  )

  (:durative-action moisturize_skin
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (face_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (skin_moisturized)))
  )

  (:durative-action refresh_self
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (refreshed)))
  )
)