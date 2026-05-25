(define (problem anxiety_ordering_problem)
  (:domain anxiety_ordering)
  
  (:init
    (order_phone_pending)
    (drive_thru_pending)
    (ask_friend_pending)
    (use_app_pending)
    (receive_food_pending)
  )

  (:goal (and
    (order_phone_done)
    (drive_thru_done)
    (ask_friend_done)
    (use_app_done)
    (receive_food_done)
  ))
)
