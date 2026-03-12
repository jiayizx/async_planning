(define (domain chickpea_redbean_salad)
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

  (:durative-action step1
    :parameters ()
    :duration (= ?duration 43200)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action step3
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step3_pending)) (at start (step2_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step4_pending)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action step5
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step5_pending)) (at start (step8_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action step6
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step6_pending)) (at start (step10_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action step7
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step7_pending)) (at start (step4_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action step8
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step8_pending)) (at start (step1_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action step9
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step9_pending)) (at start (step2_done)) (at start (step3_done)) (at start (step7_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action step10
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step10_pending))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)
