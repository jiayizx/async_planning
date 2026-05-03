(define (problem buy_dog_problem)
  (:domain buy_dog_domain)
  
  (:init
    (look_up_pet_store_pending)
    (browse_pets_pending)
    (check_availability_pending)
    (go_to_store_pending)
    (interact_with_pets_pending)
    (walk_to_cashier_pending)
  )

  (:goal (and
    (look_up_pet_store_done)
    (browse_pets_done)
    (check_availability_done)
    (go_to_store_done)
    (interact_with_pets_done)
    (walk_to_cashier_done)
  ))
)
