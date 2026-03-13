(define (domain cook_baked_chicken)
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

  (:durative-action step1_gather
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step1_pending)) (at start (step10_done)) (at start (step5_done)) (at start (step6_done)) (at start (step7_done)) (at start (step8_done)) (at start (step9_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action step2_prepare
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step2_pending)) (at start (step1_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action step3_bake
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step3_pending)) (at start (step2_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action step4_finish
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step4_pending)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action step5_gravy
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action step6_spiced
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step6_pending))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action step7_garlic_whitewine
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action step8_herb
    :parameters ()
    :duration (= ?duration 2400)
    :condition (at start (step8_pending))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action step9_honey_dijon
    :parameters ()
    :duration (= ?duration 2100)
    :condition (at start (step9_pending))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action step10_garlic_lemon
    :parameters ()
    :duration (= ?duration 3000)
    :condition (at start (step10_pending))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)
