(define (domain get_starting_weight)
  (:requirements :durative-actions)
  (:predicates
    (buy_scale_pending) (buy_scale_done)
    (place_scale_pending) (place_scale_done)
    (begin_undress_pending) (begin_undress_done)
    (remove_shirt_pending) (remove_shirt_done)
    (remove_pants_pending) (remove_pants_done)
    (stand_on_scale_pending) (stand_on_scale_done)
  )

  (:durative-action buy_scale
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (buy_scale_pending))
    :effect (and (at start (not (buy_scale_pending))) (at end (buy_scale_done)))
  )

  (:durative-action place_scale
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (place_scale_pending)) (at start (buy_scale_done)))
    :effect (and (at start (not (place_scale_pending))) (at end (place_scale_done)))
  )

  (:durative-action begin_undress
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (begin_undress_pending)) (at start (place_scale_done)))
    :effect (and (at start (not (begin_undress_pending))) (at end (begin_undress_done)))
  )

  (:durative-action remove_shirt
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (remove_shirt_pending)) (at start (begin_undress_done)))
    :effect (and (at start (not (remove_shirt_pending))) (at end (remove_shirt_done)))
  )

  (:durative-action remove_pants
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (remove_pants_pending)) (at start (begin_undress_done)))
    :effect (and (at start (not (remove_pants_pending))) (at end (remove_pants_done)))
  )

  (:durative-action stand_on_scale
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (stand_on_scale_pending)) (at start (remove_shirt_done)) (at start (remove_pants_done)))
    :effect (and (at start (not (stand_on_scale_pending))) (at end (stand_on_scale_done)))
  )
)
