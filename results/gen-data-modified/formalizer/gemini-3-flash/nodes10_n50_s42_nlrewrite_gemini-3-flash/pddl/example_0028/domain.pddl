(define (domain fingerboarding)
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

  (:durative-action kickflip
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step1_pending)) (at start (step9_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action unbox_components
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action apply_grip_tape
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step3_pending)) (at start (step2_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action research_tricks
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action attach_trucks
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step5_pending)) (at start (step2_done)) (at start (step3_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action tighten_bushings
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step6_pending)) (at start (step5_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action snap_wheels
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step7_pending)) (at start (step5_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action watch_ollie_tutorial
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step8_pending)) (at start (step4_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action practice_control
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step9_pending)) (at start (step4_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action clean_workspace
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step10_pending)) (at start (step2_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)