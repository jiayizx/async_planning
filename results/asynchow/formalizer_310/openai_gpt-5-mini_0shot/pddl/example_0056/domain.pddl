(define (domain buy_dog_domain)
  ; Shortest possible makespan: 68400 seconds (19 hours)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending)
    (step1_done)
    (step2_pending)
    (step2_done)
    (step3_pending)
    (step3_done)
    (step4_pending)
    (step4_done)
    (step5_pending)
    (step5_done)
    (step6_pending)
    (step6_done)
  )

  (:durative-action step1_lookup_pet_store
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action step2_browse_pets_on_site
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step2_pending)) (at start (step1_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action step3_check_availability_of_pet
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step3_pending)) (at start (step1_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action step4_go_to_pet_store
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step4_pending)) (at start (step2_done)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action step5_interact_with_various_pets_at_store
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action step6_walk_up_to_cashier_with_pet
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step6_pending)) (at start (step5_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )
)
