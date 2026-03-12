(define (domain eggless-cake)
  (:requirements :durative-actions)
  (:predicates
    (whisk_pending)
    (whisk_done)
    (preheat_pending)
    (preheat_done)
    (sift_pending)
    (sift_done)
    (prepare_pan_pending)
    (prepare_pan_done)
    (combine_pending)
    (combine_done)
  )

  (:durative-action whisk
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (whisk_pending)) (at start (sift_done)))
    :effect (and (at start (not (whisk_pending))) (at end (whisk_done)))
  )

  (:durative-action preheat
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (preheat_pending))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action sift
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (sift_pending))
    :effect (and (at start (not (sift_pending))) (at end (sift_done)))
  )

  (:durative-action prepare_pan
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (prepare_pan_pending)) (at start (preheat_done)))
    :effect (and (at start (not (prepare_pan_pending))) (at end (prepare_pan_done)))
  )

  (:durative-action combine
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (combine_pending)) (at start (whisk_done)))
    :effect (and (at start (not (combine_pending))) (at end (combine_done)))
  )
)
