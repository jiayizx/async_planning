(define (domain roast_macadamia_nuts)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (eye_protection_worn)
    (cracker_obtained)
    (nuts_shelled)
  )

  (:durative-action wear_eye_protection
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eye_protection_worn)))
  )

  (:durative-action obtain_cracker
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cracker_obtained)))
  )

  (:durative-action shell_nuts
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and 
        (at start (step_pending ?s)) 
        (at start (eye_protection_worn)) 
        (at start (cracker_obtained))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (nuts_shelled)))
  )
)