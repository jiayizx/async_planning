(define (domain go-to-walmart)
  (:requirements :durative-actions)
  (:predicates
    (put_on_clothes_pending) (put_on_clothes_done)
    (make_list_pending) (make_list_done)
    (get_in_car_pending) (get_in_car_done)
    (drive_to_walmart_pending) (drive_to_walmart_done)
    (find_parking_spot_pending) (find_parking_spot_done)
  )

  (:durative-action put_on_clothes
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (put_on_clothes_pending))
    :effect (and
      (at start (not (put_on_clothes_pending)))
      (at end (put_on_clothes_done))
    )
  )

  (:durative-action make_list
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (make_list_pending))
    :effect (and
      (at start (not (make_list_pending)))
      (at end (make_list_done))
    )
  )

  (:durative-action get_in_car
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (get_in_car_pending)) (at start (put_on_clothes_done)) (at start (make_list_done)))
    :effect (and
      (at start (not (get_in_car_pending)))
      (at end (get_in_car_done))
    )
  )

  (:durative-action drive_to_walmart
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (drive_to_walmart_pending)) (at start (get_in_car_done)))
    :effect (and
      (at start (not (drive_to_walmart_pending)))
      (at end (drive_to_walmart_done))
    )
  )

  (:durative-action find_parking_spot
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (find_parking_spot_pending)) (at start (drive_to_walmart_done)))
    :effect (and
      (at start (not (find_parking_spot_pending)))
      (at end (find_parking_spot_done))
    )
  )
)
