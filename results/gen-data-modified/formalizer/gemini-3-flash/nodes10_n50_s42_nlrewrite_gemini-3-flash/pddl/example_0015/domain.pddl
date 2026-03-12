(define (domain garden_protection)
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

  (:durative-action attach_mesh
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step1_pending)) (at start (step2_done)) (at start (step6_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action dig_trench
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step2_pending)) (at start (step8_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action research_wildlife
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action install_sprinkler
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step4_pending)) (at start (step6_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action purchase_supplies
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step5_pending)) (at start (step7_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action drive_posts
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step6_pending)) (at start (step5_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action measure_garden
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step7_pending)) (at start (step3_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action call_utility
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step8_pending))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action apply_repellent
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step9_pending))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action spread_gravel
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (step10_pending)) (at start (step9_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)