(define (domain shrink_rings)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (ring_cleaned)
    (silicone_applied)
    (silicone_smoothed)
    (silicone_dried)
    (ring_fitted)
  )

  (:durative-action clean_ring
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ring_cleaned)))
  )

  (:durative-action apply_silicone
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (ring_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (silicone_applied)))
  )

  (:durative-action smooth_silicone
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (silicone_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (silicone_smoothed)))
  )

  (:durative-action dry_silicone
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (silicone_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (silicone_dried)))
  )

  (:durative-action try_on_ring
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (silicone_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ring_fitted)))
  )
)