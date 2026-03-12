(define (domain leave_school)
  (:requirements :durative-actions)
  (:predicates
    (pack_backpack_pending)
    (pack_backpack_done)
    (locate_keys_pending)
    (locate_keys_done)
    (logout_lab_pending)
    (logout_lab_done)
    (walk_to_parking_pending)
    (walk_to_parking_done)
    (unlock_car_pending)
    (unlock_car_done)
  )

  (:durative-action pack_backpack
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pack_backpack_pending)) (at start (logout_lab_done)))
    :effect (and (at start (not (pack_backpack_pending))) (at end (pack_backpack_done)))
  )

  (:durative-action locate_keys
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (locate_keys_pending))
    :effect (and (at start (not (locate_keys_pending))) (at end (locate_keys_done)))
  )

  (:durative-action logout_lab
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (logout_lab_pending))
    :effect (and (at start (not (logout_lab_pending))) (at end (logout_lab_done)))
  )

  (:durative-action walk_to_parking
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (walk_to_parking_pending)) (at start (pack_backpack_done)))
    :effect (and (at start (not (walk_to_parking_pending))) (at end (walk_to_parking_done)))
  )

  (:durative-action unlock_car
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (unlock_car_pending)) (at start (locate_keys_done)) (at start (walk_to_parking_done)))
    :effect (and (at start (not (unlock_car_pending))) (at end (unlock_car_done)))
  )
)
