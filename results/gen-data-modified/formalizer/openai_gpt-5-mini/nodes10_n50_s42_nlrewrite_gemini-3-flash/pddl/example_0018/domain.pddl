(define (domain house_cleaning)
  (:requirements :durative-actions)
  (:predicates
    (s1_pending) (s1_done)
    (s2_pending) (s2_done)
    (s3_pending) (s3_done)
    (s4_pending) (s4_done)
    (s5_pending) (s5_done)
    (s6_pending) (s6_done)
    (s7_pending) (s7_done)
    (s8_pending) (s8_done)
    (s9_pending) (s9_done)
    (s10_pending) (s10_done)
  )

  (:durative-action step1-apply-degreaser
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (s1_pending)) (at start (s2_done)))
    :effect (and (at start (not (s1_pending))) (at end (s1_done)))
  )

  (:durative-action step2-clear-clutter
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (s2_pending)) (at start (s5_done)))
    :effect (and (at start (not (s2_pending))) (at end (s2_done)))
  )

  (:durative-action step3-steam-clean-carpets
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (s3_pending)) (at start (s7_done)))
    :effect (and (at start (not (s3_pending))) (at end (s3_done)))
  )

  (:durative-action step4-scrub-rinse-countertops
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (s4_pending)) (at start (s1_done)))
    :effect (and (at start (not (s4_pending))) (at end (s4_done)))
  )

  (:durative-action step5-gather-supplies
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (s5_pending))
    :effect (and (at start (not (s5_pending))) (at end (s5_done)))
  )

  (:durative-action step6-vacuum-hall-bedrooms
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (s6_pending)) (at start (s10_done)))
    :effect (and (at start (not (s6_pending))) (at end (s6_done)))
  )

  (:durative-action step7-move-furniture
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (s7_pending))
    :effect (and (at start (not (s7_pending))) (at end (s7_done)))
  )

  (:durative-action step8-mop-hardwood-floors
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (s8_pending)) (at start (s6_done)))
    :effect (and (at start (not (s8_pending))) (at end (s8_done)))
  )

  (:durative-action step9-dust-ceiling-fans
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (s9_pending))
    :effect (and (at start (not (s9_pending))) (at end (s9_done)))
  )

  (:durative-action step10-wipe-baseboards-windowsills
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (s10_pending)) (at start (s9_done)))
    :effect (and (at start (not (s10_pending))) (at end (s10_done)))
  )
)
