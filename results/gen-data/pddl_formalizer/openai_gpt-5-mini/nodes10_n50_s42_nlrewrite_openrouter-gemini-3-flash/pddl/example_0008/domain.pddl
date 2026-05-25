(define (domain roast-turnips)
  (:requirements :durative-actions :typing)
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
    (s8_done)
    (s9_done)
    (s10_done)
  )

  ;; Step 1: Garnish with fresh parsley (60s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step1)) (at start (s8_done)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done))
    )
  )

  ;; Step 2: Peel the tough outer skins (240s)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step2)) (at start (s9_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done))
    )
  )

  ;; Step 3: Serve the turnips on a warm platter (120s)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (s7_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done))
    )
  )

  ;; Step 4: Toss the turnips in olive oil and salt (180s)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step4)) (at start (s5_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done))
    )
  )

  ;; Step 5: Scrub the turnips under cold water (120s)
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step5)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done))
    )
  )

  ;; Step 6: Slice the turnips into uniform cubes (300s)
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (s2_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_done))
    )
  )

  ;; Step 7: Roast the turnips in the oven (2100s)
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 2100)
    :condition (and (at start (step_pending step7)) (at start (s10_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_done))
    )
  )

  ;; Step 8: Remove the turnips from the oven to cool (600s)
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step8)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_done))
    )
  )

  ;; Step 9: Purchase fresh turnips from the market (1200s)
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step9)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_done))
    )
  )

  ;; Step 10: Preheat the oven to 400 degrees (900s)
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step10)) (at start (s4_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_done))
    )
  )
)
