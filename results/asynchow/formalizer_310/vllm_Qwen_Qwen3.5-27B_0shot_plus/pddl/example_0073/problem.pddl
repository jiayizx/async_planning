(define (problem get_into_car_problem)
  (:domain get_into_car)
  
  (:init
    (put_on_clothes_pending)
    (put_on_left_shoe_pending)
    (put_on_right_shoe_pending)
    (grab_car_keys_pending)
    (exit_the_house_pending)
  )

  (:goal (and
    (put_on_clothes_done)
    (put_on_left_shoe_done)
    (put_on_right_shoe_done)
    (grab_car_keys_done)
    (exit_the_house_done)
  ))
)
