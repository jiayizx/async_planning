(define (domain renovation_decision)
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

  (:durative-action finalize_decision
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step1_pending)) (at start (step6_done)) (at start (step10_done)) (at start (step12_done)) (at start (step13_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action research_market
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action get_quote
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step3_pending)) (at start (step4_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action create_wishlist
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step4_pending)) (at start (step5_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action walk_through
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step5_pending)) (at start (step12_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action check_savings
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step6_pending))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action meet_advisor
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step7_pending)) (at start (step2_done)) (at start (step4_done)) (at start (step6_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action visit_open_houses
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step8_pending)) (at start (step14_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action compare_costs
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step9_pending)) (at start (step3_done)) (at start (step7_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action review_inspection
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step10_pending)) (at start (step15_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action present_options
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (step11_pending)) (at start (step7_done)) (at start (step13_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action order_appraisal
    :parameters ()
    :duration (= ?duration 345600)
    :condition (at start (step12_pending))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action consult_tax_pro
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step13_pending)) (at start (step6_done)) (at start (step10_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action contact_agent
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step14_pending))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action hire_engineer
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step15_pending)) (at start (step4_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )
)