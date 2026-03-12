(define (domain offroading)
  (:requirements :durative-actions)
  (:predicates
    (unlock_garage_pending)
    (unlock_garage_done)
    (walk_into_garage_pending)
    (walk_into_garage_done)
    (get_into_truck_pending)
    (get_into_truck_done)
    (start_truck_pending)
    (start_truck_done)
    (drive_to_area_pending)
    (drive_to_area_done)
    (pay_fee_pending)
    (pay_fee_done)
    (drive_onto_trails_pending)
    (drive_onto_trails_done)
  )

  (:durative-action unlock_garage
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (unlock_garage_pending))
    :effect (and (at start (not (unlock_garage_pending))) (at end (unlock_garage_done)))
  )

  (:durative-action walk_into_garage
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (walk_into_garage_pending))
    :effect (and (at start (not (walk_into_garage_pending))) (at end (walk_into_garage_done)))
  )

  (:durative-action get_into_truck
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (get_into_truck_pending)) (at start (walk_into_garage_done)))
    :effect (and (at start (not (get_into_truck_pending))) (at end (get_into_truck_done)))
  )

  (:durative-action start_truck
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (start_truck_pending)) (at start (get_into_truck_done)))
    :effect (and (at start (not (start_truck_pending))) (at end (start_truck_done)))
  )

  (:durative-action drive_to_area
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (drive_to_area_pending)) (at start (unlock_garage_done)) (at start (start_truck_done)))
    :effect (and (at start (not (drive_to_area_pending))) (at end (drive_to_area_done)))
  )

  (:durative-action pay_fee
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pay_fee_pending)) (at start (drive_to_area_done)))
    :effect (and (at start (not (pay_fee_pending))) (at end (pay_fee_done)))
  )

  (:durative-action drive_onto_trails
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (drive_onto_trails_pending)) (at start (pay_fee_done)))
    :effect (and (at start (not (drive_onto_trails_pending))) (at end (drive_onto_trails_done)))
  )
)
