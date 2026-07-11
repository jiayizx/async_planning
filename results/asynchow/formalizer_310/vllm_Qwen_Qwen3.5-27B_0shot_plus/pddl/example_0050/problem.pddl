(define (problem make_sandwich)
  (:domain peanut_butter_sandwich)
  
  (:init
    (go_to_kitchen_pending)
    (open_cabinet_pending)
    (take_out_knife_pending)
    (take_out_plate_pending)
    (take_out_ingredients_pending)
  )

  (:goal (and
    (go_to_kitchen_done)
    (open_cabinet_done)
    (take_out_knife_done)
    (take_out_plate_done)
    (take_out_ingredients_done)
  ))
)
