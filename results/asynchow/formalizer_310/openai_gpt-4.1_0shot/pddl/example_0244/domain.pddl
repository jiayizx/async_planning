(define (domain dress-metal-girls)
  (:requirements :durative-actions)
  (:predicates
    (cover_jacket_pending)
    (cover_jacket_done)
    (accessorize_wrists_pending)
    (accessorize_wrists_done)
    (accessorize_neck_pending)
    (accessorize_neck_done)
    (wear_belt_pending)
    (wear_belt_done)
    (carry_bag_pending)
    (carry_bag_done)
  )

  (:durative-action cover_jacket
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (cover_jacket_pending)) (at start (wear_belt_done)) (at start (carry_bag_done)))
    :effect (and (at start (not (cover_jacket_pending))) (at end (cover_jacket_done)))
  )

  (:durative-action accessorize_wrists
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (accessorize_wrists_pending))
    :effect (and (at start (not (accessorize_wrists_pending))) (at end (accessorize_wrists_done)))
  )

  (:durative-action accessorize_neck
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (accessorize_neck_pending))
    :effect (and (at start (not (accessorize_neck_pending))) (at end (accessorize_neck_done)))
  )

  (:durative-action wear_belt
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (wear_belt_pending))
    :effect (and (at start (not (wear_belt_pending))) (at end (wear_belt_done)))
  )

  (:durative-action carry_bag
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (carry_bag_pending))
    :effect (and (at start (not (carry_bag_pending))) (at end (carry_bag_done)))
  )
)
