(define (domain wear_harem_pants)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (crop_top_worn)
    (top_picked)
    (shirt_tucked)
  )

  (:durative-action wear_crop_top
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (crop_top_worn)))
  )

  (:durative-action pick_top
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (top_picked)))
  )

  (:durative-action tuck_shirt
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (top_picked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shirt_tucked)))
  )
)