(define (domain product_launch)
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
  )

  (:durative-action launch_marketing
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step1_pending)) (at start (step6_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action create_prototype
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step2_pending)) (at start (step7_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action stress_tests
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step3_pending)) (at start (step2_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action safety_certifications
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step4_pending)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action market_research
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action packaging_design
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step6_pending)) (at start (step4_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action technical_specs
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step7_pending)) (at start (step5_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action register_trademark
    :parameters ()
    :duration (= ?duration 10368000)
    :condition (and (at start (step8_pending)) (at start (step2_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action stock_inventory
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (step9_pending)) (at start (step5_done)) (at start (step10_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action manufacturing_contract
    :parameters ()
    :duration (= ?duration 864000)
    :condition (and (at start (step10_pending)) (at start (step5_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)