(define (domain own_dog)
  (:requirements :durative-actions)
  (:predicates
    (search_pet_stores_pending)
    (search_pet_stores_done)
    (drive_to_pet_store_pending)
    (drive_to_pet_store_done)
    (look_at_dogs_pending)
    (look_at_dogs_done)
    (pick_dog_pending)
    (pick_dog_done)
    (fill_paperwork_pending)
    (fill_paperwork_done)
    (shop_pet_supplies_pending)
    (shop_pet_supplies_done)
    (shop_pet_food_pending)
    (shop_pet_food_done)
  )

  (:durative-action search_pet_stores
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (search_pet_stores_pending))
    :effect (and (at start (not (search_pet_stores_pending))) (at end (search_pet_stores_done)))
  )

  (:durative-action drive_to_pet_store
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (drive_to_pet_store_pending)) (at start (search_pet_stores_done)))
    :effect (and (at start (not (drive_to_pet_store_pending))) (at end (drive_to_pet_store_done)))
  )

  (:durative-action look_at_dogs
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (look_at_dogs_pending)) (at start (drive_to_pet_store_done)))
    :effect (and (at start (not (look_at_dogs_pending))) (at end (look_at_dogs_done)))
  )

  (:durative-action pick_dog
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pick_dog_pending)) (at start (look_at_dogs_done)))
    :effect (and (at start (not (pick_dog_pending))) (at end (pick_dog_done)))
  )

  (:durative-action fill_paperwork
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (fill_paperwork_pending)) (at start (pick_dog_done)))
    :effect (and (at start (not (fill_paperwork_pending))) (at end (fill_paperwork_done)))
  )

  (:durative-action shop_pet_supplies
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (shop_pet_supplies_pending)) (at start (fill_paperwork_done)))
    :effect (and (at start (not (shop_pet_supplies_pending))) (at end (shop_pet_supplies_done)))
  )

  (:durative-action shop_pet_food
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (shop_pet_food_pending)) (at start (fill_paperwork_done)))
    :effect (and (at start (not (shop_pet_food_pending))) (at end (shop_pet_food_done)))
  )
)
