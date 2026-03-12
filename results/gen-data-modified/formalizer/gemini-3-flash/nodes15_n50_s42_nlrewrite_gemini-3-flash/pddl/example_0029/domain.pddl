(define (domain pet_adoption)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
    (step11_pending) (step11_done)
    (step12_pending) (step12_done)
    (step13_pending) (step13_done)
    (step14_pending) (step14_done)
    (step15_pending) (step15_done)
  )

  (:durative-action finalize_contract
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step1_pending)) (at start (step6_done)) (at start (step15_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action schedule_home_visit
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step2_pending)) (at start (step7_done)) (at start (step14_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action research_shelters
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action buy_leash_collar
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step4_pending)) (at start (step11_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action gather_references
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action browse_galleries
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step6_pending)) (at start (step3_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action purchase_supplies
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action visit_shelter
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step8_pending)) (at start (step3_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action setup_pet_corner
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step9_pending)) (at start (step15_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action research_vets
    :parameters ()
    :duration (= ?duration 5400)
    :condition (at start (step10_pending))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action read_training_books
    :parameters ()
    :duration (= ?duration 345600)
    :condition (at start (step11_pending))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action host_inspection
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step12_pending)) (at start (step2_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action register_microchip
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step13_pending)) (at start (step10_done)) (at start (step12_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action submit_application
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step14_pending)) (at start (step5_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action clear_schedule
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step15_pending))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )
)