(define (domain labradoodle_grooming)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (bathed)
    (in_tub)
    (shampooed)
    (rinsed)
    (dried)
  )

  (:durative-action bathe_monthly
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bathed)))
  )

  (:durative-action put_in_tub
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (in_tub)))
  )

  (:durative-action apply_shampoo
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (in_tub)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shampooed)))
  )

  (:durative-action rinse_shampoo
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (shampooed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rinsed)))
  )

  (:durative-action dry_off
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dried)))
  )
)