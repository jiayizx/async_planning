(define (domain clean_wubbanub)
  (:requirements :durative-actions)
  (:predicates
    (place_in_bag_pending)
    (place_in_bag_done)
    (put_in_washer_pending)
    (put_in_washer_done)
    (add_detergent_pending)
    (add_detergent_done)
    (start_cycle_pending)
    (start_cycle_done)
    (air_dry_pending)
    (air_dry_done)
  )

  (:durative-action place_in_bag
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (place_in_bag_pending))
    :effect (and (at start (not (place_in_bag_pending))) (at end (place_in_bag_done)))
  )

  (:durative-action put_in_washer
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (put_in_washer_pending)) (at start (place_in_bag_done)))
    :effect (and (at start (not (put_in_washer_pending))) (at end (put_in_washer_done)))
  )

  (:durative-action add_detergent
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (add_detergent_pending))
    :effect (and (at start (not (add_detergent_pending))) (at end (add_detergent_done)))
  )

  (:durative-action start_cycle
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (start_cycle_pending)) (at start (put_in_washer_done)) (at start (add_detergent_done)))
    :effect (and (at start (not (start_cycle_pending))) (at end (start_cycle_done)))
  )

  (:durative-action air_dry
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (air_dry_pending)) (at start (start_cycle_done)))
    :effect (and (at start (not (air_dry_pending))) (at end (air_dry_done)))
  )
)
