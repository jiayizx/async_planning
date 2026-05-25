(define (domain get_in_car)
  (:requirements :durative-actions)
  
  (:predicates
    (put_on_shirt_pending)
    (put_on_shirt_done)
    (put_on_pants_pending)
    (put_on_pants_done)
    (put_on_right_sock_pending)
    (put_on_right_sock_done)
    (put_on_left_sock_pending)
    (put_on_left_sock_done)
    (put_on_right_shoe_pending)
    (put_on_right_shoe_done)
    (put_on_left_shoe_pending)
    (put_on_left_shoe_done)
    (get_car_keys_pending)
    (get_car_keys_done)
  )

  (:durative-action put_on_shirt
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (put_on_shirt_pending))
    :effect (and (at start (not (put_on_shirt_pending))) (at end (put_on_shirt_done)))
  )

  (:durative-action put_on_pants
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (put_on_pants_pending)) (at start (put_on_shirt_done)))
    :effect (and (at start (not (put_on_pants_pending))) (at end (put_on_pants_done)))
  )

  (:durative-action put_on_right_sock
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (put_on_right_sock_pending)) (at start (put_on_pants_done)))
    :effect (and (at start (not (put_on_right_sock_pending))) (at end (put_on_right_sock_done)))
  )

  (:durative-action put_on_left_sock
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (put_on_left_sock_pending)) (at start (put_on_pants_done)))
    :effect (and (at start (not (put_on_left_sock_pending))) (at end (put_on_left_sock_done)))
  )

  (:durative-action put_on_right_shoe
    :parameters ()
    :duration (= ?duration 25)
    :condition (and (at start (put_on_right_shoe_pending)) (at start (put_on_right_sock_done)))
    :effect (and (at start (not (put_on_right_shoe_pending))) (at end (put_on_right_shoe_done)))
  )

  (:durative-action put_on_left_shoe
    :parameters ()
    :duration (= ?duration 25)
    :condition (and (at start (put_on_left_shoe_pending)) (at start (put_on_left_sock_done)))
    :effect (and (at start (not (put_on_left_shoe_pending))) (at end (put_on_left_shoe_done)))
  )

  (:durative-action get_car_keys
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (get_car_keys_pending)) (at start (put_on_right_shoe_done)) (at start (put_on_left_shoe_done)))
    :effect (and (at start (not (get_car_keys_pending))) (at end (get_car_keys_done)))
  )
)
