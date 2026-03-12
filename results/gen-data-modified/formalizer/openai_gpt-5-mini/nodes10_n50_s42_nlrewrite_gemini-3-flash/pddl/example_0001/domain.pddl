(define (domain add_product)
  (:requirements :durative-actions)
  (:predicates
    (launch_marketing_pending) (launch_marketing_done)
    (create_prototype_pending) (create_prototype_done)
    (conduct_stress_tests_pending) (conduct_stress_tests_done)
    (apply_certifications_pending) (apply_certifications_done)
    (conduct_market_research_pending) (conduct_market_research_done)
    (finalize_packaging_pending) (finalize_packaging_done)
    (draft_specs_pending) (draft_specs_done)
    (register_trademark_pending) (register_trademark_done)
    (stock_inventory_pending) (stock_inventory_done)
    (secure_contract_pending) (secure_contract_done)
  )

  (:durative-action launch_marketing
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (launch_marketing_pending)) (at start (finalize_packaging_done)))
    :effect (and (at start (not (launch_marketing_pending))) (at end (launch_marketing_done)))
  )

  (:durative-action create_prototype
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (create_prototype_pending)) (at start (draft_specs_done)))
    :effect (and (at start (not (create_prototype_pending))) (at end (create_prototype_done)))
  )

  (:durative-action conduct_stress_tests
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (conduct_stress_tests_pending)) (at start (create_prototype_done)))
    :effect (and (at start (not (conduct_stress_tests_pending))) (at end (conduct_stress_tests_done)))
  )

  (:durative-action apply_certifications
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (apply_certifications_pending)) (at start (conduct_stress_tests_done)))
    :effect (and (at start (not (apply_certifications_pending))) (at end (apply_certifications_done)))
  )

  (:durative-action conduct_market_research
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (conduct_market_research_pending)))
    :effect (and (at start (not (conduct_market_research_pending))) (at end (conduct_market_research_done)))
  )

  (:durative-action finalize_packaging
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (finalize_packaging_pending)) (at start (apply_certifications_done)))
    :effect (and (at start (not (finalize_packaging_pending))) (at end (finalize_packaging_done)))
  )

  (:durative-action draft_specs
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (draft_specs_pending)) (at start (conduct_market_research_done)))
    :effect (and (at start (not (draft_specs_pending))) (at end (draft_specs_done)))
  )

  (:durative-action register_trademark
    :parameters ()
    :duration (= ?duration 10368000)
    :condition (and (at start (register_trademark_pending)) (at start (create_prototype_done)))
    :effect (and (at start (not (register_trademark_pending))) (at end (register_trademark_done)))
  )

  (:durative-action stock_inventory
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (stock_inventory_pending)) (at start (conduct_market_research_done)) (at start (secure_contract_done)))
    :effect (and (at start (not (stock_inventory_pending))) (at end (stock_inventory_done)))
  )

  (:durative-action secure_contract
    :parameters ()
    :duration (= ?duration 864000)
    :condition (and (at start (secure_contract_pending)) (at start (conduct_market_research_done)))
    :effect (and (at start (not (secure_contract_pending))) (at end (secure_contract_done)))
  )
)
