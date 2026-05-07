(define (domain use-sumac-domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (s7_done)
  )

  ;; Step 1: Purchase the sumac (1800 seconds = 30 minutes)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done))
    )
  )

  ;; Step 2: Use sumac in place of lemon (300 seconds = 5 minutes)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done))
    )
  )

  ;; Step 3: Add sumac to dips and dressings (180 seconds = 3 minutes)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step3)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done))
    )
  )

  ;; Step 4: Use as part of marinades/condiments for grilled meat (600 seconds = 10 minutes)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done))
    )
  )

  ;; Step 5: Add it to za'atar (180 seconds = 3 minutes)
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step5)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done))
    )
  )

  ;; Step 6: Add to a frittata or omelet (480 seconds = 8 minutes)
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step6)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_done))
    )
  )

  ;; Step 7: Sprinkle over roast vegetables (180 seconds = 3 minutes)
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step7)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_done))
    )
  )
)
