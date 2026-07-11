(define (domain swamp_walk)
  (:requirements :durative-actions)
  
  (:predicates
    (wear_clothing_pending)
    (wear_clothing_done)
    (cover_clothing_pending)
    (cover_clothing_done)
    (wear_gloves_pending)
    (wear_gloves_done)
    (protect_feet_pending)
    (protect_feet_done)
    (wear_hat_pending)
    (wear_hat_done)
  )

  (:durative-action wear_clothing
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (wear_clothing_pending))
    :effect (and (at start (not (wear_clothing_pending)))
                 (at end (wear_clothing_done)))
  )

  (:durative-action cover_clothing
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (cover_clothing_pending))
                    (at start (wear_clothing_done)))
    :effect (and (at start (not (cover_clothing_pending)))
                 (at end (cover_clothing_done)))
  )

  (:durative-action wear_gloves
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (wear_gloves_pending))
    :effect (and (at start (not (wear_gloves_pending)))
                 (at end (wear_gloves_done)))
  )

  (:durative-action protect_feet
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (protect_feet_pending))
    :effect (and (at start (not (protect_feet_pending)))
                 (at end (protect_feet_done)))
  )

  (:durative-action wear_hat
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (wear_hat_pending))
    :effect (and (at start (not (wear_hat_pending)))
                 (at end (wear_hat_done)))
  )
)
