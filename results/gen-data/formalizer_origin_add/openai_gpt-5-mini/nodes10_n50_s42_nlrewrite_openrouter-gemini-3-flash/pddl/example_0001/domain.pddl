(define (domain add_product)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (launched_done)
    (prototype_done)
    (testing_done)
    (finalize_done)
    (research_done)
    (filming_done)
    (funding_done)
    (ip_done)
    (stock_done)
    (orders_done)
  )

  ;; Step 1: Launch the marketing campaign
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and
                 (at start (step_pending step1))
                 (at start (research_done))
                 (at start (funding_done))
                 (at start (prototype_done))
                 (at start (testing_done))
                 (at start (finalize_done))
                 (at start (filming_done))
               )
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (launched_done))
            )
  )

  ;; Step 2: Create the high-fidelity prototype
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and
                 (at start (step_pending step2))
                 (at start (research_done))
                 (at start (funding_done))
               )
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (prototype_done))
            )
  )

  ;; Step 3: Conduct user testing on the prototype
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and
                 (at start (step_pending step3))
                 (at start (prototype_done))
                 (at start (research_done))
                 (at start (funding_done))
               )
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (testing_done))
            )
  )

  ;; Step 4: Finalize the product design specifications
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and
                 (at start (step_pending step4))
                 (at start (prototype_done))
                 (at start (testing_done))
                 (at start (research_done))
                 (at start (funding_done))
               )
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (finalize_done))
            )
  )

  ;; Step 5: Perform initial market research and feasibility study
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and
                 (at start (step_pending step5))
               )
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (research_done))
            )
  )

  ;; Step 6: Film a promotional product demonstration video
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 28800)
    :condition (and
                 (at start (step_pending step6))
                 (at start (prototype_done))
                 (at start (testing_done))
                 (at start (finalize_done))
                 (at start (research_done))
                 (at start (funding_done))
               )
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (filming_done))
            )
  )

  ;; Step 7: Secure initial funding and budget approval
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and
                 (at start (step_pending step7))
                 (at start (research_done))
               )
    :effect (and
              (at start (not (step_pending step7)))
              (at end (step_done step7))
              (at end (funding_done))
            )
  )

  ;; Step 8: File for trademark and patent protection
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and
                 (at start (step_pending step8))
                 (at start (prototype_done))
                 (at start (research_done))
                 (at start (funding_done))
               )
    :effect (and
              (at start (not (step_pending step8)))
              (at end (step_done step8))
              (at end (ip_done))
            )
  )

  ;; Step 9: Stock the initial inventory in the warehouse
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 864000)
    :condition (and
                 (at start (step_pending step9))
                 (at start (research_done))
                 (at start (orders_done))
               )
    :effect (and
              (at start (not (step_pending step9)))
              (at end (step_done step9))
              (at end (stock_done))
            )
  )

  ;; Step 10: Place orders with the raw material suppliers
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and
                 (at start (step_pending step10))
                 (at start (research_done))
               )
    :effect (and
              (at start (not (step_pending step10)))
              (at end (step_done step10))
              (at end (orders_done))
            )
  )
)
