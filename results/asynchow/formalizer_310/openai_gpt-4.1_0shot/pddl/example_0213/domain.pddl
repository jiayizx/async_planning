(define (domain cookies)
  (:requirements :durative-actions)
  (:predicates
    (preheat_pending)
    (preheat_done)
    (combine_pending)
    (combine_done)
    (blend_pending)
    (blend_done)
    (add_pending)
    (add_done)
    (place_pending)
    (place_done)
  )

  (:durative-action do_preheat
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (preheat_pending))
    :effect (and (at start (not (preheat_pending))) (at end (preheat_done)))
  )

  (:durative-action do_combine
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (combine_pending))
    :effect (and (at start (not (combine_pending))) (at end (combine_done)))
  )

  (:durative-action do_blend
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (blend_pending))
    :effect (and (at start (not (blend_pending))) (at end (blend_done)))
  )

  (:durative-action do_add
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (add_pending)) (at start (combine_done)) (at start (blend_done)))
    :effect (and (at start (not (add_pending))) (at end (add_done)))
  )

  (:durative-action do_place
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (place_pending)) (at start (add_done)))
    :effect (and (at start (not (place_pending))) (at end (place_done)))
  )
)
