(define (domain restrain-dog)
  (:requirements :durative-actions)
  (:predicates
    (attach_leash_pending)
    (attach_leash_done)
    (calm_dog_pending)
    (calm_dog_done)
    (retrieve_harness_pending)
    (retrieve_harness_done)
    (adjust_straps_pending)
    (adjust_straps_done)
    (slide_harness_pending)
    (slide_harness_done)
  )

  (:durative-action attach_leash
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (attach_leash_pending)) (at start (calm_dog_done)))
    :effect (and (at start (not (attach_leash_pending))) (at end (attach_leash_done)))
  )

  (:durative-action calm_dog
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (calm_dog_pending))
    :effect (and (at start (not (calm_dog_pending))) (at end (calm_dog_done)))
  )

  (:durative-action retrieve_harness
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (retrieve_harness_pending))
    :effect (and (at start (not (retrieve_harness_pending))) (at end (retrieve_harness_done)))
  )

  (:durative-action adjust_straps
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (adjust_straps_pending)) (at start (slide_harness_done)))
    :effect (and (at start (not (adjust_straps_pending))) (at end (adjust_straps_done)))
  )

  (:durative-action slide_harness
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (slide_harness_pending)) (at start (retrieve_harness_done)))
    :effect (and (at start (not (slide_harness_pending))) (at end (slide_harness_done)))
  )
)
