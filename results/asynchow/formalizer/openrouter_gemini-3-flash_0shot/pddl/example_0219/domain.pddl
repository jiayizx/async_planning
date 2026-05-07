(define (domain swamp_walking)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shirt_pants_worn)
    (waterproof_gear_on)
    (gloves_worn)
    (boots_socks_worn)
    (hat_worn)
  )

  (:durative-action wear_shirt_pants
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shirt_pants_worn)))
  )

  (:durative-action cover_waterproof
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (shirt_pants_worn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waterproof_gear_on)))
  )

  (:durative-action wear_gloves
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gloves_worn)))
  )

  (:durative-action protect_feet
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boots_socks_worn)))
  )

  (:durative-action wear_hat
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hat_worn)))
  )
)