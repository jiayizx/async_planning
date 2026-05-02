(define (domain adopt_pet)
  (:requirements :durative-actions)
  (:predicates
    (finalize_adoption_contract_pending)
    (finalize_adoption_contract_done)
    (schedule_home_visit_pending)
    (schedule_home_visit_done)
    (research_shelters_pending)
    (research_shelters_done)
    (buy_leash_collar_pending)
    (buy_leash_collar_done)
    (gather_references_pending)
    (gather_references_done)
    (browse_online_galleries_pending)
    (browse_online_galleries_done)
    (purchase_pet_supplies_pending)
    (purchase_pet_supplies_done)
    (visit_shelter_pending)
    (visit_shelter_done)
    (setup_pet_corner_pending)
    (setup_pet_corner_done)
    (research_vets_pending)
    (research_vets_done)
    (read_pet_training_books_pending)
    (read_pet_training_books_done)
    (host_home_inspection_pending)
    (host_home_inspection_done)
    (register_microchip_pending)
    (register_microchip_done)
    (submit_adoption_application_pending)
    (submit_adoption_application_done)
    (clear_weekend_pending)
    (clear_weekend_done)
  )

  (:durative-action finalize_adoption_contract
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (finalize_adoption_contract_pending)) (at start (browse_online_galleries_done)) (at start (clear_weekend_done)))
    :effect (and (at start (not (finalize_adoption_contract_pending))) (at end (finalize_adoption_contract_done)))
  )

  (:durative-action schedule_home_visit
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (schedule_home_visit_pending)) (at start (purchase_pet_supplies_done)) (at start (submit_adoption_application_done)))
    :effect (and (at start (not (schedule_home_visit_pending))) (at end (schedule_home_visit_done)))
  )

  (:durative-action research_shelters
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (research_shelters_pending))
    :effect (and (at start (not (research_shelters_pending))) (at end (research_shelters_done)))
  )

  (:durative-action buy_leash_collar
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (buy_leash_collar_pending)) (at start (read_pet_training_books_done)))
    :effect (and (at start (not (buy_leash_collar_pending))) (at end (buy_leash_collar_done)))
  )

  (:durative-action gather_references
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (gather_references_pending))
    :effect (and (at start (not (gather_references_pending))) (at end (gather_references_done)))
  )

  (:durative-action browse_online_galleries
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (browse_online_galleries_pending)) (at start (research_shelters_done)))
    :effect (and (at start (not (browse_online_galleries_pending))) (at end (browse_online_galleries_done)))
  )

  (:durative-action purchase_pet_supplies
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (purchase_pet_supplies_pending))
    :effect (and (at start (not (purchase_pet_supplies_pending))) (at end (purchase_pet_supplies_done)))
  )

  (:durative-action visit_shelter
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (visit_shelter_pending)) (at start (research_shelters_done)))
    :effect (and (at start (not (visit_shelter_pending))) (at end (visit_shelter_done)))
  )

  (:durative-action setup_pet_corner
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (setup_pet_corner_pending)) (at start (clear_weekend_done)))
    :effect (and (at start (not (setup_pet_corner_pending))) (at end (setup_pet_corner_done)))
  )

  (:durative-action research_vets
    :parameters ()
    :duration (= ?duration 5400)
    :condition (at start (research_vets_pending))
    :effect (and (at start (not (research_vets_pending))) (at end (research_vets_done)))
  )

  (:durative-action read_pet_training_books
    :parameters ()
    :duration (= ?duration 345600)
    :condition (at start (read_pet_training_books_pending))
    :effect (and (at start (not (read_pet_training_books_pending))) (at end (read_pet_training_books_done)))
  )

  (:durative-action host_home_inspection
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (host_home_inspection_pending)) (at start (schedule_home_visit_done)))
    :effect (and (at start (not (host_home_inspection_pending))) (at end (host_home_inspection_done)))
  )

  (:durative-action register_microchip
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (register_microchip_pending)) (at start (research_vets_done)) (at start (host_home_inspection_done)))
    :effect (and (at start (not (register_microchip_pending))) (at end (register_microchip_done)))
  )

  (:durative-action submit_adoption_application
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (submit_adoption_application_pending)) (at start (gather_references_done)))
    :effect (and (at start (not (submit_adoption_application_pending))) (at end (submit_adoption_application_done)))
  )

  (:durative-action clear_weekend
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (clear_weekend_pending))
    :effect (and (at start (not (clear_weekend_pending))) (at end (clear_weekend_done)))
  )
)
