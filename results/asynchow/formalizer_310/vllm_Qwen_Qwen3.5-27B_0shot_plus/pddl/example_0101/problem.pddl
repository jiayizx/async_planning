(define (problem get_in_car_problem)
  (:domain get_in_car)
  
  (:init
    (put_on_shirt_pending)
    (put_on_pants_pending)
    (put_on_right_sock_pending)
    (put_on_left_sock_pending)
    (put_on_right_shoe_pending)
    (put_on_left_shoe_pending)
    (get_car_keys_pending)
  )

  (:goal (and
    (put_on_shirt_done)
    (put_on_pants_done)
    (put_on_right_sock_done)
    (put_on_left_sock_done)
    (put_on_right_shoe_done)
    (put_on_left_shoe_done)
    (get_car_keys_done)
  ))
)
