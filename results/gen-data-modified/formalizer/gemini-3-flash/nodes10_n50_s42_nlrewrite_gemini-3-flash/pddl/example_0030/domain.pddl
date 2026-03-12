(define (domain pregnancy_safety)
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

  (:durative-action schedule_screening
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step1_pending)) (at start (step7_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action follow_up_consultation
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step2_pending)) (at start (step3_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action physical_examination
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step3_pending)) (at start (step6_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action prenatal_vitamins
    :parameters ()
    :duration (= ?duration 23328000)
    :condition (and (at start (step4_pending)) (at start (step3_done)) (at start (step7_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action monitoring_plan
    :parameters ()
    :duration (= ?duration 24192000)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action select_provider
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step6_pending)) (at start (step9_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action confirm_pregnancy
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action ultrasound_scans
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step8_pending)) (at start (step1_done)) (at start (step7_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action verify_insurance
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step9_pending)) (at start (step10_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action purchase_guidebook
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step10_pending))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)