(define (domain dog_ownership)
  (:requirements :durative-actions)
  
  (:predicates
    (search_pending)
    (search_done)
    (drive_pending)
    (drive_done)
    (look_pending)
    (look_done)
    (pick_pending)
    (pick_done)
    (paperwork_pending)
    (paperwork_done)
    (supplies_pending)
    (supplies_done)
    (food_pending)
    (food_done)
  )

  (:durative-action search_for_pet_stores
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (search_pending)))
    :effect (and (at start (not (search_pending))) (at end (search_done)))
  )

  (:durative-action drive_to_pet_store
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (drive_pending)) (at start (search_done)))
    :effect (and (at start (not (drive_pending))) (at end (drive_done)))
  )

  (:durative-action look_at_dogs
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (look_pending)) (at start (drive_done)))
    :effect (and (at start (not (look_pending))) (at end (look_done)))
  )

  (:durative-action pick_a_dog
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pick_pending)) (at start (look_done)))
    :effect (and (at start (not (pick_pending))) (at end (pick_done)))
  )

  (:durative-action fill_out_paperwork
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (paperwork_pending)) (at start (pick_done)))
    :effect (and (at start (not (paperwork_pending))) (at end (paperwork_done)))
  )

  (:durative-action shop_for_supplies
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (supplies_pending)) (at start (paperwork_done)))
    :effect (and (at start (not (supplies_pending))) (at end (supplies_done)))
  )

  (:durative-action shop_for_food
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (food_pending)) (at start (paperwork_done)))
    :effect (and (at start (not (food_pending))) (at end (food_done)))
  )
)
