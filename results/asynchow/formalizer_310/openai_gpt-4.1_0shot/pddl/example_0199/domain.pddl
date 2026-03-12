(define (domain keep-cat-in-yard)
  (:requirements :durative-actions)
  (:predicates
    (fence_pending)
    (fence_done)
    (pvc_pending)
    (pvc_done)
    (objects_pending)
    (objects_done)
    (catnet_pending)
    (catnet_done)
    (enclosure_pending)
    (enclosure_done)
  )

  (:durative-action do_fence
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (fence_pending))
    :effect (and (at start (not (fence_pending))) (at end (fence_done)))
  )

  (:durative-action do_pvc
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (pvc_pending)) (at start (fence_done)))
    :effect (and (at start (not (pvc_pending))) (at end (pvc_done)))
  )

  (:durative-action do_objects
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (objects_pending)) (at start (fence_done)))
    :effect (and (at start (not (objects_pending))) (at end (objects_done)))
  )

  (:durative-action do_catnet
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (catnet_pending))
    :effect (and (at start (not (catnet_pending))) (at end (catnet_done)))
  )

  (:durative-action do_enclosure
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (enclosure_pending))
    :effect (and (at start (not (enclosure_pending))) (at end (enclosure_done)))
  )
)
