(define (domain makeup_application)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (moisturizer_applied)
    (primer_set)
    (foundation_blended)
    (powder_buffed)
    (mist_sprayed)
  )

  (:durative-action apply_moisturizer
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (moisturizer_applied)))
  )

  (:durative-action set_primer
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (moisturizer_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (primer_set)))
  )

  (:durative-action blend_foundation
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (foundation_blended)))
  )

  (:durative-action buff_powder
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (foundation_blended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (powder_buffed)))
  )

  (:durative-action spray_mist
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (powder_buffed)) (at start (foundation_blended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mist_sprayed)))
  )
)