(define (domain library_search)
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

  (:durative-action login_database
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step1_pending)) (at start (step7_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action print_citation
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step2_pending)) (at start (step10_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action cross_reference
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step3_pending)) (at start (step4_done)) (at start (step5_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action identify_genre
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action scan_archives
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action search_inventory
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step6_pending)) (at start (step1_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action reset_password
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action verify_isbn
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step8_pending)) (at start (step3_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action retrieve_title
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step9_pending)) (at start (step6_done)) (at start (step8_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action confirm_printer
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step10_pending))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)