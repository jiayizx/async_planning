(define (domain honeymoon)
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
    (step7_pending)
    (step7_done)
    (step8_pending)
    (step8_done)
    (step9_pending)
    (step9_done)
    (step10_pending)
    (step10_done)
  )

  ;; Step 1: Research and select a tropical destination (14400 seconds)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step1_pending)) (at start (step2_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  ;; Step 2: Set a total travel budget (3600 seconds)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  ;; Step 3: Book international flight tickets (2700 seconds)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step3_pending)) (at start (step1_done)) (at start (step9_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  ;; Step 4: Reserve a luxury oceanfront suite (1800 seconds)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step4_pending)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  ;; Step 5: Pack suitcases with vacation attire (7200 seconds)
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step5_pending)) (at start (step6_done)) (at start (step8_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  ;; Step 6: Drop off the laundry at the dry cleaners (259200 seconds)
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (step6_pending))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  ;; Step 7: Check in at the airport terminal (7200 seconds)
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step7_pending)) (at start (step4_done)) (at start (step8_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  ;; Step 8: Apply for and receive updated passports (6 weeks = 3628800 seconds)
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 3628800)
    :condition (at start (step8_pending))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  ;; Step 9: Request time off from work (1 week = 604800 seconds)
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step9_pending)) (at start (step8_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  ;; Step 10: Board the plane to start the trip (1200 seconds)
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step10_pending)) (at start (step5_done)) (at start (step7_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)
