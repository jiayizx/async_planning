(define (domain make-sims-3-hunger-games)
  (:requirements :durative-actions)
  (:predicates
    (create8_pending)
    (create8_done)
    (name_pending)
    (name_done)
    (clothes_pending)
    (clothes_done)
    (traits_pending)
    (traits_done)
  )

  (:durative-action do_create8
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (create8_pending))
    :effect (and (at start (not (create8_pending))) (at end (create8_done)))
  )

  (:durative-action do_name
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (name_pending)) (at start (create8_done)))
    :effect (and (at start (not (name_pending))) (at end (name_done)))
  )

  (:durative-action do_clothes
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (clothes_pending)) (at start (create8_done)))
    :effect (and (at start (not (clothes_pending))) (at end (clothes_done)))
  )

  (:durative-action do_traits
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (traits_pending)) (at start (create8_done)))
    :effect (and (at start (not (traits_pending))) (at end (traits_done)))
  )
)
