(define (problem get_rabbit)
  (:domain rabbit-pet)
  
  (:init
    (drive_to_pet_shop_pending)
    (look_at_rabbits_pending)
    (pick_out_rabbit_pending)
    (shop_for_pet_food_pending)
    (shop_for_pet_supplies_pending)
    (wait_in_line_pending)
    (make_purchase_pending)
  )

  (:goal (and
    (drive_to_pet_shop_done)
    (look_at_rabbits_done)
    (pick_out_rabbit_done)
    (shop_for_pet_food_done)
    (shop_for_pet_supplies_done)
    (wait_in_line_done)
    (make_purchase_done)
  ))
)
