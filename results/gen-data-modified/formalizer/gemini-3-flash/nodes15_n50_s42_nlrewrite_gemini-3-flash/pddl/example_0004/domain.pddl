(define (domain fighter_pilot_training)
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

  (:durative-action complete_ots
    :parameters ()
    :duration (= ?duration 5443200)
    :condition (and (at start (step1_pending)) (at start (step15_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action pass_ifs
    :parameters ()
    :duration (= ?duration 2419200)
    :condition (and (at start (step2_pending)) (at start (step4_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action graduate_upt
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (and (at start (step3_pending)) (at start (step6_done)) (at start (step13_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action clear_medical
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step4_pending)) (at start (step7_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action submit_security_paperwork
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action earn_bachelors
    :parameters ()
    :duration (= ?duration 126144000)
    :condition (at start (step6_pending))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action meet_recruiter
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action attend_sere
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (and (at start (step8_pending)) (at start (step1_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action complete_fighter_fundamentals
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (step9_pending)) (at start (step2_done)) (at start (step3_done)) (at start (step14_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action receive_top_secret_clearance
    :parameters ()
    :duration (= ?duration 15552000)
    :condition (and (at start (step10_pending)) (at start (step5_done)) (at start (step14_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action centrifuge_training
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step11_pending)) (at start (step14_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action water_survival
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (step12_pending)) (at start (step1_done)) (at start (step8_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action pass_afoqt
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step13_pending)) (at start (step6_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action obtain_nomination
    :parameters ()
    :duration (= ?duration 10368000)
    :condition (at start (step14_pending))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action submit_pilot_application
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step15_pending)) (at start (step6_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )
)