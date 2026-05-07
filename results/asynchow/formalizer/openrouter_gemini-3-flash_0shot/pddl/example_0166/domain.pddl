(define (domain babys_breath_crown)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (bunch_chosen)
    (stem_trimmed)
    (circle_created)
    (crown_completed)
  )

  (:durative-action choose_bunch
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bunch_chosen)))
  )

  (:durative-action trim_stem
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (bunch_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stem_trimmed)))
  )

  (:durative-action create_circle
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (circle_created)))
  )

  (:durative-action tape_bunch
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (stem_trimmed)) (at start (circle_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (crown_completed)))
  )
)