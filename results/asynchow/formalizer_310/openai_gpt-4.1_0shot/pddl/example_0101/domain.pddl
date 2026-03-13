(define (domain get-in-car)
  (:requirements :durative-actions)
  (:predicates
    (shirt_pending)
    (shirt_done)
    (pants_pending)
    (pants_done)
    (right_sock_pending)
    (right_sock_done)
    (left_sock_pending)
    (left_sock_done)
    (right_shoe_pending)
    (right_shoe_done)
    (left_shoe_pending)
    (left_shoe_done)
    (car_keys_pending)
    (car_keys_done)
  )

  (:durative-action put_on_shirt
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (shirt_pending))
    :effect (and (at start (not (shirt_pending))) (at end (shirt_done)))
  )

  (:durative-action put_on_pants
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pants_pending)) (at start (shirt_done)))
    :effect (and (at start (not (pants_pending))) (at end (pants_done)))
  )

  (:durative-action put_on_right_sock
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (right_sock_pending)) (at start (pants_done)))
    :effect (and (at start (not (right_sock_pending))) (at end (right_sock_done)))
  )

  (:durative-action put_on_left_sock
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (left_sock_pending)) (at start (pants_done)))
    :effect (and (at start (not (left_sock_pending))) (at end (left_sock_done)))
  )

  (:durative-action put_on_right_shoe
    :parameters ()
    :duration (= ?duration 25)
    :condition (and (at start (right_shoe_pending)) (at start (right_sock_done)))
    :effect (and (at start (not (right_shoe_pending))) (at end (right_shoe_done)))
  )

  (:durative-action put_on_left_shoe
    :parameters ()
    :duration (= ?duration 25)
    :condition (and (at start (left_shoe_pending)) (at start (left_sock_done)))
    :effect (and (at start (not (left_shoe_pending))) (at end (left_shoe_done)))
  )

  (:durative-action get_car_keys
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (car_keys_pending)) (at start (right_shoe_done)) (at start (left_shoe_done)))
    :effect (and (at start (not (car_keys_pending))) (at end (car_keys_done)))
  )
)
