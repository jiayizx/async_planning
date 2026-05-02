(define (domain study_best_club)
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
    (step16_pending) (step16_done)
    (step17_pending) (step17_done)
    (step18_pending) (step18_done)
    (step19_pending) (step19_done)
    (step20_pending) (step20_done)
  )

  (:durative-action step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step1_pending)) (at start (step20_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action step2
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step2_pending)) (at start (step9_done)) (at start (step17_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step3_pending)) (at start (step18_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action step4
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step4_pending)) (at start (step16_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action step5
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action step6
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step6_pending))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action step7
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action step8
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step8_pending)) (at start (step6_done)) (at start (step19_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action step9
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step9_pending))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action step10
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step10_pending)) (at start (step4_done)) (at start (step7_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action step11
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (step11_pending)) (at start (step1_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action step12
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step12_pending)) (at start (step13_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action step13
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step13_pending)) (at start (step15_done)) (at start (step17_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action step14
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step14_pending)) (at start (step8_done)) (at start (step12_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action step15
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step15_pending)) (at start (step5_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )

  (:durative-action step16
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step16_pending))
    :effect (and (at start (not (step16_pending))) (at end (step16_done)))
  )

  (:durative-action step17
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step17_pending))
    :effect (and (at start (not (step17_pending))) (at end (step17_done)))
  )

  (:durative-action step18
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step18_pending))
    :effect (and (at start (not (step18_pending))) (at end (step18_done)))
  )

  (:durative-action step19
    :parameters ()
    :duration (= ?duration 5400)
    :condition (at start (step19_pending))
    :effect (and (at start (not (step19_pending))) (at end (step19_done)))
  )

  (:durative-action step20
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step20_pending)) (at start (step5_done)) (at start (step13_done)) (at start (step16_done)))
    :effect (and (at start (not (step20_pending))) (at end (step20_done)))
  )
)
