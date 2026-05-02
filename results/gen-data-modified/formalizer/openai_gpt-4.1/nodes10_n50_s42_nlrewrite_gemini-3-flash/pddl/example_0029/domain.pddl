(define (domain microwave_brownies)
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

  ;; Step 1: Whisk the dry ingredients into the melted butter (120s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step1_pending)) (at start (step6_done)) (at start (step7_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  ;; Step 2: Grease the microwave-safe glass dish (45s)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step2_pending)) (at start (step8_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  ;; Step 3: Melt the butter in a small bowl (60s)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step3_pending)) (at start (step7_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  ;; Step 4: Microwave the batter on high (360s)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step4_pending)) (at start (step5_done)) (at start (step10_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  ;; Step 5: Pour the batter into the prepared dish (30s)
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step5_pending)) (at start (step1_done)) (at start (step2_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  ;; Step 6: Take the melted butter out of the microwave (15s)
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step6_pending)) (at start (step3_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  ;; Step 7: Measure out the cocoa powder, flour, and sugar (180s)
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step7_pending)) (at start (step9_done)) (at start (step10_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  ;; Step 8: Locate a clean rubber spatula and glass dish (60s)
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step8_pending))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  ;; Step 9: Gather all ingredients from the pantry (300s)
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step9_pending))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  ;; Step 10: Crack the eggs and beat them in a separate bowl (120s)
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step10_pending)) (at start (step9_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)
