(define (domain eggless-chocolate-cake)
  (:requirements :durative-actions)
  (:predicates
    (whisk_pending) (whisk_done)
    (preheat_pending) (preheat_done)
    (sift_pending) (sift_done)
    (prep_pan_pending) (prep_pan_done)
    (combine_pending) (combine_done)
  )

  (:durative-action do_whisk
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (whisk_pending)) (at start (sift_done)))
    :effect (and (at start (not (whisk_pending))) (at end (whisk_done)))
  )

  (:durative-action do_preheat
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (preheat_pending))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action do_sift
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (sift_pending))
    :effect (and (at start (not (sift_pending))) (at end (sift_done)))
  )

  (:durative-action do_prep_pan
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (prep_pan_pending)) (at start (preheat_done)))
    :effect (and (at start (not (prep_pan_pending))) (at end (prep_pan_done)))
  )

  (:durative-action do_combine
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (combine_pending)) (at start (whisk_done)))
    :effect (and (at start (not (combine_pending))) (at end (combine_done)))
  )
)
