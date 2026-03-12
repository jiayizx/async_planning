(define (domain buy-dog)
  (:requirements :durative-actions)
  (:predicates
    (look_up_pet_store_pending)
    (look_up_pet_store_done)
    (browse_pets_pending)
    (browse_pets_done)
    (check_availability_pending)
    (check_availability_done)
    (go_to_pet_store_pending)
    (go_to_pet_store_done)
    (interact_with_pets_pending)
    (interact_with_pets_done)
    (walk_to_cashier_pending)
    (walk_to_cashier_done)
  )

  (:durative-action look_up_pet_store
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (look_up_pet_store_pending))
    :effect (and (at start (not (look_up_pet_store_pending))) (at end (look_up_pet_store_done)))
  )

  (:durative-action browse_pets
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (browse_pets_pending)) (at start (look_up_pet_store_done)))
    :effect (and (at start (not (browse_pets_pending))) (at end (browse_pets_done)))
  )

  (:durative-action check_availability
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (check_availability_pending)) (at start (look_up_pet_store_done)))
    :effect (and (at start (not (check_availability_pending))) (at end (check_availability_done)))
  )

  (:durative-action go_to_pet_store
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (go_to_pet_store_pending)) (at start (browse_pets_done)) (at start (check_availability_done)))
    :effect (and (at start (not (go_to_pet_store_pending))) (at end (go_to_pet_store_done)))
  )

  (:durative-action interact_with_pets
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (interact_with_pets_pending)) (at start (go_to_pet_store_done)))
    :effect (and (at start (not (interact_with_pets_pending))) (at end (interact_with_pets_done)))
  )

  (:durative-action walk_to_cashier
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (walk_to_cashier_pending)) (at start (interact_with_pets_done)))
    :effect (and (at start (not (walk_to_cashier_pending))) (at end (walk_to_cashier_done)))
  )
)
