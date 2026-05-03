(define (domain dress_metal_girls)
  (:requirements :durative-actions)
  
  (:predicates
    (cover_jacket_pending)
    (cover_jacket_done)
    (accessorize_wrists_pending)
    (accessorize_wrists_done)
    (pick_necklaces_pending)
    (pick_necklaces_done)
    (wear_belt_pending)
    (wear_belt_done)
    (carry_bag_pending)
    (carry_bag_done)
  )

  (:durative-action do_cover_jacket
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (cover_jacket_pending))
                    (at start (wear_belt_done))
                    (at start (carry_bag_done)))
    :effect (and (at start (not (cover_jacket_pending)))
                 (at end (cover_jacket_done)))
  )

  (:durative-action do_accessorize_wrists
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (accessorize_wrists_pending))
    :effect (and (at start (not (accessorize_wrists_pending)))
                 (at end (accessorize_wrists_done)))
  )

  (:durative-action do_pick_necklaces
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (pick_necklaces_pending))
    :effect (and (at start (not (pick_necklaces_pending)))
                 (at end (pick_necklaces_done)))
  )

  (:durative-action do_wear_belt
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (wear_belt_pending))
    :effect (and (at start (not (wear_belt_pending)))
                 (at end (wear_belt_done)))
  )

  (:durative-action do_carry_bag
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (carry_bag_pending))
    :effect (and (at start (not (carry_bag_pending)))
                 (at end (carry_bag_done)))
  )
)