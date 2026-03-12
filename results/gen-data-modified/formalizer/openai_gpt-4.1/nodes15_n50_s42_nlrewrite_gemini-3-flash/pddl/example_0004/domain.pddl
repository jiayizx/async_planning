(define (domain fighter-pilot)
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

  ;; Step 1: Complete Officer Training School (9 weeks = 9*7*24*3600 = 5443200)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 5443200)
    :condition (and (at start (step1_pending)) (at start (step15_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  ;; Step 2: Pass Initial Flight Screening (4 weeks = 2419200)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 2419200)
    :condition (and (at start (step2_pending)) (at start (step4_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  ;; Step 3: Graduate from Undergraduate Pilot Training (1 year = 31536000)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (and (at start (step3_pending)) (at start (step6_done)) (at start (step13_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  ;; Step 4: Clear military medical exam (172800)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step4_pending)) (at start (step7_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  ;; Step 5: Submit security clearance paperwork (3600)
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  ;; Step 6: Earn Bachelor's degree (4 years = 126144000)
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 126144000)
    :condition (at start (step6_pending))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  ;; Step 7: Meet with recruiter (3600)
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  ;; Step 8: SERE training (3 weeks = 1814400)
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (and (at start (step8_pending)) (at start (step1_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  ;; Step 9: Fighter Fundamentals (3 months = 3*30*24*3600 = 7776000)
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (step9_pending)) (at start (step2_done)) (at start (step3_done)) (at start (step14_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  ;; Step 10: Final Top Secret Clearance (6 months = 6*30*24*3600 = 15552000)
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 15552000)
    :condition (and (at start (step10_pending)) (at start (step5_done)) (at start (step14_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  ;; Step 11: High-G centrifuge (86400)
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step11_pending)) (at start (step14_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  ;; Step 12: Water Survival (432000)
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (step12_pending)) (at start (step1_done)) (at start (step8_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  ;; Step 13: AFOQT (18000)
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step13_pending)) (at start (step6_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  ;; Step 14: Congressional nomination (4 months = 4*30*24*3600 = 10368000)
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 10368000)
    :condition (at start (step14_pending))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  ;; Step 15: Submit pilot slot application (2 weeks = 1209600)
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step15_pending)) (at start (step6_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )
)
