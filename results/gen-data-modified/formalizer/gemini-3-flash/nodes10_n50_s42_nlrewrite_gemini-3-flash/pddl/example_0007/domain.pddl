(define (domain piano_acquisition)
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

  (:durative-action measure_space
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action research_movers
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action visit_showroom
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step3_pending)) (at start (step10_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action decide_budget
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step4_pending)) (at start (step1_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action submit_application
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step5_pending)) (at start (step7_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action select_serial
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step6_pending)) (at start (step3_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action gather_docs
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action schedule_delivery
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step8_pending)) (at start (step2_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action sign_contract
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step9_pending)) (at start (step5_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action check_inventory
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step10_pending)) (at start (step4_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)