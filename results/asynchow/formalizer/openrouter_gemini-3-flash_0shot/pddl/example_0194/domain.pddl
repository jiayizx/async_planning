(define (domain sun_protection)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (clothing_covered)
    (clothing_tested)
    (sunglasses_worn)
    (hat_worn)
  )

  (:durative-action wear_clothing_more_skin
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothing_covered)))
  )

  (:durative-action test_clothing_protection
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (clothing_covered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothing_tested)))
  )

  (:durative-action wear_sunglasses
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sunglasses_worn)))
  )

  (:durative-action wear_hat
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hat_worn)))
  )
)